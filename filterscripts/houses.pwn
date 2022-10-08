
#include <a_samp>
#include <streamer>
#include <YSI\y_hooks>
#include <YSI\y_ini>
#include <sscanf2>
#include <zcmd>
#include <foreach>


#define MAX_HOUSES 200
#define MAX_BUSINESSES 200

#define COLOR_YELLOW 0xFFFF00AA
#define COLOR_GREY 0xAFAFAFAA
#define COLOR_RED 				0xFF0000FF
#define COLOR_GREEN 0x33AA3300

enum pInfo
{
	E_ADMIN_LEVEL,
	E_LEVEL,
	E_MONEY,
	E_UserID,

}


new PlayerInfo[MAX_PLAYERS][pInfo];



enum hInfo
{
	hFileID,
	hOwner[MAX_PLAYER_NAME],
	hOwnerID,
	Float:hExtX,
	Float:hExtY,
	Float:hExtZ,
	Float:hExtA,
	hExtVW,
	hExtInt,
	Float:hIntX,
	Float:hIntY,
	Float:hIntZ,
	Float:hIntA,
	hIntVW,
	hIntInt,
	hPickup,
	hBank,
	bool:hIsLocked,
	hPrice,
	hLevel,
	hType,
};
new HouseInfo[MAX_HOUSES][hInfo]; // MAX_HOUSES

/* End of Header */
forward GivePlayerCash(playerid, _ammount);
public GivePlayerCash(playerid, _ammount)
{
	GivePlayerMoney(playerid, _ammount);
	return 1;
}

forward OnHouseDataLoad(arrayIndex, name[], value[]);

/* Global */

new
	Text3D:gHouseSaleText[MAX_HOUSES] = {Text3D:INVALID_3DTEXT_ID, ...},
	pHouseCheckpoint[MAX_PLAYERS] = {INVALID_PLAYER_ID, ...},
	gHousePickups[MAX_BUSINESSES] = {INVALID_PLAYER_ID, ...};

/* Callback Hooks */

new onhouse[MAX_PLAYERS];

#define PATH "/Users/%s.ini"

stock UserPath(playerid)
{
    new string[64],playername[MAX_PLAYER_NAME];
    GetPlayerName(playerid,playername,sizeof(playername));
    format(string,sizeof(string),PATH,playername);
    return string;
}


forward LoadUser_data(playerid,name[],value[]);
public LoadUser_data(playerid,name[],value[])
{
    INI_Int("userid",PlayerInfo[playerid][E_UserID]);
    INI_Int("Cash",PlayerInfo[playerid][E_MONEY]);
    INI_Int("Admin",PlayerInfo[playerid][E_ADMIN_LEVEL]);
    INI_Int("Level",PlayerInfo[playerid][E_LEVEL]);
    return 1;
}


hook OnPlayerConnect(playerid)
{
    INI_ParseFile(UserPath(playerid), "LoadUser_%s", .bExtra = true, .extra = playerid);
	return 1;
}

hook OnPlayerUpdate(playerid)
{
	if((GetPVarInt(playerid, "pLastHouseCheck") + 2 < gettime()) || !GetPVarType(playerid, "pLastHouseCheck"))
	{
		new _house = IsPlayerInRangeOfHouse(playerid, 2.0);
		if(_house != -1 && pHouseCheckpoint[playerid] == INVALID_PLAYER_ID)
		{
			pHouseCheckpoint[playerid] = CreateDynamicCP(HouseInfo[_house][hExtX], HouseInfo[_house][hExtY], HouseInfo[_house][hExtZ], 2.0, .worldid = HouseInfo[_house][hExtVW], .interiorid = HouseInfo[_house][hExtInt], .playerid = playerid);
			new _message[128];


			if(PlayerInfo[playerid][E_UserID] == HouseInfo[_house][hOwnerID] )
			{
				SendClientMessage(playerid,COLOR_GREEN,"Welcome to your houses porch!");
				SendClientMessage(playerid,-1,"Available commands: /enterhouse /ds(hout) /ddo /myhouse");
			}
			else if(PlayerInfo[playerid][E_UserID] != HouseInfo[_house][hOwnerID])
			{
			    format(_message, sizeof(_message), "You're standing on %s's porch.",HouseInfo[_house][hOwner]);
			    SendClientMessage(playerid,COLOR_GREEN,_message);
			    SendClientMessage(playerid,-1,"Available commands: /enterhouse /ds(hout) /ddo");
			}
			if(PlayerInfo[playerid][E_ADMIN_LEVEL] > 3)
			{
			    format(_message, sizeof(_message), "House ID: %d",_house);
			    SendClientMessage(playerid, -1,_message);
			}
			
			onhouse[playerid] = _house;
		}
		else if(_house == -1)
		{
			if(pHouseCheckpoint[playerid] != INVALID_PLAYER_ID)
			{
				DestroyDynamicCP(pHouseCheckpoint[playerid]);
				pHouseCheckpoint[playerid] = INVALID_PLAYER_ID;
				onhouse[playerid] = -1;
			}
		}
		SetPVarInt(playerid, "pLastHouseCheck", gettime());
	}
	return 1;
}

hook OnFilterScriptInit()
{
	//for(new i; i < MAX_HOUSES; i++) UnloadHouseArrayIndex(i);
	LoadHouses();
	//#if defined HOUSE_DEBUG
		//printf("[HOUSE]: OnGameModeInit called, Loading Houses!");
	//#endif

	for(new i; i < MAX_HOUSES; i++) if(IsValidHouse(i)) SetSaleTextForHouse(i);

	return 1;
}

hook OnFilterScriptExit()
{
	SaveHouses();
	//#if defined HOUSE_DEBUG
		//printf("[HOUSE]: OnGameModeExit called, saving the houses!");
	//#endif
	return 1;
}

/* Functions */

CreateHouse(type, Float:X, Float:Y, Float:Z, virtualWorld, interior)
{
	new
		//fileID = GetFreeHouseFileID(),
		arrayIndex = GetFreeHouseArrayIndex();
	if(arrayIndex == -1) return 0;
	/* House Creation */
	HouseInfo[arrayIndex][hType] = type;
	HouseInfo[arrayIndex][hFileID] = arrayIndex + 1; // fileID
	HouseInfo[arrayIndex][hExtX] = X;
	HouseInfo[arrayIndex][hExtY] = Y;
	HouseInfo[arrayIndex][hExtZ] = Z;
	HouseInfo[arrayIndex][hExtVW] = virtualWorld;
	HouseInfo[arrayIndex][hExtInt] = interior;
	format(HouseInfo[arrayIndex][hOwner], MAX_PLAYER_NAME, "%s", "The State");
	HouseInfo[arrayIndex][hOwnerID] = 0;
	HouseInfo[arrayIndex][hIntX] = 2324.419921;
	HouseInfo[arrayIndex][hIntY] = -1145.568359;
	HouseInfo[arrayIndex][hIntZ] = 1050.710083;
	HouseInfo[arrayIndex][hIntVW] = arrayIndex + 50;
	HouseInfo[arrayIndex][hIntInt] = 12;
	HouseInfo[arrayIndex][hLevel] = 4;

	/* End of House Creation */
	SaveHouse(arrayIndex);

	#if defined HOUSE_DEBUG
		printf("[HOUSE]: Creating the house at arrayIndex: with the fileID: %i", arrayIndex, fileID);
	#endif
	return 1;
}

DeleteHouse(arrayIndex)
{
	new
		_path[32];
	format(_path, sizeof(_path), "%s",  ReturnHousePath(arrayIndex));
	if(!fexist(_path)) return 0;
	#if defined HOUSE_DEBUG
		printf("[HOUSE]: Deleting the house at arrayIndex: %i with the fileID: %i", arrayIndex, HouseInfo[arrayIndex][hFileID]);
	#endif
	UnloadHouseArrayIndex(arrayIndex);
	SetSaleTextForHouse(arrayIndex, 1);
	return 1;/*fremove(_path);*/
}

LoadHouses()
{
	for(new i; i < MAX_HOUSES; i++)
	{
		if(DoesHouseExist(i)) LoadHouse(i);
		else continue;
	}
	return;
}

LoadHouse(id)
{
	new
		arrayIndex = GetFreeHouseArrayIndex();
	if(arrayIndex == -1) return 0;
	new
		_path[32];
	format(_path, sizeof(_path), "/houses/%i.ini", id);
	INI_ParseFile(_path, "OnHouseDataLoad", .bExtra = true, .extra = arrayIndex);
	HouseInfo[arrayIndex][hFileID] = id;
	SetSaleTextForHouse(arrayIndex);
	#if defined HOUSE_DEBUG
		printf("[HOUSE]: Loading the house at arrayIndex: with the fileID: %i", arrayIndex, HouseInfo[arrayIndex][hFileID]);
	#endif
	return 1;
}

public OnHouseDataLoad(arrayIndex, name[], value[])
{
	/* Load Data Start */
	INI_Int("hType", HouseInfo[arrayIndex][hType]);
	INI_String("hOwner", HouseInfo[arrayIndex][hOwner], MAX_PLAYER_NAME);
	INI_Int("hOwnerID", HouseInfo[arrayIndex][hOwnerID]);
	INI_Float("hExtX", HouseInfo[arrayIndex][hExtX]);
	INI_Float("hExtY", HouseInfo[arrayIndex][hExtY]);
	INI_Float("hExtZ", HouseInfo[arrayIndex][hExtZ]);
	INI_Float("hExtA", HouseInfo[arrayIndex][hExtA]);
	INI_Int("hExtVW", HouseInfo[arrayIndex][hExtVW]);
	INI_Int("hExtInt", HouseInfo[arrayIndex][hExtInt]);
	INI_Float("hIntX", HouseInfo[arrayIndex][hIntX]);
	INI_Float("hIntY", HouseInfo[arrayIndex][hIntY]);
	INI_Float("hIntZ", HouseInfo[arrayIndex][hIntZ]);
	INI_Float("hIntA", HouseInfo[arrayIndex][hIntA]);
	INI_Int("hIntVW", HouseInfo[arrayIndex][hIntVW]);
	INI_Int("hIntInt", HouseInfo[arrayIndex][hIntInt]);
	INI_Int("hPickup", HouseInfo[arrayIndex][hPickup]);
	INI_Int("hBank", HouseInfo[arrayIndex][hBank]);
	INI_Bool("hIsLocked", HouseInfo[arrayIndex][hIsLocked]);
	INI_Int("hPrice", HouseInfo[arrayIndex][hPrice]);
	INI_Int("hLevel", HouseInfo[arrayIndex][hLevel]);
	/* Load Data End */
	return 1;
}

SaveHouses()
{
	for(new i; i < MAX_HOUSES; i++) if(IsValidHouse(i)) SaveHouse(i);
	return 1;
}

SaveHouse(arrayIndex)
{
	new
		INI:_handle = INI_Open(ReturnHousePath(arrayIndex));
	INI_WriteInt(_handle, "hType", HouseInfo[arrayIndex][hType]);
	INI_WriteString(_handle, "hOwner", HouseInfo[arrayIndex][hOwner]);
	INI_WriteInt(_handle, "hOwnerID", HouseInfo[arrayIndex][hOwnerID]);
	INI_WriteFloat(_handle, "hExtX", HouseInfo[arrayIndex][hExtX]);
	INI_WriteFloat(_handle, "hExtY", HouseInfo[arrayIndex][hExtY]);
	INI_WriteFloat(_handle, "hExtZ", HouseInfo[arrayIndex][hExtZ]);
	INI_WriteFloat(_handle, "hExtA", HouseInfo[arrayIndex][hExtA]);
	INI_WriteInt(_handle, "hExtVW", HouseInfo[arrayIndex][hExtVW]);
	INI_WriteInt(_handle, "hExtInt", HouseInfo[arrayIndex][hExtInt]);
	INI_WriteFloat(_handle, "hIntX", HouseInfo[arrayIndex][hIntX]);
	INI_WriteFloat(_handle, "hIntY", HouseInfo[arrayIndex][hIntY]);
	INI_WriteFloat(_handle, "hIntZ", HouseInfo[arrayIndex][hIntZ]);
	INI_WriteFloat(_handle, "hIntA", HouseInfo[arrayIndex][hIntA]);
	INI_WriteInt(_handle, "hIntVW", HouseInfo[arrayIndex][hIntVW]);
	INI_WriteInt(_handle, "hIntInt", HouseInfo[arrayIndex][hIntInt]);
	INI_WriteInt(_handle, "hPickup", HouseInfo[arrayIndex][hPickup]);
	INI_WriteInt(_handle, "hBank", HouseInfo[arrayIndex][hBank]);
	INI_WriteBool(_handle, "hIsLocked", HouseInfo[arrayIndex][hIsLocked]);
	INI_WriteInt(_handle, "hPrice", HouseInfo[arrayIndex][hPrice]);
	INI_WriteInt(_handle, "hLevel", HouseInfo[arrayIndex][hLevel]);
	INI_Close(_handle);
	SetSaleTextForHouse(arrayIndex);
	#if defined HOUSE_DEBUG
		printf("[HOUSE]: Saving the house at arrayIndex: with the fileID: %i", arrayIndex, HouseInfo[arrayIndex][hFileID]);
	#endif
	return 1;
}

UnloadHouseArrayIndex(arrayIndex)
{
	HouseInfo[arrayIndex][hFileID] = 0;
	HouseInfo[arrayIndex][hType] = -1;
	strdel(HouseInfo[arrayIndex][hOwner], 0, 64);
	HouseInfo[arrayIndex][hOwnerID] = 0;
	HouseInfo[arrayIndex][hExtX] = 0.0;
	HouseInfo[arrayIndex][hExtY] = 0.0;
	HouseInfo[arrayIndex][hExtZ] = 0.0;
	HouseInfo[arrayIndex][hExtA] = 0.0;
	HouseInfo[arrayIndex][hExtVW] = 0;
	HouseInfo[arrayIndex][hExtInt] = 0;
	HouseInfo[arrayIndex][hIntX] = 0.0;
	HouseInfo[arrayIndex][hIntY] = 0.0;
	HouseInfo[arrayIndex][hIntZ] = 0.0;
	HouseInfo[arrayIndex][hIntA] = 0.0;
	HouseInfo[arrayIndex][hIntVW] = 0;
	HouseInfo[arrayIndex][hIntInt] = 0;
	HouseInfo[arrayIndex][hPickup] = 0;
	HouseInfo[arrayIndex][hBank] = 0;
	HouseInfo[arrayIndex][hIsLocked] = false;
	HouseInfo[arrayIndex][hPrice] = 0;
	HouseInfo[arrayIndex][hLevel] = 0;
	#if defined HOUSE_DEBUG
		printf("[HOUSE]: Unloading the house at arrayIndex: %i.", arrayIndex);
	#endif
	return 1;
}

SetSaleTextForHouse(arrayIndex, destroy = 0) // type: 0 - owned, 1 - forsale / destroy: 0 - Recreate, 1 - Destroy
{
	if(gHousePickups[arrayIndex] != INVALID_PLAYER_ID || destroy == 1)
	{
		DestroyDynamicPickup(gHousePickups[arrayIndex]);
		gHousePickups[arrayIndex] = INVALID_PLAYER_ID;
	}

	if(Text3D:gHouseSaleText[arrayIndex] != Text3D:INVALID_3DTEXT_ID || destroy == 1)
	{
		DestroyDynamic3DTextLabel(gHouseSaleText[arrayIndex]);
		gHouseSaleText[arrayIndex] = Text3D:INVALID_3DTEXT_ID;
	}

	if(!destroy)
	{
		new _textInfo[128];
		format(_textInfo, sizeof(_textInfo), "This %s is for sale!\nMarket Price: $%i\nLevel Required: %i\n/buyhouse - To purchase", (HouseInfo[arrayIndex][hType] == 0) ? ("house") : ("apartment complex"), HouseInfo[arrayIndex][hPrice], HouseInfo[arrayIndex][hLevel]);
		if(strcmp(HouseInfo[arrayIndex][hOwner], "The State") == 0) gHouseSaleText[arrayIndex] = CreateDynamic3DTextLabel(_textInfo, COLOR_YELLOW, HouseInfo[arrayIndex][hExtX], HouseInfo[arrayIndex][hExtY], HouseInfo[arrayIndex][hExtZ], 5.0, .worldid = HouseInfo[arrayIndex][hExtVW], .interiorid = HouseInfo[arrayIndex][hExtInt]);
		if(HouseInfo[arrayIndex][hType] == 1) gHousePickups[arrayIndex] = CreateDynamicPickup(1314, 1, HouseInfo[arrayIndex][hExtX], HouseInfo[arrayIndex][hExtY], HouseInfo[arrayIndex][hExtZ], HouseInfo[arrayIndex][hExtVW], HouseInfo[arrayIndex][hExtInt]);
	}
	return 1;
}

/* Stock Functions */





stock DoesHouseExist(id)
{
	new
		_path[32];
	format(_path, sizeof(_path), "/houses/%i.ini", id);
	if(fexist(_path)) return 1;
	else return 0;
}

stock IsValidHouse(arrayIndex)
{
	if(HouseInfo[arrayIndex][hFileID] != 0) return 1;
	else return 0;
}

stock GetFreeHouseArrayIndex()
{
	for(new i; i < MAX_HOUSES; i++) if(HouseInfo[i][hFileID] == 0 || HouseInfo[i][hFileID] == -1) return i;
	return -1;
}

stock GetPlayerOwnedHouseIndex(playerid)
{
	new
		_name[MAX_PLAYER_NAME];
	format(_name, sizeof(_name), "%s", ReturnPlayerName(playerid));
	for(new i; i < MAX_HOUSE; i++)
	{
		if(IsValidHouse(i)) if(PlayerInfo[playerid][E_UserID] == HouseInfo[i][hOwnerID]) return i;
		else continue;
	}
	return -1;
}

stock GetFreeHouseFileID()
{
	for(new i/*, _path[32]*/; i < MAX_HOUSES; i++)
	{
		if(HouseInfo[i][hFileID] == 0) return i;
		//format(_path, sizeof(_path), "/houses/%i.ini", i);
		//if(!fexist(_path)) return i;
	}
	return -1;
}

stock ReturnHousePath(arrayIndex)
{
	new
		_path[32];
	format(_path, sizeof(_path), "/houses/%i.ini", HouseInfo[arrayIndex][hFileID]);
	return _path;
}

stock IsPlayerInRangeOfHouse(playerid, Float:range)
{
	for(new i; i < MAX_HOUSES; i++)
	{
		if(!IsValidHouse(i)) continue;
		else if(
		(IsPlayerInRangeOfPoint(playerid, range, HouseInfo[i][hExtX], HouseInfo[i][hExtY], HouseInfo[i][hExtZ])) &&
		(GetPlayerVirtualWorld(playerid) == HouseInfo[i][hExtVW]) && GetPlayerInterior(playerid) == HouseInfo[i][hExtInt]) return i;
		else if(
		(IsPlayerInRangeOfPoint(playerid, range, HouseInfo[i][hIntX], HouseInfo[i][hIntY], HouseInfo[i][hIntZ])) &&
		(GetPlayerVirtualWorld(playerid) == HouseInfo[i][hIntVW]) && GetPlayerInterior(playerid) == HouseInfo[i][hIntInt]) return i;
		else continue;
	}
	return -1;
}

stock IsPlayerInRangeOfOwnedHouse(playerid, Float:range)
{
	new _biz = IsPlayerInRangeOfHouse(playerid, range);
	if(strlen(HouseInfo[_biz][hOwner]) == 0) return 0;
	new
		_name[MAX_PLAYER_NAME];
	format(_name, sizeof(_name), "%s", ReturnPlayerName(playerid));
	if(strcmp(_name, HouseInfo[_biz][hOwner]) == 0) return _biz;
	else return -1;
}

stock IsHouseOwned(arrayIndex)
{
	if(strcmp(HouseInfo[arrayIndex][hOwner], "The State") == 0) return 0;
	else return 1;
}

stock GetPlayerOwnedHouseArrayIndex(playerid)
{
	for(new i; i < MAX_HOUSES; i++)
	{
		if(IsValidHouse(i))
		{
			if( HouseInfo[i][hOwnerID] == PlayerInfo[playerid][E_UserID] ) return i;
		}
		else continue;
	}
	return -1;
}

/* Admin Commands */


CMD:loaddata(playerid, params[])
{
    INI_ParseFile(UserPath(playerid), "LoadUser_%s", .bExtra = true, .extra = playerid);
	SendClientMessage(playerid,COLOR_GREEN,"Player data loaded.");
	new _string[128];
	format(_string,sizeof(_string),"USERID: %d - A_LEVEL: %d",PlayerInfo[playerid][E_UserID],PlayerInfo[playerid][E_ADMIN_LEVEL]);
	SendClientMessage(playerid,COLOR_GREEN,_string);
    return 1;
}
CMD:createhouse(playerid, params[])
{
	if(PlayerInfo[playerid][E_ADMIN_LEVEL] < 1337) return SendClientMessage(playerid, COLOR_GREY, "You are not allowed to use this command.");
	new
		_type;
	if(sscanf(params, "i", _type)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /createhouse [type] - (0 - House | 1 - Apartment Complex)");
	new Float:pos[3];
	GetPlayerPos(playerid, pos[0], pos[1], pos[2]);
	if(CreateHouse(_type, pos[0], pos[1], pos[2], GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid))) SendClientMessage(playerid, COLOR_RED, "SERVER: {FFFFFF}Created the house.");
	else SendClientMessage(playerid, COLOR_RED, "SERVER: {FFFFFF}Failed to create the house (No available slots / Script Error).");
	return 1;
}

CMD:deletehouse(playerid, params[])
{
	if(PlayerInfo[playerid][E_ADMIN_LEVEL] < 1337) return SendClientMessage(playerid, COLOR_GREY, "You are not allowed to use this command.");
	new
		_index;
	if(sscanf(params, "i", _index)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /deletehouse [id]");
	if(!IsValidHouse(_index)) return SendClientMessage(playerid, COLOR_RED, "SERVER: {FFFFFF}Invalid house ID, use /houses");
	new
		_message[128];
	format(_message, sizeof(_message), "SERVER: {FFFFFF}Deleted the house %i", _index);
	if(DeleteHouse(_index)) SendClientMessage(playerid, COLOR_RED, _message);
	else SendClientMessage(playerid, COLOR_RED, "SERVER: {FFFFFF}Failed to delete the house.");
	return 1;
}

stock GetName(playerid)
{
	new name[MAX_PLAYER_NAME];
 	GetPlayerName(playerid,name,sizeof(name));
	return name;
}


CMD:asethouseowner(playerid, params[])
{
	if(PlayerInfo[playerid][E_ADMIN_LEVEL] < 1337) return SendClientMessage(playerid, COLOR_GREY, "You are not allowed to use this command.");
	new
		_biz,
		id;
	if(sscanf(params, "ii", _biz, id)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /asethouseowner [houseid] [owner-ID]");
	if(!IsValidHouse(_biz)) return SendClientMessage(playerid, COLOR_RED, "SERVER: {FFFFFF}Invalid house ID, use /houses");
	new _msg[128];
	format(_msg, sizeof(_msg), "You have updated the houses owner to %d.", id);
	SendClientMessage(playerid, COLOR_GREEN, _msg);
	HouseInfo[_biz][hOwnerID] = id;
	SaveHouse(_biz);
	for(new i; i < MAX_PLAYERS; i++)
	{
	    if(IsPlayerConnected(i))
	    {
		    if(PlayerInfo[i][E_UserID] == id)
		    {
		        format( _msg, sizeof(_msg),"You have set %s as owner of the house.",GetName(i));
		        SendClientMessage( playerid, -1, _msg );
		        format(HouseInfo[_biz][hOwner], MAX_PLAYER_NAME, "%s", GetName(i));
			}
		}
	}
	return 1;
}

CMD:asethousebank(playerid, params[])
{
	if(PlayerInfo[playerid][E_ADMIN_LEVEL] < 1337) return SendClientMessage(playerid, COLOR_GREY, "You are not allowed to use this command.");
	new
		_biz,
		_fee;
	if(sscanf(params, "ii", _biz, _fee)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /asethousebank [houseid] [amount]");
	if(!IsValidHouse(_biz)) return SendClientMessage(playerid, COLOR_RED, "SERVER: {FFFFFF}Invalid house ID, use /houses");
	HouseInfo[_biz][hBank] = _fee;
	new _msg[128];
	format(_msg, sizeof(_msg), "You have updated the houses bank to $%i.", _fee);
	SendClientMessage(playerid, COLOR_GREEN, _msg);
	SaveHouse(_biz);
	return 1;
}

CMD:asethousetype(playerid, params[])
{
	if(PlayerInfo[playerid][E_ADMIN_LEVEL] < 1337) return SendClientMessage(playerid, COLOR_GREY, "You are not allowed to use this command.");
	new
		_biz,
		_fee;
	if(sscanf(params, "ii", _biz, _fee)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /asethousetype [houseid] [type]");
	if(!IsValidHouse(_biz)) return SendClientMessage(playerid, COLOR_RED, "SERVER: {FFFFFF}Invalid house ID, use /houses");
	HouseInfo[_biz][hType] = _fee;
	new _msg[128];
	format(_msg, sizeof(_msg), "You have updated the house type to %i.", _fee);
	SendClientMessage(playerid, COLOR_GREEN, _msg);
	SaveHouse(_biz);
	return 1;
}

CMD:asethouseprice(playerid, params[])
{
	if(PlayerInfo[playerid][E_ADMIN_LEVEL] < 1337) return SendClientMessage(playerid, COLOR_GREY, "You are not allowed to use this command.");
	new
		_biz,
		_fee;
	if(sscanf(params, "ii", _biz, _fee)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /asethouseprice [houseid] [price]");
	if(!IsValidHouse(_biz)) return SendClientMessage(playerid, COLOR_RED, "SERVER: {FFFFFF}Invalid house ID, use /houses");
	HouseInfo[_biz][hPrice] = _fee;
	new _msg[128];
	format(_msg, sizeof(_msg), "You have updated the house price to $%i.", _fee);
	SendClientMessage(playerid, COLOR_GREEN, _msg);
	SaveHouse(_biz);
	return 1;
}

CMD:asethouselevel(playerid, params[])
{
	if(PlayerInfo[playerid][E_ADMIN_LEVEL] < 1337) return SendClientMessage(playerid, COLOR_GREY, "You are not allowed to use this command.");
	new
		_biz,
		_fee;
	if(sscanf(params, "ii", _biz, _fee)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /asethouselevel [houseid] [level]");
	if(!IsValidHouse(_biz)) return SendClientMessage(playerid, COLOR_RED, "SERVER: {FFFFFF}Invalid house ID, use /houses");
	HouseInfo[_biz][hLevel] = _fee;
	new _msg[128];
	format(_msg, sizeof(_msg), "You have updated the houses level to $%i.", _fee);
	SendClientMessage(playerid, COLOR_GREEN, _msg);
	SaveHouse(_biz);
	return 1;
}

CMD:ahousebank(playerid, params[])
{
	if(PlayerInfo[playerid][E_ADMIN_LEVEL] < 1337) return SendClientMessage(playerid, COLOR_GREY, "You are not allowed to use this command.");
	new
		_biz;
	if(sscanf(params, "i", _biz)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /ahousebank [houseid]");
	if(!IsValidHouse(_biz)) return SendClientMessage(playerid, COLOR_RED, "SERVER: {FFFFFF}Invalid house ID, use /houses");
	new _msg[128];
	format(_msg, sizeof(_msg), "House bank $%i, owned by %s.", HouseInfo[_biz][hBank], HouseInfo[_biz][hOwner]);
	SendClientMessage(playerid, COLOR_GREEN, _msg);
	SaveHouse(_biz);
	return 1;
}

CMD:asethouseint(playerid, params[])
{
	if(PlayerInfo[playerid][E_ADMIN_LEVEL] < 1337) return SendClientMessage(playerid, COLOR_GREY, "You are not allowed to use this command.");
	new
		_biz;
	if(sscanf(params, "i", _biz)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /asethouseint [houseid]");
	if(!IsValidHouse(_biz)) return SendClientMessage(playerid, COLOR_RED, "SERVER: {FFFFFF}Invalid house ID, use /houses");
	new Float:pos[3];
	GetPlayerPos(playerid, pos[0], pos[1], pos[2]);
	HouseInfo[_biz][hIntX] = pos[0];
	HouseInfo[_biz][hIntY] = pos[1];
	HouseInfo[_biz][hIntZ] = pos[2];
	HouseInfo[_biz][hIntInt] = GetPlayerInterior(playerid);
	new _msg[128];
	format(_msg, sizeof(_msg), "You have updated %s's house interior location.", HouseInfo[_biz][hOwner]);
	SendClientMessage(playerid, COLOR_GREEN, _msg);
	SaveHouse(_biz);
	return 1;
}

CMD:asethouseext(playerid, params[])
{
	if(PlayerInfo[playerid][E_ADMIN_LEVEL] < 1337) return SendClientMessage(playerid, COLOR_GREY, "You are not allowed to use this command.");
	new
		_biz;
	if(sscanf(params, "i", _biz)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /asethouseext [houseid]");
	if(!IsValidHouse(_biz)) return SendClientMessage(playerid, COLOR_RED, "SERVER: {FFFFFF}Invalid house ID, use /houses");
	new Float:pos[3];
	GetPlayerPos(playerid, pos[0], pos[1], pos[2]);
	HouseInfo[_biz][hExtX] = pos[0];
	HouseInfo[_biz][hExtY] = pos[1];
	HouseInfo[_biz][hExtZ] = pos[2];
	HouseInfo[_biz][hExtVW] = GetPlayerVirtualWorld(playerid);
	HouseInfo[_biz][hExtInt] = GetPlayerInterior(playerid);
	new _msg[128];
	format(_msg, sizeof(_msg), "You have updated %s's house exterior location.", HouseInfo[_biz][hOwner]);
	SendClientMessage(playerid, COLOR_GREEN, _msg);
	SaveHouse(_biz);
	return 1;
}

CMD:asellhouse(playerid, params[])
{
	if(PlayerInfo[playerid][E_ADMIN_LEVEL] < 1337) return SendClientMessage(playerid, COLOR_GREY, "You are not allowed to use this command.");
	new
		_index;
	if(sscanf(params, "i", _index)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /asellhouse [id]");
	if(!IsValidHouse(_index)) return SendClientMessage(playerid, COLOR_RED, "SERVER: {FFFFFF}Invalid house ID, use /houses");
	new _message[128];
	format(_message, sizeof(_message), "SERVER: {FFFFFF}You have asold %s's house.", HouseInfo[_index][hOwner]);
	SendClientMessage(playerid, COLOR_RED, _message);
	format(HouseInfo[_index][hOwner], 64, "The State");
	HouseInfo[_index][hBank] = 0;
	HouseInfo[_index][hLevel] = 7;
	HouseInfo[_index][hIsLocked] = true;
	HouseInfo[_index][hOwnerID] = 0;
	SaveHouse(_index);
	return 1;
}

CMD:house(playerid, params[])
{
	if(PlayerInfo[playerid][E_ADMIN_LEVEL] < 1337) return SendClientMessage(playerid, COLOR_GREY, "You are not allowed to use this command.");
	new
		_index;
	if(sscanf(params, "i", _index)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /house [id]");
	if(!IsValidHouse(_index)) return SendClientMessage(playerid, COLOR_RED, "SERVER: {FFFFFF}Invalid house ID, use /houses");
	SetPlayerPos(playerid, HouseInfo[_index][hExtX], HouseInfo[_index][hExtY], HouseInfo[_index][hExtZ]);
	SetPlayerVirtualWorld(playerid, HouseInfo[_index][hExtVW]);
	SetPlayerInterior(playerid, HouseInfo[_index][hExtInt]);
//	EEF(playerid);
	return 1;
}

CMD:houses(playerid, params[])
{
	if(PlayerInfo[playerid][E_ADMIN_LEVEL] < 1337) return SendClientMessage(playerid, COLOR_GREY, "You are not allowed to use this command.");
	SendClientMessage(playerid, COLOR_GREY, "Houses:");
	for(new i, _message[128]; i < MAX_HOUSES; i++)
	{
		if(IsValidHouse(i))
		{
			format(_message, sizeof(_message), " - (ID: %i / Type: %i) Status: %s {AFAFAF}by %s", i, HouseInfo[i][hType], (strcmp(HouseInfo[i][hOwner], "The State") == 0) ? ("{FF9900}For Sale") : ("{339900}Owned"), HouseInfo[i][hOwner]);
			SendClientMessage(playerid, COLOR_GREY, _message);
		}
	}
	return 1;
}

/* Player Commands */

CMD:buyhouse(playerid, params[])
{
	new _inRange = IsPlayerInRangeOfHouse(playerid, 2.0),
		_owned = GetPlayerOwnedHouseArrayIndex(playerid);
	if(_inRange == -1) return SendClientMessage(playerid, COLOR_RED, "You're not in range of a buyable house!");
	if(IsHouseOwned(_inRange)) return SendClientMessage(playerid, COLOR_RED, "This house is owned!");
	if(_owned != -1) return SendClientMessage(playerid, COLOR_RED, "You already own a house!");
	if(PlayerInfo[playerid][E_LEVEL] < HouseInfo[_inRange][hLevel]) return SendClientMessage(playerid, COLOR_RED, "Your level isn't high enough to buy this house!");
	if(PlayerInfo[playerid][E_MONEY] < HouseInfo[_inRange][hPrice]) return SendClientMessage(playerid, COLOR_RED, "You don't have enough money to buy this house!");
	GivePlayerCash(playerid, -HouseInfo[_inRange][hPrice]);
	format(HouseInfo[_inRange][hOwner], 64, "%s", ReturnPlayerName(playerid));
	HouseInfo[_inRange][hOwnerID] = PlayerInfo[playerid][E_UserID];
	SaveHouse(_inRange);
	SendClientMessage(playerid, COLOR_GREEN, "Congratulations on your new purchase!");
	return 1;
}

CMD:sellhouse(playerid, params[])
{
	new
		_arrayIndex = IsPlayerInRangeOfOwnedHouse(playerid, 2.0);
	if(GetPlayerOwnedHouseArrayIndex(playerid) == -1) return SendClientMessage(playerid, COLOR_RED, "You don't own a house.");
	if(_arrayIndex == -1) return SendClientMessage(playerid, COLOR_RED, "You're not in range of your house.");
	if(!IsPlayerInRangeOfPoint(playerid, 2.0, HouseInfo[_arrayIndex][hExtX], HouseInfo[_arrayIndex][hExtY], HouseInfo[_arrayIndex][hExtZ])) return SendClientMessage(playerid, COLOR_RED, "You're not in range of your business!");
	new
		Float:_sellPrice;
	if(HouseInfo[_arrayIndex][hPrice] != 0)
	{
		_sellPrice = (75 / HouseInfo[_arrayIndex][hPrice]) * 100;
		GivePlayerCash(playerid, floatround(_sellPrice));
	}
	format(HouseInfo[_arrayIndex][hOwner], 64, "The State");
	HouseInfo[_arrayIndex][hBank] = 0;
	HouseInfo[_arrayIndex][hIsLocked] = true;
	HouseInfo[_arrayIndex][hOwnerID] = 0;
	SaveHouse(_arrayIndex);
	new _message[128];
	format(_message, sizeof(_message), "You have sold your house for $%i (75% of $%i).", floatround(_sellPrice), HouseInfo[_arrayIndex][hPrice]);
	SendClientMessage(playerid, COLOR_GREEN, _message);
	return 1;
}

CMD:housebank(playerid, params[])
{
	new
		_arrayIndex = IsPlayerInRangeOfOwnedHouse(playerid, 2.0);
	if(GetPlayerOwnedHouseArrayIndex(playerid) == -1) return SendClientMessage(playerid, COLOR_RED, "You don't own a house.");
	if(_arrayIndex == -1) return SendClientMessage(playerid, COLOR_RED, "You're not in range of your house.");
	new _message[128];
	format(_message, sizeof(_message), "Your house bank is at $%i.", HouseInfo[_arrayIndex][hBank]);
	SendClientMessage(playerid, COLOR_GREEN, _message);
	return 1;
}

CMD:housedeposit(playerid, params[])
{
	new
		_amount,
		_arrayIndex = IsPlayerInRangeOfOwnedHouse(playerid, 2.0);
	if(GetPlayerOwnedHouseArrayIndex(playerid) == -1) return SendClientMessage(playerid, COLOR_RED, "You don't own a house.");
	if(_arrayIndex == -1) return SendClientMessage(playerid, COLOR_RED, "You're not in range of your house.");
	if(sscanf(params, "i", _amount)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /housedeposit [amount]");
	if(!IsPlayerInRangeOfPoint(playerid, 2.0, HouseInfo[_arrayIndex][hExtX], HouseInfo[_arrayIndex][hExtY], HouseInfo[_arrayIndex][hExtZ])) return SendClientMessage(playerid, COLOR_RED, "You're not in range of your business!");
	new _playerCash = PlayerInfo[playerid][E_MONEY];
	if(_amount > _playerCash || _amount < _playerCash) return SendClientMessage(playerid, COLOR_RED, "You don't have that much!");
	else
	{
		GivePlayerCash(playerid, -_amount);
		HouseInfo[_arrayIndex][hBank] += _amount;
	}
	new _message[128];
	format(_message, sizeof(_message), "You have deposited %i into the house bank!", _amount);
	SendClientMessage(playerid, COLOR_GREEN, _message);
	return 1;
}

CMD:housewithdraw(playerid, params[])
{
	new
		_amount,
		_arrayIndex = IsPlayerInRangeOfOwnedHouse(playerid, 2.0),
		_bizBank = HouseInfo[_arrayIndex][hBank];
	if(GetPlayerOwnedHouseArrayIndex(playerid) == -1) return SendClientMessage(playerid, COLOR_RED, "You don't own a business.");
	if(_arrayIndex == -1) return SendClientMessage(playerid, COLOR_RED, "You're not in range of your business.");
	if(sscanf(params, "i", _amount)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /housewithdraw [amount]");
	if(!IsPlayerInRangeOfPoint(playerid, 2.0, HouseInfo[_arrayIndex][hExtX], HouseInfo[_arrayIndex][hExtY], HouseInfo[_arrayIndex][hExtZ])) return SendClientMessage(playerid, COLOR_RED, "You're not in range of your house!");
	if(_amount > _bizBank || _amount < _bizBank) return SendClientMessage(playerid, COLOR_RED, "You don't have that much!");
	else
	{
		GivePlayerCash(playerid, _amount);
		HouseInfo[_arrayIndex][hBank] -= _amount;
	}
	new _message[128];
	format(_message, sizeof(_message), "You have withdrawn %i out of the houses bank!", _amount);
	SendClientMessage(playerid, COLOR_GREEN, _message);
	return 1;
}

CMD:enterhouse(playerid, params[])
{
	if(onhouse[playerid] == -1) return 1;
	new _index = onhouse[playerid];
	if(HouseInfo[_index][hIsLocked] == true) return GameTextForPlayer(playerid,"House is ~r~locked.",5000,5);
	SetPlayerPos(playerid, HouseInfo[_index][hIntX], HouseInfo[_index][hIntY], HouseInfo[_index][hIntZ]);
	SetPlayerVirtualWorld(playerid, HouseInfo[_index][hIntVW]);
	SetPlayerInterior(playerid, HouseInfo[_index][hIntInt]);
	GameTextForPlayer(playerid,"Welcome to the house!",5000,1);
	return 1;
}

CMD:lock(playerid, params[])
{
    	if(onhouse[playerid] == -1) return 1;
		new _house = onhouse[playerid];
		new
		_name[MAX_PLAYER_NAME];
		format(_name, sizeof(_name), "%s", ReturnPlayerName(playerid));
		if(strcmp(_name, HouseInfo[_house][hOwner]) == 0)
		{
		    if(HouseInfo[_house][hIsLocked] == false)
		    {
		        GameTextForPlayer(playerid,"House ~r~locked",2000,5);
                HouseInfo[_house][hIsLocked] = true;
			}
			else
			{
   				GameTextForPlayer(playerid,"House ~g~unlocked",2000,5);
                HouseInfo[_house][hIsLocked] = false;
			}
		}
		else SendClientMessage(playerid,COLOR_GREEN,"You do not have keys..");
		return 1;
}

CMD:exithouse(playerid, params[])
{
	new _index = IsPlayerInRangeOfHouse(playerid, 2.0);
	if(_index != -1 )
	{
	    	SetPlayerPos(playerid, HouseInfo[_index][hExtX], HouseInfo[_index][hExtY], HouseInfo[_index][hExtZ]);
			SetPlayerVirtualWorld(playerid, HouseInfo[_index][hExtVW]);
			SetPlayerInterior(playerid, HouseInfo[_index][hExtInt]);
	}
	return 1;
}

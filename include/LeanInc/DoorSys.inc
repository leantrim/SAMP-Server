new worldo[MAX_PLAYERS];

new bool:ENTERING[MAX_PLAYERS];

#define MAX_DMP 60
#define MAX_LABELS 60
#define cmdp:(%1) CMD:%1(playerid, params[])
#define DIALOG_SHSLOGIN 16001
#define MAX_DOORS 250

#define PROPERTY_BANK 27


forward LoadAll();

new Float:GFFP[MAX_PLAYERS][5];
new GIFP[MAX_PLAYERS][5];


enum ddInfo
{
	Float:ddExteriorX,
	Float:ddExteriorY,
	Float:ddExteriorZ,
	Float:ddExteriorA,
	Float:ddInteriorX,
	Float:ddInteriorY,
	Float:ddInteriorZ,
	Float:ddInteriorA,
	ddInt,
	ddIntVW,
	ddExtVw,
	ddExtInt,
	ddName[32],
	ddLevel,
	ddAdmin,
	ddVehicleAble,
	ddPickupType,
	ddColor,
	ddLock,
	Text3D:ddLabel,
	ddCreate,
	DoorExist,
	DoorFurLoaded,
	DoorCash,
	DoorRP,
	hPrice,
	hLevel,
	hOwner[MAX_PLAYER_NAME],
	hOwnerID,
}
new DoorInfo[MAX_DOORS][ddInfo];


new
	pHouseCheckpoint[MAX_PLAYERS] = {INVALID_PLAYER_ID, ...},
	onhouse[MAX_PLAYERS];
	



stock IsPlayerInRangeExteriorHouse(playerid, Float:range)
{
	for(new i; i < MAX_DOORS; i++)
	{
		if(!IsValidHouse(i)) continue;
		if((IsPlayerInRangeOfPoint(playerid, range, DoorInfo[i][ddExteriorX],DoorInfo[i][ddExteriorY],DoorInfo[i][ddExteriorZ])) &&
		(GetPlayerVirtualWorld(playerid) == DoorInfo[i][ddExtVw]) && GetPlayerInterior(playerid) == DoorInfo[i][ddExtInt]) return i;
		else continue;
	}
	return -1;
}	


stock IsValidHouse(id)
{
	if(DoorInfo[id][DoorExist] != 0 && DoorInfo[id][DoorRP] == 1) return 1;
	else return 0;
}



stock ExDoor_OnPlayerUpdate(playerid)
{

		new _house = IsPlayerInRangeExteriorHouse(playerid, 2.0);
		if(_house != -1 && pHouseCheckpoint[playerid] == INVALID_PLAYER_ID && onhouse[playerid] != _house)
		{
			pHouseCheckpoint[playerid] = CreateDynamicCP(DoorInfo[_house][ddExteriorX],DoorInfo[_house][ddExteriorY],DoorInfo[_house][ddExteriorZ], 2.0, .worldid = DoorInfo[_house][ddExtVw], .interiorid = DoorInfo[_house][ddExtInt], .playerid = playerid);
			new _message[128];

			if(DoorInfo[_house][hOwnerID] == 0)
			{
				format(_message, sizeof(_message), "This house is available for purchase for %s, Level Needed: %d",currency_format(DoorInfo[_house][hPrice]), DoorInfo[_house][hLevel]);
				SCM(playerid, COLOR_GREEN, _message);
				SCM(playerid, -1, "/buyhouse to buy it!");
			
			}
			
			else if(PlayerInfo[playerid][userid] == DoorInfo[_house][hOwnerID] )
			{
				SendClientMessage(playerid,COLOR_GREEN,"Welcome to your houses porch!");
				SendClientMessage(playerid,-1,"Available commands: /enter /ds(hout) /ddo /myhouse");
			}
			else if(PlayerInfo[playerid][userid] != DoorInfo[_house][hOwnerID])
			{
			    format(_message, sizeof(_message), "You're standing on %s's porch.",DoorInfo[_house][hOwner]);
			    SendClientMessage(playerid,COLOR_GREEN, _message);
			    SendClientMessage(playerid,-1,"Available commands: /enter /ds(hout) /ddo");
			}
			if(PlayerInfo[playerid][pAdmin] > 3)
			{
			    format(_message, sizeof(_message), "Property ID: %d, Owner: %d, Door Name: %s",_house, DoorInfo[_house][hOwnerID], DoorInfo[_house][ddName]);
			    SendClientMessage(playerid, COLOR_YELLOW,_message);
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

}

CMD:buyhouse(playerid, params[])
{
	new _inRange = IsPlayerInRangeExteriorHouse(playerid, 2.0),
		_owned = GetHousesOwned(playerid);
	if(_inRange == -1) return SendClientMessage(playerid, COLOR_RED, "You're not in range of a buyable house!");
	new _hPriced = DoorInfo[_inRange][hPrice];
	
	if(IsHouseOwned(_inRange)) return SendClientMessage(playerid, COLOR_RED, "This house is owned!");
	
	if(_owned != 0)
	{
		if( !strcmp( params, "yes", true ) )
		{
			new _properties_owned = _owned;
			new _price = _hPriced*=_properties_owned*3;
			if(PlayerInfo[playerid][Level] < DoorInfo[_inRange][hLevel]) return SendClientMessage(playerid, COLOR_RED, "Your level isn't high enough to buy this house!");
			if(PlayerInfo[playerid][pCash] < _price) return SendClientMessage(playerid, COLOR_RED, "You don't have enough money to buy this house!");
			if( _price > GetPlayerMoney( playerid ) )
			{
					SendClientMessage( playerid, COLOR_RED, "SERVER: You can not afford it." );
					return 1;
			}
			else
			{
				GiveMoney(playerid, (0 - _price));
				GivePropMoney(PROPERTY_BANK, _price);
				SaveNewHouseOwner(playerid, _inRange);
				return 1;
			}
		}
	
	
		new _properties_owned = _owned;
		new _price = _hPriced*=_properties_owned*3;
	
		new szMsg[128];
		format( szMsg, sizeof( szMsg ), "SERVER: Since you already own %d properties, your price has been multiplied by %d.", _properties_owned, (_properties_owned*3));
		SendClientMessage( playerid, COLOR_GRAD4, szMsg );
		format( szMsg, sizeof( szMsg ), "SERVER: You will need %s in order to purchase this property.", currency_format(_price));
		SendClientMessage( playerid, COLOR_GRAD5, szMsg );
		SendClientMessage( playerid, COLOR_GRAD5, "USAGE: /buyhouse yes{FFFFFF} To confirm the payment." );
		return 1;
	
	}
	if(PlayerInfo[playerid][Level] < DoorInfo[_inRange][hLevel]) return SendClientMessage(playerid, COLOR_RED, "Your level isn't high enough to buy this house!");
	if(PlayerInfo[playerid][pCash] < _hPriced) return SendClientMessage(playerid, COLOR_RED, "You don't have enough money to buy this house!");
	GiveMoney(playerid, (0 - _hPriced));
	GivePropMoney(PROPERTY_BANK, _hPriced);

	SaveNewHouseOwner(playerid, _inRange);
	return 1;
}


CMD:sellhouse(playerid, params[])
{
	new
		_arrayIndex = IsPlayerInRangeExteriorHouse(playerid, 2.0);
	if(GetPlayerOwnedHouseArrayIndex(playerid) == -1) return SendClientMessage(playerid, COLOR_RED, "You don't own a house.");
	if(_arrayIndex == -1) return SendClientMessage(playerid, COLOR_RED, "You're not in range of your house.");
	new
		 _sellPrice,
		_hPriced = DoorInfo[_arrayIndex][hPrice];
	if(_hPriced != 0)
	{
		_sellPrice = (_hPriced / 2);
		GiveMoney(playerid, _sellPrice);
		GivePropMoney(PROPERTY_BANK, -_sellPrice);
	}
	SaveNewHouseOwner(INVALID_PLAYER_ID, _arrayIndex);
	new _message[128];
	format(_message, sizeof(_message), "You have sold your house for %s.", currency_format(_sellPrice));
	SendClientMessage(playerid, COLOR_GREEN, _message);
	return 1;
}

CMD:asellhouse(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED
	new
		_index;
	if(sscanf(params, "i", _index)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /asellhouse [id]");
	if(!IsValidHouse(_index)) return SendClientMessage(playerid, COLOR_RED, "SERVER: {FFFFFF}Invalid house ID, use /houses");
	new _message[128];
	format(_message, sizeof(_message), "SERVER: {FFFFFF}You have asold %s's house.", DoorInfo[_index][hOwner]);
	SendClientMessage(playerid, COLOR_RED, _message);
	SaveNewHouseOwner(INVALID_PLAYER_ID, _index);

	format(_message, sizeof(_message), "AdmWarn(%d): %s has asold house %d",ALEVEL,GetName(playerid), _index);
	SendAdminMessage(COLOR_YELLOW, _message);
	return 1;
}




new ownername[MAX_PLAYER_NAME],
	houseidset;

CMD:asethouseowner(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED
	new
		houseid,
		name[MAX_PLAYER_NAME];
	if(sscanf(params, "is[24]", houseid, name)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /asethouseowner [houseid] [Playername (NOT ID!)] ");
	if(!IsValidHouse(houseid)) return SendClientMessage(playerid, COLOR_RED, "SERVER: {FFFFFF}Invalid house ID.");

	new leanquery[128];
    mysql_format(mysql, leanquery, sizeof(leanquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", name);
	mysql_tquery(mysql, leanquery, "OnSetHouseOwner", "d",playerid);
	ownername = name;
	houseidset = houseid; 
    return 1;
}


CMD:asethouseprice(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED
	new
		_house,
		_fee;
	if(sscanf(params, "ii", _house, _fee)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /asethouseprice [houseid] [price]");
	if(!IsValidHouse(_house)) return SendClientMessage(playerid, COLOR_RED, "SERVER: {FFFFFF}Invalid house ID.");
	DoorInfo[_house][hPrice] = _fee;
	new _msg[128];
	format(_msg, sizeof(_msg), "You have updated the house price to $%i.", _fee);
	SendClientMessage(playerid, COLOR_GREEN, _msg);
	format(_msg, sizeof(_msg), "AdmWarn(%d): %s has set house(%d) to price %d",ALEVEL,GetName(playerid), _house, _fee);
	SendAdminMessage(COLOR_YELLOW, _msg);
	SaveHouse(_house);
	return 1;
}


CMD:asethouselevel(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 5) return SendClientMessage(playerid, COLOR_GREY, "You are not allowed to use this command.");
	new
		_house,
		_fee;
	if(sscanf(params, "ii", _house, _fee)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /asethouselevel [houseid] [level]");
	if(!IsValidHouse(_house)) return SendClientMessage(playerid, COLOR_RED, "SERVER: {FFFFFF}Invalid house ID, use /houses");
	DoorInfo[_house][hLevel] = _fee;
	new _msg[128];
	format(_msg, sizeof(_msg), "You have updated the houses level to %i.", _fee);
	SendClientMessage(playerid, COLOR_GREEN, _msg);
	format(_msg, sizeof(_msg), "AdmWarn(%d): %s has set house(%d) to level %d",ALEVEL,GetName(playerid), _house, _fee);
	SendAdminMessage(COLOR_YELLOW, _msg);
	SaveHouse(_house);
	return 1;
}

LEANCMD:(househelp)
{
	SCM(playerid, COLOR_GREEN, "HOUSE COMMANDS:");
	SCM(playerid, COLOR_FADE2, "/sellhouse /buyhouse");

	if(PlayerInfo[playerid][pAdmin] > 4)
	{
		SCM(playerid, COLOR_FADE1, "/asethouseowner /asethouselevel /asellhouse /asethouseprice");
	}

	return 1;
}

LEANCMD:(setdoorrp)
{
	new 
		Float:Range,
		value;
	if(sscanf(params,"fd",Range, value)) return SCM(playerid, COLOR_FADE1,"USAGE: /setdoorRP [range] [value, 1 or 0]");

	for(new i; i < MAX_DOORS; i++)
	{
		if(IsPlayerInRangeOfPoint(playerid,Range,DoorInfo[i][ddExteriorX],DoorInfo[i][ddExteriorY],DoorInfo[i][ddExteriorZ]))
		{
			
			SetDoorRoleplay(playerid, i, value);
		
		}
	}

	return 1;
}

stock SetDoorRoleplay(playerid, id, value)
{


		DoorInfo[id][DoorRP] = value;
	
		new LeanQuery[128];
		mysql_format(mysql, LeanQuery, sizeof(LeanQuery), "UPDATE `seb-doors` SET `DoorRP` = '%d' WHERE `dID` = '%d'",DoorInfo[id][DoorRP] , id);
		mysql_tquery(mysql, LeanQuery, "", "");
		
		if(DoorInfo[id][DoorRP])
		{
			format(LeanQuery, sizeof(LeanQuery), "AdmCmd(%d): %s has enabled realistic door exterior! DOORID: %d",ALEVEL, GetName(playerid),id);
			DestroyDynamicPickup(DoorInfo[id][ddCreate]);
			DestroyDynamic3DTextLabel(DoorInfo[id][ddLabel]);
		}
		else{
			format(LeanQuery, sizeof(LeanQuery), "AdmCmd(%d): %s has disabled realistic door exterior! DOORID: %d",ALEVEL, GetName(playerid),id);
			LoadDoorCheckPoint(id);
		}
		SendAdminMessage(COLOR_YELLOW, LeanQuery);



}

stock SaveHouse(house_id)
{

	new LeanQuery[256];
	mysql_format(mysql, LeanQuery, sizeof(LeanQuery), "UPDATE `seb-doors` SET `DoorRP` = '%d', `hPrice` = '%d', `hLevel` = '%d', `hOwner` = '%s', `hOwnerID` = '%d' WHERE `dID` = '%d'",DoorInfo[house_id][DoorRP], DoorInfo[house_id][hPrice],DoorInfo[house_id][hLevel],DoorInfo[house_id][hOwner],DoorInfo[house_id][hOwnerID],house_id);
	mysql_tquery(mysql, LeanQuery, "", "");
	return 1;

}


forward OnSetHouseOwner(playerid);
public OnSetHouseOwner(playerid)
{
    new  rows = cache_num_rows(), _msg[128];

	format(_msg, sizeof(_msg), "AdmWarn(%d): %s has set owner of house %d to %s",houseidset, ownername);
	SendAdminMessage(COLOR_YELLOW, _msg);
	
	if(rows > 0)
	{
		SCM(playerid, COLOR_LIGHTRED, "House owner set!");
		new id = GetPlayerID(ownername);
	    if(IsPlayerConnected(id))
	    {
			SaveNewHouseOwner(id, houseidset);
			format(_msg, sizeof(_msg), "You have been set as owner of house %d by Admin %s",houseidset, GetName(playerid));
			SCM(id, COLOR_LIGHTRED, _msg);
		}
		else
		{
			new LeanQuery[128];
			mysql_format(mysql, LeanQuery, sizeof(LeanQuery), "UPDATE `seb-doors` SET `hOwnerID` = '%d', `hOwner` = '%s' WHERE `dID` = '%d'",rows, ownername, houseidset);
			mysql_tquery(mysql, LeanQuery, "", "");
			DoorInfo[houseidset][hOwnerID] = rows;
			DoorInfo[houseidset][hOwner] = ownername;
	
		}
	}

	else
	{
	    SCM(playerid, COLOR_LIGHTRED, "That name does not exist!");
	}

	return 1;
}






stock IsPlayerInRangeOfOwnedHouse(playerid, Float:range)
{
	new house = IsPlayerInRangeExteriorHouse(playerid, range);
	if(DoorInfo[house][hOwnerID] == PlayerInfo[playerid][userid]) return house;
	else return -1;
}


stock SaveNewHouseOwner(playerid, id)
{

	if(playerid != INVALID_PLAYER_ID)
	{

		DoorInfo[id][hOwner] = GetName(playerid);
		DoorInfo[id][hOwnerID] = PlayerInfo[playerid][userid];

		
	
		new LeanQuery[128];
		mysql_format(mysql, LeanQuery, sizeof(LeanQuery), "UPDATE `seb-doors` SET `hOwnerID` = '%d', `hOwner` = '%s' WHERE `dID` = '%d'",DoorInfo[id][hOwnerID],DoorInfo[id][hOwner], id);
		mysql_tquery(mysql, LeanQuery, "", "");
		
		GameTextForPlayer( playerid, "~w~Welcome Home~n~You can enter at any time typing /enter at this checkpoint", 5000, 3 );
		SendClientMessage(playerid, COLOR_GREEN, "Congratulations on your new purchase!");

	}
	else
	{
		format(DoorInfo[id][hOwner], MAX_PLAYER_NAME, "The State");
		DoorInfo[id][hOwnerID] = 0;
	
		new LeanQuery[128];
		mysql_format(mysql, LeanQuery, sizeof(LeanQuery), "UPDATE `seb-doors` SET `hOwnerID` = '%d', `hOwner` = '%s' WHERE `dID` = '%d'",DoorInfo[id][hOwnerID],DoorInfo[id][hOwner],  id);
		mysql_tquery(mysql, LeanQuery, "", "");
	}
	

}

stock GetHousesOwned(playerid)
{
	new xx = 0;
	for(new i; i < MAX_DOORS; i++)
	{
		if(IsValidHouse(i))
		{
			if( DoorInfo[i][hOwnerID] == PlayerInfo[playerid][userid] )
			{
				xx++;
			}
		}
	}
	return xx;
}


stock GetPlayerOwnedHouseArrayIndex(playerid)
{
	for(new i; i < MAX_DOORS; i++)
	{
		if(IsValidHouse(i))
		{
			if( DoorInfo[i][hOwnerID] == PlayerInfo[playerid][userid] ) return i;
		}
		else continue;
	}
	return -1;
}


stock IsHouseOwned(arrayIndex)
{
	if(DoorInfo[arrayIndex][hOwnerID] == 0) return 0;
	else return 1;
}


stock SaveDoors()
{
 	for(new ID = 0; ID < MAX_DOORS; ID++)
	{
	    if(DoorInfo[ID][ddExteriorX] != 0)
	    {
   			new ottquery[128];
      		format(ottquery, sizeof(ottquery),"UPDATE `seb-doors` SET `dCash` = %d, WHERE `dID` = %d", DoorInfo[ID][DoorCash], ID);
			mysql_tquery(mysql, ottquery, "", "");
	    }
    }

	return 1;
}


forward LoadDoors();
public LoadDoors()
{
	new ottquery[52];
	for(new x = 1; x < MAX_DOORS; x++)
	{
	    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-doors` WHERE `dID` = %d", x);
		mysql_tquery(mysql, ottquery, "DoesDoorExist", "i", x);
	}
}

forward DoesDoorExist(tpID);
public DoesDoorExist(tpID)
{
	new rows, fields, ottquery[50];
	cache_get_data(rows, fields, mysql);
	if(rows)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-doors` WHERE `dID` = %d", tpID);
		mysql_tquery(mysql, ottquery, "LoadAllDoors", "i", tpID);
	    return 1;
	}
	return 0;
}


forward LoadAllDoors(ID);
public LoadAllDoors(ID)
{
	new dName[32],inuse, hOwnern[MAX_PLAYER_NAME];
	DoorInfo[ID][ddExteriorX]  = cache_get_row_float(0, 1);
	DoorInfo[ID][ddExteriorY]  = cache_get_row_float(0, 2);
	DoorInfo[ID][ddExteriorZ]  = cache_get_row_float(0, 3);
	DoorInfo[ID][ddExteriorA]  = cache_get_row_float(0, 4);
	DoorInfo[ID][ddInteriorX]  = cache_get_row_float(0, 5);
	DoorInfo[ID][ddInteriorY]  = cache_get_row_float(0, 6);
	DoorInfo[ID][ddInteriorZ]  = cache_get_row_float(0, 7);
	DoorInfo[ID][ddInteriorA]  = cache_get_row_float(0, 8);
	DoorInfo[ID][ddInt] = cache_get_row_int(0, 9);
	DoorInfo[ID][ddIntVW] = cache_get_row_int(0, 10);
	DoorInfo[ID][ddExtVw] = cache_get_row_int(0, 11);
	DoorInfo[ID][ddExtInt] = cache_get_row_int(0, 12);
	cache_get_row(0, 13, dName);
	DoorInfo[ID][ddName] = dName;
	DoorInfo[ID][ddLevel] = cache_get_row_int(0, 14);
	DoorInfo[ID][ddAdmin] = cache_get_row_int(0, 15);
	DoorInfo[ID][ddVehicleAble] = cache_get_row_int(0, 16);
	DoorInfo[ID][ddPickupType] = cache_get_row_int(0, 17);
	DoorInfo[ID][ddColor] = cache_get_row_int(0, 18);
	DoorInfo[ID][ddLock] = cache_get_row_int(0, 19);
	inuse = cache_get_row_int(0, 20);
	DoorInfo[ID][DoorCash] = cache_get_row_int(0, 21);
	DoorInfo[ID][DoorRP] = cache_get_row_int(0, 22);
	DoorInfo[ID][hPrice] = cache_get_row_int(0, 23);
	DoorInfo[ID][hLevel] = cache_get_row_int(0, 24);
	cache_get_row(0, 25, hOwnern);
	DoorInfo[ID][hOwner] = hOwnern;
	DoorInfo[ID][hOwnerID] = cache_get_row_int(0, 26);
	
	
	
	DestroyDynamicPickup(DoorInfo[ID][ddCreate]);
	DestroyDynamic3DTextLabel(DoorInfo[ID][ddLabel]);
	if(inuse == 1)
	{
	    DoorInfo[ID][DoorExist] = 1;
		if(DoorInfo[ID][DoorRP] == 0)
		{
			LoadDoorCheckPoint(ID);
		}
	}
	else
	{
	    DoorInfo[ID][DoorExist] = 0;
	}

	return 1;
}


stock LoadDoorCheckPoint(index)
{

			switch(DoorInfo[index][ddPickupType])
			{
						case 0:
						{
							DoorInfo[index][ddCreate] = CreateDynamicPickup(1239 , 23, DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ], -1,DoorInfo[index][ddExtInt], -1, 50.0);
						}
						case 1:
						{
							DoorInfo[index][ddCreate] = CreateDynamicPickup(19606,23,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ],-1,DoorInfo[index][ddExtInt],-1,50.0);
						}
						case 2:
						{
							DoorInfo[index][ddCreate] = CreateDynamicPickup(1242,23,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ],-1,DoorInfo[index][ddExtInt],-1,50.0);
						}
						case 3:
						{
							DoorInfo[index][ddCreate] = CreateDynamicPickup(1272,23,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ],-1,DoorInfo[index][ddExtInt],-1,50.0);
						}
						case 4:
						{
							DoorInfo[index][ddCreate] = CreateDynamicPickup(1273,23,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ],-1,DoorInfo[index][ddExtInt],-1,50.0);
						}
						case 5:
						{
							DoorInfo[index][ddCreate] = CreateDynamicPickup(19522,23,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ],-1,DoorInfo[index][ddExtInt],-1,50.0);
						}
						case 6:
						{
							DoorInfo[index][ddCreate] = CreateDynamicPickup(19522,23,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ],-1,DoorInfo[index][ddExtInt],-1,50.0);
						}
						case 7:
						{
							DoorInfo[index][ddCreate] = CreateDynamicPickup(1318,23,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ],-1,DoorInfo[index][ddExtInt],-1,50.0);
						}
						case 8:
						{
							DoorInfo[index][ddCreate] = CreateDynamicPickup(19523,23,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ],-1,DoorInfo[index][ddExtInt],-1,50.0);
						}
						case 9:
						{
							DoorInfo[index][ddCreate] = CreateDynamicPickup(19524,23,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ],-1,DoorInfo[index][ddExtInt],-1,50.0);
						}
						case 10:
						{
							DoorInfo[index][ddCreate] = CreateDynamicPickup(1279,23,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ],-1,DoorInfo[index][ddExtInt],-1,50.0);
						}
						case 11:
						{
							DoorInfo[index][ddCreate] = CreateDynamicPickup(1274,23,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ],-1,DoorInfo[index][ddExtInt],-1,50.0);
						}
						case 12:
						{
							DoorInfo[index][ddCreate] = CreateDynamicPickup(1275,23,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ],-1,DoorInfo[index][ddExtInt],-1,50.0);
						}
						case 13:
						{
							DoorInfo[index][ddCreate] = CreateDynamicPickup(1316,23,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ],-1,DoorInfo[index][ddExtInt],-1,50.0); }
						case 14:
						{
							DoorInfo[index][ddCreate] = CreateDynamicPickup(1314,23,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ],-1,DoorInfo[index][ddExtInt],-1,50.0);
						}
			}
			new string[32];
			format(string,sizeof(string),"%s",DoorInfo[index][ddName],index);
			switch(DoorInfo[index][ddColor])
			{
						case 0: { DoorInfo[index][ddLabel] = CreateDynamic3DTextLabel(string, -1,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ]+0.5,DNAME_DISTANCE,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,0,-1,DoorInfo[index][ddExtInt],-1,50.0); }
						case 1: { DoorInfo[index][ddLabel] = CreateDynamic3DTextLabel(string, 0x8000FFFF, DoorInfo[index][ddExteriorX], DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ]+0.5,DNAME_DISTANCE,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,0,-1,DoorInfo[index][ddExtInt],-1,50.0); }
						case 2: { DoorInfo[index][ddLabel] = CreateDynamic3DTextLabel(string, 0xFFFF80FF, DoorInfo[index][ddExteriorX], DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ]+0.5,DNAME_DISTANCE,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,0,-1,DoorInfo[index][ddExtInt],-1,50.0); }
						case 3: { DoorInfo[index][ddLabel] = CreateDynamic3DTextLabel(string, 0x80FF00FF, DoorInfo[index][ddExteriorX], DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ]+0.5,DNAME_DISTANCE,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,0,-1,DoorInfo[index][ddExtInt],-1,50.0); }
						case 4: { DoorInfo[index][ddLabel] = CreateDynamic3DTextLabel(string, 0x00FFFFFF, DoorInfo[index][ddExteriorX], DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ]+0.5,DNAME_DISTANCE,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,0,-1,DoorInfo[index][ddExtInt],-1,50.0); }
						case 5: { DoorInfo[index][ddLabel] = CreateDynamic3DTextLabel(string, 0x0080C0FF, DoorInfo[index][ddExteriorX], DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ]+0.5,DNAME_DISTANCE,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,0,-1,DoorInfo[index][ddExtInt],-1,50.0); }
						case 6: { DoorInfo[index][ddLabel] = CreateDynamic3DTextLabel(string, 0xFF0000FF, DoorInfo[index][ddExteriorX], DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ]+0.5,DNAME_DISTANCE,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,0,-1,DoorInfo[index][ddExtInt],-1,50.0); }
						case 7: { DoorInfo[index][ddLabel] = CreateDynamic3DTextLabel(string, 0x0000A0FF1, DoorInfo[index][ddExteriorX], DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ]+0.5,DNAME_DISTANCE,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,0,-1,DoorInfo[index][ddExtInt],-1,50.0); }
						case 8: { DoorInfo[index][ddLabel] = CreateDynamic3DTextLabel(string, 0xFFFFFFFF, DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ]+0.5,DNAME_DISTANCE,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,0,-1,DoorInfo[index][ddExtInt],-1,50.0); }
						case 9: { DoorInfo[index][ddLabel] = CreateDynamic3DTextLabel(string, 0x000000FF, DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ]+0.5,DNAME_DISTANCE,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,0,-1,DoorInfo[index][ddExtInt],-1,50.0); }
			}
			
			return 1;

}





// COMMANDS:

new unfrozet[MAX_PLAYERS];

LEANCMD:(enter)
{
/*
	if(onhouse[playerid] != -1)
	{
			new index = onhouse[playerid];
			if(DoorInfo[index][ddAdmin] > 0 && PlayerInfo[playerid][pAdmin] < 4) return SCM(playerid,COLOR_LIGHTRED,"NOTICE: "COL_WHITE"This door is enabled for admins only!");
	        if(DoorInfo[index][ddLock] > 0 && PlayerInfo[playerid][pAdmin] < 4) return SCM(playerid,COLOR_LIGHTRED,"NOTICE: "COL_WHITE"This door is locked!");
	   		if(!isEntityObjectsLoaded(index)){
 			LoadFurnitureHouse(index);
 			}
   			if(DoorInfo[index][ddIntVW] != 0)
	        {
	        	if(PlayerInfo[playerid][Level] == 1) SCM(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" Hit "COL_LIGHTRED"Y"COL_WHITE" to get unfrozen.");
	        	ENTERING[playerid] = true;
	        	TogglePlayerControllable(playerid, 0);
		        unfrozet[playerid] = SetTimerEx( "Unfreeze", 8000, false, "i", playerid );
		        GameTextForPlayer( playerid, "~w~Welcome to the house", 5000, 1 );
			}
	        SetPlayerInterior(playerid,DoorInfo[index][ddInt]);
	        SetPlayerPosEx(playerid,DoorInfo[index][ddInteriorX],DoorInfo[index][ddInteriorY],DoorInfo[index][ddInteriorZ]);
	        SetPlayerFacingAngle(playerid,DoorInfo[index][ddInteriorA]);
 			SetPlayerVirtualWorld(playerid,DoorInfo[index][ddIntVW]);
	        worldo[playerid] = GetPlayerVirtualWorld(playerid);
			new stringd[128];
			format(stringd, sizeof(stringd), "INT: %d, X:%f Y:%f Z:%f", DoorInfo[index][ddInt],DoorInfo[index][ddInteriorX],DoorInfo[index][ddInteriorY],DoorInfo[index][ddInteriorZ]);
			SCM(playerid, -1, stringd);
            return 1;
	}
*/

	for(new index = 0; index < sizeof(DoorInfo); index++)
	{
	    if(IsPlayerInRangeOfPoint(playerid,3.0,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ]))
	    {
	        if(DoorInfo[index][ddAdmin] > 0 && PlayerInfo[playerid][pAdmin] < 4) return SCM(playerid,COLOR_LIGHTRED,"NOTICE: "COL_WHITE"This door is enabled for admins only!");
	        if(DoorInfo[index][ddLock] > 0 && PlayerInfo[playerid][pAdmin] < 4) return SCM(playerid,COLOR_LIGHTRED,"NOTICE: "COL_WHITE"This door is locked!");
	        if(DoorInfo[index][ddVehicleAble] > 1 && IsPlayerInAnyVehicle(playerid))
	        {
	            if(!isEntityObjectsLoaded(index)){
 				LoadFurnitureHouse(index);
 				}
	        	new veh = GetPlayerVehicleID(playerid);
				SetPlayerInterior(playerid,DoorInfo[index][ddInt]);
	        	SetPlayerPosEx(playerid, DoorInfo[index][ddInteriorX], DoorInfo[index][ddInteriorY], DoorInfo[index][ddInteriorZ]);
	        	SetVehicleZAngle(veh, DoorInfo[index][ddInteriorA]);
		        if(DoorInfo[index][ddInt] != 0)
	        	{
	        		SetVehicleVirtualWorld(veh, DoorInfo[index][ddIntVW]);
	        		EachPlayer(i)
	            	{
       					if(IsPlayerInVehicle(i, veh))
  						{
      						SetPlayerVirtualWorld(i,DoorInfo[index][ddIntVW]);
       					}
			 		}
	        	}
	        	worldo[playerid] = GetPlayerVirtualWorld(playerid);
	        	return 1;
			}
			else
			{
   				if(!isEntityObjectsLoaded(index)){
 				LoadFurnitureHouse(index);
 				}
   				if(DoorInfo[index][ddIntVW] != 0)
	        	{
	        	    if(PlayerInfo[playerid][Level] == 1) SCM(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" Hit "COL_LIGHTRED"Y"COL_WHITE" to get unfrozen.");
	        	    ENTERING[playerid] = true;
	        	    TogglePlayerControllable(playerid, 0);
		        	TogglePlayerControllable(playerid, 0);
		        	unfrozet[playerid] = SetTimerEx( "Unfreeze", 8000, false, "i", playerid );
				}
	        	SetPlayerInterior(playerid,DoorInfo[index][ddInt]);
	        	SetPlayerPosEx(playerid,DoorInfo[index][ddInteriorX],DoorInfo[index][ddInteriorY],DoorInfo[index][ddInteriorZ]);
	        	SetPlayerFacingAngle(playerid,DoorInfo[index][ddInteriorA]);
 				SetPlayerVirtualWorld(playerid,DoorInfo[index][ddIntVW]);
	        	if(PlayerInfo[playerid][pAdmin] > 0)
        		{
	        		new string[64];
	        		format(string,sizeof(string), "Property ID: %d", index);
	        		SCM(playerid, COLOR_YELLOW, string);
	        	}
	        	worldo[playerid] = GetPlayerVirtualWorld(playerid);
            	return 1;
            }
	    }


    }
    SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"You are not near any "COL_LIGHTRED"/enter"COL_WHITE" spots.");
    return 1;
}






forward gdoor(playerid);
public gdoor(playerid)
{
	TogglePlayerControllable(playerid, 1);
	KillTimer(unfrozet[playerid]);
	return 1;
}





LEANCMD:(exit)
{
	for(new index = 0; index < sizeof(DoorInfo); index++)
	{
	    if(IsPlayerInRangeOfPoint(playerid, 3.0, DoorInfo[index][ddInteriorX], DoorInfo[index][ddInteriorY], DoorInfo[index][ddInteriorZ]) && GetPlayerVirtualWorld(playerid) == DoorInfo[index][ddIntVW])
	    {
			if(DoorInfo[index][ddVehicleAble] > 1 && IsPlayerInAnyVehicle(playerid))
	        {
	        	new veh = GetPlayerVehicleID(playerid);
	        	TogglePlayerControllable(playerid, 0);
				SetPlayerInterior(playerid,DoorInfo[index][ddExtInt]);
	        	SetPlayerPosEx(playerid, DoorInfo[index][ddExteriorX], DoorInfo[index][ddExteriorY], DoorInfo[index][ddExteriorZ]);
	        	SetVehicleZAngle(veh, DoorInfo[index][ddExteriorA]);
	        	SetVehicleVirtualWorld(veh, DoorInfo[index][ddExtVw]);
	        	SetTimerEx("Unfreeze", 500, false, "i", playerid);
	        	return 1;
			}
			else
			{
  				if(DoorInfo[index][ddExtVw] != 0)
	        	{
	        	    if(PlayerInfo[playerid][Level] == 1) SCM(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" Hit "COL_LIGHTRED"Y"COL_WHITE" to get unfrozen.");
	        	    ENTERING[playerid] = true;
		        	TogglePlayerControllable(playerid, 0);
		        	unfrozet[playerid] = SetTimerEx( "Unfreeze", 8000, false, "i", playerid );
				}
	        	SetPlayerInterior(playerid,DoorInfo[index][ddExtInt]);
	        	SetPlayerPosEx(playerid,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ]);
	        	SetPlayerFacingAngle(playerid,DoorInfo[index][ddExteriorA]);
	        	SetPlayerVirtualWorld(playerid,DoorInfo[index][ddExtVw]);
	        	return 1;
	        }
		}

	}
 	SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"You are not near any "COL_LIGHTRED"/exit"COL_WHITE" spots.");
    return 1;
}




stock GetNextDoor()
{
    new input[32];
    for(new index = 0; index < MAX_DOORS; index++)
    {
		if(DoorInfo[index][ddExteriorX] == 0 && DoorInfo[index][ddExteriorY] == 0 && DoorInfo[index][ddExteriorZ] == 0 && DoorInfo[index][ddExteriorA] == 0 && index != 0)
		{
		    format(input,sizeof(input),"%d",index);
			return index;
		}
	}
	return 1;
}








LEANCMD:(adoor)
{
	#if defined METRO_SEB
    if(PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED
    #endif
    #if defined METRO_SWAT
    if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
    #endif
	new input[32],id,value;
	if(sscanf(params,"s[32]dD(0)",input,id,value))
	{
		SCM(playerid,COLOR_YELLOW,"USAGE: /adoor [name] [doorID] [(optional)value]");
		SCM(playerid,COLOR_YELLOW,"/dname to edit the text");
		SCM(playerid,COLOR_YELLOW,"Available names : [NON _ CASE SENSITIVE] DoorRP (Enables/disables realistic door checkpoint!)");
		return SCM(playerid,COLOR_YELLOW,"Available names : [NON _ CASE SENSITIVE]VWINT, VWEXT, Exterior, Color, Interior, Delete, Lock, PickupType, Level, VehicleAble, Admin, Cash");
	}
	if(id < 0 || id > MAX_DOORS) return SCM(playerid,COLOR_YELLOW,"ID Must be from 0 to 250");

	
	if(strcmp(input,"DoorRP",true) == 0)
	{
		DoorInfo[id][DoorRP] = value;
	
		new LeanQuery[128];
		mysql_format(mysql, LeanQuery, sizeof(LeanQuery), "UPDATE `seb-doors` SET `DoorRP` = '%d' WHERE `dID` = '%d'",DoorInfo[id][DoorRP] , id);
		mysql_tquery(mysql, LeanQuery, "", "");
		
		if(DoorInfo[id][DoorRP])
		{
			format(LeanQuery, sizeof(LeanQuery), "AdmCmd(%d): %s has enabled realistic door exterior! DOORID: %d",ALEVEL, GetName(playerid),id);
			DestroyDynamicPickup(DoorInfo[id][ddCreate]);
			DestroyDynamic3DTextLabel(DoorInfo[id][ddLabel]);
		}
		else{
			format(LeanQuery, sizeof(LeanQuery), "AdmCmd(%d): %s has disabled realistic door exterior! DOORID: %d",ALEVEL, GetName(playerid),id);
			LoadDoorCheckPoint(id);
		}
		SendAdminMessage(COLOR_YELLOW, LeanQuery);
		return 1;

	}
	

	if(strcmp(input,"Cash",true) == 0)
	{
		new strings[128];
  		format(strings,sizeof(strings), "Current cash in property %d: %s", id, currency_format(DoorInfo[id][DoorCash]));
	 	SCM(playerid, COLOR_YELLOW, strings);

	}


	if(strcmp(input,"exterior",true) == 0)
	{
	    new ottquery[250];
	    
   		GetPlayerPosData(playerid);
		DoorInfo[id][ddExteriorX] = GFFP[playerid][0];
		DoorInfo[id][ddExteriorY] = GFFP[playerid][1];
		DoorInfo[id][ddExteriorZ] = GFFP[playerid][2];
		DoorInfo[id][ddExteriorA] = GFFP[playerid][3];
		DoorInfo[id][ddExtVw] = GIFP[playerid][1];
		DoorInfo[id][ddExtInt] = GIFP[playerid][0];

   		if(DoorInfo[id][DoorExist] == 0)
		{
  			mysql_format(mysql, ottquery, sizeof(ottquery), "INSERT INTO `seb-doors` (`dExtX`, `dExtY`, `dExtZ`, `dExtA`) VALUES ('%f', '%f', '%f', '%f')", 0.0,0.0,0.0,0.0);
  			mysql_tquery(mysql, ottquery, "", "");
		}
		
		SCM(playerid,COLOR_YELLOW,"You have set the exterior!");
		new strings[128];
  		format(strings,sizeof(strings), "AdmWarn(%i): %s has edited exterior location of door: %d",PlayerInfo[playerid][pAdmin],GetName(playerid), id);
	 	SendAdminMessage(COLOR_YELLOW, strings);

		

		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-doors` SET `dExtX` = '%f', `dExtY` = '%f', `dExtZ` = '%f', `dExtA` = '%f', `dExtInt` = '%d', `dExtVW` = '%d', `InUse` = '1' WHERE `dID` = '%d'", DoorInfo[id][ddExteriorX], DoorInfo[id][ddExteriorY], DoorInfo[id][ddExteriorZ], DoorInfo[id][ddExteriorA],DoorInfo[id][ddExtInt],DoorInfo[id][ddExtVw], id);
	 	mysql_tquery(mysql, ottquery, "", "");

		LoadDoors();
	}
	if(strcmp( input, "VWINT", true) == 0)
	{
	    if(DoorInfo[id][DoorExist] == 0) return SCM(playerid, COLOR_YELLOW," Door does not exist!");
	    new ottquery[200];
	    DoorInfo[id][ddIntVW] = value;
	    SCM(playerid,COLOR_YELLOW,"You have set the virtual world. (INTERIOR!)");
    	mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-doors` SET `dIntVW` = '%d' WHERE `dID` = '%d'", DoorInfo[id][ddIntVW], id);
	 	mysql_tquery(mysql, ottquery, "", "");

		LoadDoors();

   		new strings[128];
  		format(strings,sizeof(strings), "AdmWarn(%i): %s has edited virtual world interior of door: %d New VirtualWorld: %d",PlayerInfo[playerid][pAdmin],GetName(playerid), id,value);
	 	SendAdminMessage(COLOR_YELLOW, strings);
	    return 1;
	}
	if(strcmp(input,"VWEXT",true) == 0)
	{
	    if(DoorInfo[id][DoorExist] == 0) return SCM(playerid, COLOR_YELLOW," Door does not exist!");
	    new ottquery[200];
	    DoorInfo[id][ddExtVw] = value;
	    SCM(playerid,COLOR_YELLOW,"You have set the virtual world.(EXTERIOR)");

    	mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-doors` SET `dExtVW` = '%d' WHERE `dID` = '%d'", DoorInfo[id][ddExtVw], id);
	 	mysql_tquery(mysql, ottquery, "", "");

		LoadDoors();

   		new strings[128];
  		format(strings,sizeof(strings), "AdmWarn(%i): %s has edited exterior virtual world of door: %d New VirtualWorld: %d",PlayerInfo[playerid][pAdmin],GetName(playerid), id, value);
	 	SendAdminMessage(COLOR_YELLOW, strings);

	    return 1;
	}
	if(strcmp(input,"interior",true) == 0)
	{
	    new ottquery[200];
	    GetPlayerPosData(playerid);
	    DoorInfo[id][ddInteriorX] = GFFP[playerid][0];
	    DoorInfo[id][ddInteriorY] = GFFP[playerid][1];
	    DoorInfo[id][ddInteriorZ] = GFFP[playerid][2];
	    DoorInfo[id][ddInteriorA] = GFFP[playerid][3];
	    DoorInfo[id][ddIntVW] = id+1000;
	    DoorInfo[id][ddInt] = GIFP[playerid][0];
	    SetPlayerVirtualWorld(playerid, id+1000);

   		if(DoorInfo[id][DoorExist] == 0)
		{
  			mysql_format(mysql, ottquery, sizeof(ottquery), "INSERT INTO `seb-doors` (`dIntX`, `dIntY`, `dIntZ`, `dIntA`) VALUES ('%f', '%f', '%f', '%f')", 0.0,0.0,0.0,0.0);
  			mysql_tquery(mysql, ottquery, "", "");
		}


   		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-doors` SET `dIntX` = '%f', `dIntY` = '%f', `dIntZ` = '%f', `dIntA` = '%f', `dInt` = '%d', `dIntVW` = '%d', `InUse` = '1' WHERE `dID` = '%d'", DoorInfo[id][ddInteriorX], DoorInfo[id][ddInteriorY], DoorInfo[id][ddInteriorZ], DoorInfo[id][ddInteriorA],DoorInfo[id][ddInt],DoorInfo[id][ddIntVW], id);
	 	mysql_tquery(mysql, ottquery, "", "");

		DoorInfo[id][DoorExist] = 1;

		new string[ 64 ];
		format(string, sizeof(string),"You have set the interior of ID %d!",id);
		SCM(playerid, COLOR_YELLOW, string);
		new strings[128];
  		format(strings,sizeof(strings), "AdmWarn(%i): %s has edited interior location of door: %d",PlayerInfo[playerid][pAdmin],GetName(playerid), id);
	 	SendAdminMessage(COLOR_YELLOW, strings);

   		SetPlayerPosEx(playerid, DoorInfo[id][ddInteriorX], DoorInfo[id][ddInteriorY], DoorInfo[id][ddInteriorZ], 1000);
   		SetPlayerInterior(playerid, DoorInfo[id][ddInt]);
	    SetPlayerFacingAngle(playerid, DoorInfo[id][ddInteriorA]);

	}
	if(strcmp(input,"color",true) == 0)
	{
	    if(DoorInfo[id][DoorExist] == 0) return SCM(playerid, COLOR_YELLOW," Door does not exist!");
	    new ottquery[200];
		if(value < 0 || value > 9) return SCM(playerid,COLOR_YELLOW,"Color must be from 0 till 9");
		DoorInfo[id][ddColor] = value;

 		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-doors` SET `dColor` = '%d' WHERE `dID` = '%d'", DoorInfo[id][ddColor], id);
	 	mysql_tquery(mysql, ottquery, "", "");

		LoadDoors();

		SCM(playerid,COLOR_YELLOW,"You have set the color!");
		new strings[128];
  		format(strings,sizeof(strings), "AdmWarn(%i): %s has edited color of door: %d ColorID: %d",PlayerInfo[playerid][pAdmin],GetName(playerid), id,value);
	 	SendAdminMessage(COLOR_YELLOW, strings);

	}
	if(strcmp(input,"Lock",true) == 0)
	{
	    if(DoorInfo[id][DoorExist] == 0) return SCM(playerid, COLOR_YELLOW," Door does not exist!");

		if(DoorInfo[id][ddLock] == 0)
		{
		    new ottquery[200];
		    DoorInfo[id][ddLock] = 0;

			mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-doors` SET `dLock` = '%d' WHERE `dID` = '%d'", DoorInfo[id][ddLock], id);
	 		mysql_tquery(mysql, ottquery, "", "");

			LoadDoors();

		    GameTextForPlayer(playerid,"~n~ ~n~ Door ~r~ Locked",3000,3);
		    return 1;
		}
		if(DoorInfo[id][ddLock] == 1)
		{
		    new ottquery[200];
		    DoorInfo[id][ddLock] = 1;

   			mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-doors` SET `dLock` = '%d' WHERE `dID` = '%d'", DoorInfo[id][ddLock], id);
	 		mysql_tquery(mysql, ottquery, "", "");

			LoadDoors();

		    GameTextForPlayer(playerid,"~n~ ~n~ Door ~g~ Unlocked",3000,3);

		    return 1;
		}
	}
	if(strcmp(input,"PickupType",true) == 0)
	{
	    if(DoorInfo[id][DoorExist] == 0) return SCM(playerid, COLOR_YELLOW," Door does not exist!");

	    new ottquery[200];
		if(value < 0 || value > 15) return SCM(playerid,COLOR_YELLOW,"Pickup ID must be from 0 till 14");
		DoorInfo[id][ddPickupType] = value;

		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-doors` SET `dPickupType` = '%d' WHERE `dID` = '%d'", DoorInfo[id][ddPickupType], id);
		mysql_tquery(mysql, ottquery, "", "");

		LoadDoors();

		SCM(playerid,COLOR_YELLOW,"You have set the pickup model !");
	}
	if(strcmp(input,"Level",true) == 0)
	{
	    if(DoorInfo[id][DoorExist] == 0) return SCM(playerid, COLOR_YELLOW," Door does not exist!");

	    new ottquery[200];
	    DoorInfo[id][ddLevel] = value;

		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-doors` SET `dLevel` = '%d' WHERE `dID` = '%d'", DoorInfo[id][ddLevel], id);
		mysql_tquery(mysql, ottquery, "", "");

		LoadDoors();

	    SCM(playerid,COLOR_YELLOW,"You have set the Level !");
	}
	if(strcmp(input,"Admin",true) == 0)
	{
	    if(DoorInfo[id][DoorExist] == 0) return SCM(playerid, COLOR_YELLOW," Door does not exist!");

	    if(DoorInfo[id][ddAdmin] == 0)
	    {
	        new ottquery[200];
	        DoorInfo[id][ddAdmin] = 1;

			mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-doors` SET `dAdmin` = '%d' WHERE `dID` = '%d'", DoorInfo[id][ddAdmin], id);
			mysql_tquery(mysql, ottquery, "", "");

			LoadDoors();

	        SCM(playerid,COLOR_YELLOW,"The door will now work for admins only !");
	        return 1;
	    }
	    if(DoorInfo[id][ddAdmin] == 1)
    	{

	        new ottquery[200];
	        DoorInfo[id][ddAdmin] = 0;

  			mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-doors` SET `dAdmin` = '%d' WHERE `dID` = '%d'", DoorInfo[id][ddAdmin], id);
			mysql_tquery(mysql, ottquery, "", "");

			LoadDoors();

	        SCM(playerid,COLOR_YELLOW,"The door will now work for all players !");
	        return 1;
	    }
	}
	if(strcmp(input,"VehicleAble",true) == 0)
	{
	    if(DoorInfo[id][DoorExist] == 0) return SCM(playerid, COLOR_YELLOW," Door does not exist!");

	    new ottquery[200];
	    DoorInfo[id][ddVehicleAble] = value;
	    SCM(playerid,COLOR_YELLOW,"You have set the door vehicle able.");

		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-doors` SET `dVehicleAble` = '%d' WHERE `dID` = '%d'", DoorInfo[id][ddVehicleAble], id);
		mysql_tquery(mysql, ottquery, "", "");
		format(ottquery, sizeof(ottquery)," VehicleAble status: %d",DoorInfo[id][ddVehicleAble]);
		SCM(playerid, COLOR_YELLOW, ottquery);
		
	    LoadDoors();
	    return 1;
	}
	if(strcmp(input,"Delete",true) == 0)
	{
	    if(DoorInfo[id][DoorExist] == 0) return SCM(playerid, COLOR_YELLOW," Door does not exist!");


		DestroyDynamicPickup(DoorInfo[id][ddCreate]);
		DestroyDynamic3DTextLabel(DoorInfo[id][ddLabel]);

	    DoorInfo[id][ddInteriorX] = 0;
	    DoorInfo[id][ddInteriorY] = 0;
	    DoorInfo[id][ddInteriorZ] = 0;
	    DoorInfo[id][ddInteriorA] = 0;
	    DoorInfo[id][ddIntVW] = 0;
	    DoorInfo[id][ddInt] = 0;
	    DoorInfo[id][ddExteriorX] = 0;
	    DoorInfo[id][ddExteriorY] = 0;
	    DoorInfo[id][ddExteriorZ] = 0;
	    DoorInfo[id][ddExteriorA] = 0;
	    DoorInfo[id][ddIntVW] = 0;
	    DoorInfo[id][ddInt] = 0;
	    DoorInfo[id][ddColor] = 0;
	    DoorInfo[id][ddAdmin] = 0;
	    DoorInfo[id][ddLevel] = 0;
	    DoorInfo[id][ddPickupType] = 0;
	    DoorInfo[id][DoorExist] = 0;
	    
		new ottquery[ 256 ];
		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-doors` SET `dExtX` = '0.0', `dExtY` = '0.0', `dExtZ` = '0.0', `dIntX` = '0.0', `dIntY` = '0.0', `dIntZ` = '0.0', `InUse` = '0' WHERE `dID` = '%d'", id);
	 	mysql_tquery(mysql, ottquery, "", "");

		SCM(playerid,COLOR_YELLOW,"Door has been deleted.");
		new strings[128];
  		format(strings,sizeof(strings), "AdmWarn(%i): %s has deleted door: %d",PlayerInfo[playerid][pAdmin],GetName(playerid), id);
	 	SendAdminMessage(COLOR_YELLOW, strings);
	 	LoadDoors();
	 	
	}
	return 1;
}

LEANCMD:(dnext)
{
    if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
    new input[32];
    for(new index = 1; index < MAX_DOORS; index++)
    {
        if(index != 0)
        {
			if(DoorInfo[index][DoorExist] == 0)
			{
			    format(input,sizeof(input),"Next Available Door ID: %d.",index);
			    SendClientMessage(playerid,COLOR_YELLOW, input);
				break;
			}
		}
	}
	return 1;
}

LEANCMD:(dname)
{
    if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
    new input[32],id, leanquery[128];
    if(sscanf(params,"is[32]", id, input)) return SCM(playerid,COLOR_YELLOW,"USAGE: /dname [doorID] [text(DOOR_NAME) = write DELETE for no name]");
    if(id < 0 || id > MAX_DOORS) return SCM(playerid,COLOR_YELLOW,"Door id must be from 0 till 1000");

    if(DoorInfo[id][DoorExist] == 0) return SCM(playerid, COLOR_YELLOW," Door does not exist!");

    if (strcmp("DELETE", input, true, 6) == 0)
    {
   		DoorInfo[id][ddName] = input;
   		strdel(DoorInfo[id][ddName], 0, 32); // string is now "this"
		mysql_format(mysql, leanquery, sizeof(leanquery), "UPDATE `seb-doors` SET `dName` = '%s' WHERE `dID` = '%d'", DoorInfo[id][ddName], id);
		mysql_tquery(mysql, leanquery, "", "");
		format(leanquery, sizeof(leanquery), "AdmWarn(%i): %s has deleted the name of door (%d).",PlayerInfo[playerid][pAdmin],GetName(playerid), id,input);
		return 1;
    }

	DoorInfo[id][ddName] = input;
	mysql_format(mysql, leanquery, sizeof(leanquery), "UPDATE `seb-doors` SET `dName` = '%s' WHERE `dID` = '%d'", input, id);
	mysql_tquery(mysql, leanquery, "", "");
	format(leanquery, sizeof(leanquery), "AdmWarn(%i): %s has changed name of door (%d) to '%s'",PlayerInfo[playerid][pAdmin],GetName(playerid), id,input);

	LoadDoors();
	SendAdminMessage(COLOR_YELLOW, leanquery);
	return 1;
}

LEANCMD:(dgoto)
{
    if(PlayerInfo[playerid][pAdmin] < 1) return SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"Permission denied.");

    new id;
    if(sscanf(params, "i", id)) return SCM(playerid,COLOR_YELLOW, "USAGE: /dgoto [doorID]");
    if(id < 0 || id > MAX_DOORS) return SCM(playerid,COLOR_YELLOW, "Door id must be from 0 till 250");
    if(DoorInfo[id][DoorExist] == 0) return SCM(playerid, COLOR_YELLOW, " Door does not exist!");
    SetPlayerPosEx(playerid,DoorInfo[id][ddExteriorX],DoorInfo[id][ddExteriorY],DoorInfo[id][ddExteriorZ]);
    SetPlayerFacingAngle(playerid,DoorInfo[id][ddExteriorA]);
    SetPlayerVirtualWorld(playerid,DoorInfo[id][ddExtVw]);
    SetPlayerInterior(playerid,DoorInfo[id][ddExtInt]);
    SCM(playerid,COLOR_YELLOW,"You have been teleported !");
	return 1;
}








LEANCMD:(doorshout)
{
  return cmd_ds(playerid, params);
}

LEANCMD:(sa)
{
  return cmd_stopanim(playerid, params);
}

LEANCMD:(ds)
{
      new string[MAX_PLAYER_NAME + 155];
      if(sscanf(params, "s[179]", params)) return SendClientMessage(playerid, COLOR_GREY,"/doorshout [Text]");
      format(string,sizeof(string), "%s says (Door Shout): %s", GetICMame(playerid), params);
      for(new index = 0; index < sizeof(DoorInfo); index++)
      {
          if(IsPlayerInRangeOfPoint(playerid,3.0,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ]))
          {
     		  SendTextMessage(playerid, string);
              EachPlayer(i)
              {
              		if(IsPlayerInRangeOfPoint(i,70.0,DoorInfo[index][ddInteriorX],DoorInfo[index][ddInteriorY],DoorInfo[index][ddInteriorZ]) && GetPlayerVirtualWorld(i) == DoorInfo[index][ddIntVW])
              		{
                    	SendPlayerMessage(i, COLOR_FADE1, string);
              		}
			  }
			  return 1;
		  }
		  else if(IsPlayerInRangeOfPoint(playerid,5.0,DoorInfo[index][ddInteriorX],DoorInfo[index][ddInteriorY],DoorInfo[index][ddInteriorZ]))
		  {
   	          SendTextMessage(playerid, string);
              EachPlayer(i)
              {
              		if(IsPlayerInRangeOfPoint(i,20.0,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ]))
              		{
                    		SendPlayerMessage(i, COLOR_FADE1, string);
              		}
			  }
			  return 1;
		  }
	  }
      return SCM(playerid, COLOR_LIGHTRED, "You are not near a door.");
}


LEANCMD:(ddo)
{
      new string[MAX_PLAYER_NAME + 155];
      if(sscanf(params, "s[179]", params)) return SendClientMessage(playerid, COLOR_GREY,"USAGE: /ddo [Door /do]");
      format(string,sizeof(string), "[Door] * %s ((%s))",params, GetICMame(playerid));
      for(new index = 0; index < sizeof(DoorInfo); index++)
      {
          if(IsPlayerInRangeOfPoint(playerid,3.0,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ]) && GetPlayerInterior(playerid) == DoorInfo[index][ddExtInt])
          {
 			  SendDdoMessage(playerid, string);
              EachPlayer(i)
              {
              		if(IsPlayerInRangeOfPoint(i,90.0,DoorInfo[index][ddInteriorX],DoorInfo[index][ddInteriorY],DoorInfo[index][ddInteriorZ]) && GetPlayerVirtualWorld(i) == DoorInfo[index][ddIntVW])
              		{
                    	SendPlayerMessage(i, COLOR_PURPLE, string);
              		}
			  }
			  return 1;
		  }
		  else if(IsPlayerInRangeOfPoint(playerid,5.0,DoorInfo[index][ddInteriorX],DoorInfo[index][ddInteriorY],DoorInfo[index][ddInteriorZ]))
		  {
 			  SendDdoMessage(playerid, string);
              EachPlayer(i)
              {
              		if(IsPlayerInRangeOfPoint(i,20.0,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ]))
              		{
                    		SendPlayerMessage(i, COLOR_PURPLE, string);
              		}
			  }
		  }
		  return 1;
	  }
      return SCM(playerid, COLOR_LIGHTRED, "You are not near a door.");
}




CMD:knock(playerid, params[])
{
      new string[128];
      format(string,sizeof(string), "%s knocks on the door.", GetICMame(playerid));
      ProxDetector(20.0, playerid, string,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
      for(new index = 0; index < sizeof(DoorInfo); index++)
      {
          if(IsPlayerInRangeOfPoint(playerid,3.0,DoorInfo[index][ddExteriorX],DoorInfo[index][ddExteriorY],DoorInfo[index][ddExteriorZ]) && GetPlayerInterior(playerid) == DoorInfo[index][ddExtInt])
          {
              EachPlayer(i)
              {
              	if(IsPlayerInRangeOfPoint(i,70.0,DoorInfo[index][ddInteriorX],DoorInfo[index][ddInteriorY],DoorInfo[index][ddInteriorZ]))
              	{
                    SendClientMessage(i, COLOR_PURPLE, "[DOOR] KNOCK KNOCK KNOCK!");
              	}
			  }
		  }
	  }

      return 1;
}





//--------------------------------------------------------[ZCMD / Dynamic Doors]--------------------------------------------------------------------











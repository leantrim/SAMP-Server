/* TO BE REMOVED! */
#include <a_samp>
#include <zcmd>
#include <sscanf2>
#include <a_mysql>
#define COLOR_WHITE 0xFFFFFFAA
#define COLOR_LIGHTRED 0xFF6347AA
#define COL_YELLOW "{FFFF00}"
#define COL_WHITE "{FFFFFF}"
/* TO BE REMOVED! */

#define NEXT_PAGE_SLOT 50

//Dialog ID's
#define D_CLOTHES 1000
#define D_BUY_CLOTHES 1001

//Dialog Stats
#define ON_CLOTHES_LIST 500
#define ON_CLOTHES_NONE 501
#define ON_CLOTHES_CHOSE 502
#define ON_CLOTHES_BONE 503
#define ON_CLOTHES_DUTY 504

#define ON_CLOTHES_BUY 504


/**************************************************************************************/
#define MAX_MODELS 5

enum _PLAYER_MODELS
{
	cID,
	cModelID,
	cBoneID,
	Float:cOffsetX,
	Float:cOffsetY,
	Float:cOffsetZ,
	Float:cRotX,
	Float:cRotY,
	Float:cRotZ,
	Float:cScaleX,
	Float:cScaleY,
	Float:cScaleZ,
	enabled,
	bool:cOn,
}

new ClothesInfo[MAX_PLAYERS][MAX_MODELS][_PLAYER_MODELS];
new dstr[500];
/**************************************************************************************/

enum _MODELS_INFO
{
	modelID,
	modelName[128],
	modelPrice,
	modelBone
}

new ModelsInfo[][_MODELS_INFO] = {
{18636, "Police Cap", 1000, 2},
{19100, "Sheriff Hat", 1000, 2},
{19141, "Helmet", 1000, 2},
{19142, "Armor", 5000, 1},
{18641, "Flashlight", 500, 5},
{19138, "Police Glasses", 500, 2},
{19139, "Police Glasses2", 500, 2},
{19140, "Police Glasses3", 500, 2},
{18637, "Police Shield", 2000, 5}
};

/**************************************************************************************/


stock LoadPlayerClothes(playerid)
{
	new query[500];
	format(query, sizeof(query), "SELECT * FROM `seb-clothes` WHERE `holder` = '%d'", PlayerInfo[playerid][userid]);
	mysql_function_query(1, query, true, "OnClothesLoad", "i", playerid);
}

forward OnClothesLoad(playerid);
public OnClothesLoad(playerid)
{
	new rows, fields;
	cache_get_data(rows, fields);
	if(rows)
	{
		for(new i = 0; i < rows; i++)
		{
			ClothesInfo[playerid][i][cID] = cache_get_row_int(i, 0);
			ClothesInfo[playerid][i][cModelID] = cache_get_row_int(i, 2);
			ClothesInfo[playerid][i][cBoneID] = cache_get_row_int(i, 3);
			ClothesInfo[playerid][i][cOffsetX] = cache_get_row_float(i, 4);
			ClothesInfo[playerid][i][cOffsetY] = cache_get_row_float(i, 5);
			ClothesInfo[playerid][i][cOffsetZ] = cache_get_row_float(i, 6);
			ClothesInfo[playerid][i][cRotX] = cache_get_row_float(i, 7);
			ClothesInfo[playerid][i][cRotY] = cache_get_row_float(i, 8);
			ClothesInfo[playerid][i][cRotZ] = cache_get_row_float(i, 9);
			ClothesInfo[playerid][i][cScaleX] = cache_get_row_float(i, 10);
			ClothesInfo[playerid][i][cScaleY] = cache_get_row_float(i, 11);
			ClothesInfo[playerid][i][cScaleZ] = cache_get_row_float(i, 12);
			ClothesInfo[playerid][i][enabled] = cache_get_row_int(i, 13);
			ClothesInfo[playerid][i][cOn] = true;
		}
	}
	return 1;
}

public OnPlayerConnect(playerid)
{
	LoadPlayerClothes(playerid);
	return 1;
}



public OnPlayerDisconnect(playerid, reason)
{
	SavePlayerClothes(playerid);
	return 1;
}


public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	new status = GetPVarInt(playerid, "DialogStatus");
	if(dialogid == D_CLOTHES)
	{
		switch(status)
		{
			case ON_CLOTHES_LIST:
			{
				if(response)
				{
					new i = listitem;
					if(!ClothesInfo[playerid][i][cOn])
					{
						ShowClothingDialog(playerid, D_CLOTHES, DIALOG_STYLE_MSGBOX, "Clothing List", "Empty index...", "<<<", "", ON_CLOTHES_NONE);
					}
					else
					{
						SetPVarInt(playerid, "IndexChose", i);
						ClothesEditDialog(playerid, i);
					}
				}
			}
			case ON_CLOTHES_NONE:
			{
				if(response || !response)
				{
					DisplayClothing(playerid);
				}
			}
			case ON_CLOTHES_CHOSE:
			{
				if(response)
				{
					new slot = GetPVarInt(playerid, "IndexChose");
					switch(listitem)
					{
						case 0:
						{
							EditClothing(playerid, slot);
						}
						case 1:
						{
							ShowClothingDialog(playerid, D_CLOTHES, DIALOG_STYLE_LIST, "Change The Bone Slot", "Spine\nHead\nLeft Upper Arm\nRight Upper Arm\nLeft Hand\nRight Hand\nLeft Thigh\nRight Thigh\nLeft Food\nRight Foot\nRight Calf\nLeft Calf\nLeft Forearm\nRight forearm\nLeft Clavicle\nRight Clavicle\nNeck\nJaw", "Select", "<<<", ON_CLOTHES_BONE);
						}
						case 2:
						{
							PlaceClothing(playerid, slot);
							ClothesEditDialog(playerid, slot);
						}
						case 3:
						{
						    if(ClothesInfo[playerid][slot][enabled] == 0)
						    {
						        SendClientMessage(playerid, COLOR_LIGHTRED, "You have ENABLED this item to be put on automaticly on /duty");
          						ClothesInfo[playerid][slot][enabled] = 1;
					            ClothesEditDialog(playerid, slot);
					            UpdatePlayerToy(playerid, slot);
					            return 1;
							}
			    			if(ClothesInfo[playerid][slot][enabled] == 1)
						    {
						        SendClientMessage(playerid, COLOR_LIGHTRED, "You have DISABLED this item to be put on automaticly on /duty");
          						ClothesInfo[playerid][slot][enabled] = 0;
					            ClothesEditDialog(playerid, slot);
					            UpdatePlayerToy(playerid, slot);
					            return 1;
							}
						}
					}
					
				}
				else
				{
					DisplayClothing(playerid);
				}
			}
			case ON_CLOTHES_BONE:
			{
				new index = GetPVarInt(playerid, "IndexChose");
				if(response)
				{
					new bone = listitem + 1, msg[128];
					format(msg, sizeof(msg), "You have adjusted your clothing index %d to bone %s.", index, GetBoneName(bone));
					SendClientMessage(playerid, COLOR_WHITE, msg);
					ClothesInfo[playerid][index][cBoneID] = bone;
					if(IsPlayerAttachedObjectSlotUsed(playerid, index))
					{
						ReplaceClothing(playerid, index);
					}
					ClothesEditDialog(playerid, index);
				}
				else
				{
					ClothesEditDialog(playerid, index);
				}
			}
		}
	}
	/******************************************************************************/
	if(dialogid == D_BUY_CLOTHES)
	{
		switch(status)
		{
			case ON_CLOTHES_BUY:
			{
				if(response)
				{
					new slot = GetPVarInt(playerid, "FromSlot");
					if(listitem != NEXT_PAGE_SLOT)
					{
						new i = slot + listitem;
						new price = ModelsInfo[i][modelPrice];
						new freeslot = GetFreeSlot(playerid);
						if(freeslot != -1)
						{
						        if(GetPlayerMoney(playerid) <= price) SendClientMessage(playerid, COLOR_LIGHTRED, "You cant afford this item but its on the server!");
								SendClientMessage(playerid, -1, "Hint: Use "COL_YELLOW"SPACE"COL_WHITE" to look around. Press "COL_YELLOW"ESC"COL_WHITE" to decline.");
								SetPVarInt(playerid, "SelectedItem", 1);
								SetPVarInt(playerid, "ItemIndex", i);
								SetPVarInt(playerid, "FreeSlot", freeslot);
								SetPlayerAttachedObject(playerid, freeslot, ModelsInfo[i][modelID], ModelsInfo[i][modelBone]);
								EditAttachedObject(playerid, freeslot);
						}
						else
						{
								SendClientMessage(playerid, COLOR_LIGHTRED, "Purchase failed, you do not possess any free slots.");
						}
					}
					else
					{
						ShowClothesDialog(playerid, slot + NEXT_PAGE_SLOT);
					}
				}
				else
				{
					DeletePVar(playerid, "FromSlot");
				}
			}
		}
	}
	return 1;
}

stock GetFreeSlot(playerid)
{
	for(new i = 0; i < MAX_MODELS; i++)
	{
		if(!ClothesInfo[playerid][i][cOn])
			return i;
	}
	return -1;
}

stock OnBuyClothes(playerid, index, model, bone, Float:fOffsetX, Float:fOffsetY, Float:fOffsetZ, Float:fRotX, Float:fRotY, Float:fRotZ, Float:fScaleX, Float:fScaleY, Float:fScaleZ)
{
	new query[500];
	format(query, sizeof(query), "INSERT INTO `seb-clothes` (holder, model, bone, offestx, offesty, offestz, rotx, roty, rotz, scalex, scaley, scalez, enabled) VALUES ('%d', %d, %d, %f, %f, %f, %f, %f, %f, %f, %f, %f, 0)",
	PlayerInfo[playerid][userid], model, bone, fOffsetX, fOffsetY, fOffsetZ, fRotX, fRotY, fRotZ, fScaleX, fScaleY, fScaleZ);
 	mysql_function_query(1, query, true, "OnFinishPurchase", "id", playerid, index);
 //mysql_tquery(mysql, leanquery, "", "");
}

forward OnFinishPurchase(playerid, index);
public OnFinishPurchase(playerid, index)
{
	ClothesInfo[playerid][index][cID] = cache_insert_id(1);
	return 1;
}

stock ClothesEditDialog(playerid, index)
{
	if(IsPlayerAttachedObjectSlotUsed(playerid, index))
	{
		ShowClothingDialog(playerid, D_CLOTHES, DIALOG_STYLE_LIST, "Clothing List", "Adjust The Item\nChange Bone Slot\nTake Off\nEnable / Disable on {8D8DFF}/duty", "Select", "<<<", ON_CLOTHES_CHOSE);
	}
	else
	{
		ShowClothingDialog(playerid, D_CLOTHES, DIALOG_STYLE_LIST, "Clothing List", "Adjust The Item\nChange Bone Slot\nPlace On\nEnable / Disable on {8D8DFF}/duty", "Select", "<<<", ON_CLOTHES_CHOSE);
	}
}

public OnPlayerEditAttachedObject(playerid, response, index, modelid, boneid, Float:fOffsetX, Float:fOffsetY, Float:fOffsetZ, Float:fRotX, Float:fRotY, Float:fRotZ, Float:fScaleX, Float:fScaleY, Float:fScaleZ)
{
	if(GetPVarInt(playerid, "EditingNow") == 1)
	{
		new i = GetPVarInt(playerid, "EditingSlot");
		if(response)
		{
			ClothesInfo[playerid][i][cOffsetX] = fOffsetX;
			ClothesInfo[playerid][i][cOffsetY] = fOffsetY;
			ClothesInfo[playerid][i][cOffsetZ] = fOffsetZ;
			ClothesInfo[playerid][i][cRotX] = fRotX;
			ClothesInfo[playerid][i][cRotY] = fRotY;
			ClothesInfo[playerid][i][cRotZ] = fRotZ;
			ClothesInfo[playerid][i][cScaleX] = fScaleX;
			ClothesInfo[playerid][i][cScaleY] = fScaleY;
			ClothesInfo[playerid][i][cScaleZ] = fScaleZ;
		}
		DeletePVar(playerid, "EditingSlot");
		DeletePVar(playerid, "EditingNow");
		ReplaceClothing(playerid, i);
	}
	if(GetPVarInt(playerid, "SelectedItem") == 1 && GetPVarInt(playerid, "EditingNow") == 0)
	{
		new i = GetPVarInt(playerid, "ItemIndex");
		new slot = GetPVarInt(playerid, "FreeSlot");
		if(response)
		{
		    new msg[128];
			OnBuyClothes(playerid, slot, ModelsInfo[i][modelID], ModelsInfo[i][modelBone], fOffsetX, fOffsetY, fOffsetZ, fRotX, fRotY, fRotZ, fScaleX, fScaleY, fScaleZ);
			GivePlayerMoney(playerid, -ModelsInfo[i][modelPrice]);
			format(msg, sizeof(msg), "You have successfully purchased a {FFFF00}%s{FFFFFF} for ${FFFF00}%d", ModelsInfo[i][modelName], ModelsInfo[i][modelPrice]);
			SendClientMessage(playerid, -1, msg);
			ClothesInfo[playerid][slot][cModelID] = ModelsInfo[i][modelID];
			ClothesInfo[playerid][slot][cBoneID] = ModelsInfo[i][modelBone];
			ClothesInfo[playerid][slot][cOffsetX] = fOffsetX;
			ClothesInfo[playerid][slot][cOffsetY] = fOffsetY;
			ClothesInfo[playerid][slot][cOffsetZ] = fOffsetZ;
			ClothesInfo[playerid][slot][cRotX] = fRotX;
			ClothesInfo[playerid][slot][cRotY] = fRotY;
			ClothesInfo[playerid][slot][cRotZ] = fRotZ;
			ClothesInfo[playerid][slot][cScaleX] = fScaleX;
			ClothesInfo[playerid][slot][cScaleY] = fScaleY;
			ClothesInfo[playerid][slot][cScaleZ] = fScaleZ;
			ClothesInfo[playerid][slot][cOn] = true;
		}
		else
		{
			SendClientMessage(playerid, COLOR_LIGHTRED, "You've canceled the purchase of this item.");
			RemovePlayerAttachedObject(playerid, index);
		}
		DeletePVar(playerid, "SelectedItem");
		DeletePVar(playerid, "ItemIndex");
		DeletePVar(playerid, "FreeSlot");
	}
	return 1;
}

CMD:loadclothes(playerid, params[])
{
    LoadPlayerClothes(playerid);
	return 1;
}
CMD:dutyt(playerid, params[])
{
    for(new i = 0; i < MAX_MODELS; i++)
    {
		if(ClothesInfo[playerid][i][enabled] == 1)
		{
		    ReplaceClothing(playerid, i);
		}
		else
		{
		    RemoveClothing(playerid, i);
		}
	}
	SendClientMessage(playerid, COLOR_LIGHTRED, "HQ** YOU NOW DUTY TING ** XD!");
	return 1;
}


CMD:clothing(playerid, params[])
{
	new option[11], secoption, msg[128];
	if(GetPVarInt(playerid, "SelectedItem") == 1)
		return SendClientMessage(playerid, COLOR_LIGHTRED, "Please finish the current operation.");
	if(sscanf(params, "s[11]D(-1)", option, secoption))
	{
		SyntaxMSG(playerid, "/clothing [place | adjust | drop] - /buyclothes to buy a clothing object.");
		DisplayClothing(playerid);
		return 1;
	}
	else if(!strcmp(option, "place", true))
	{
		new slot;
		if(sscanf(params, "{s[7]}d", slot))
		{
			SyntaxMSG(playerid, "/clothing place [slot]");
			for(new i = 0; i < MAX_MODELS; i++)
			{
				if(ClothesInfo[playerid][i][cOn])
				{
					format(msg, sizeof(msg), "%d. %s", i, GetModelName(ClothesInfo[playerid][i][cModelID]));
					SendClientMessage(playerid, -1, msg);
				}
				else
				{
					format(msg, sizeof(msg), "%d is emty.", i);
					SendClientMessage(playerid, -1, msg);
				}
			}
			return 1;
		}
		if(slot > MAX_MODELS || slot < 0) return SendClientMessage(playerid, -1, "Invalid slot.");
		if(!ClothesInfo[playerid][slot][cOn]) return SendClientMessage(playerid, -1, "No such item.");
		PlaceClothing(playerid, slot);
	}
	else if(!strcmp(option, "adjust", true))
	{
		new slot;
		if(sscanf(params, "{s[7]}d", slot)) return SyntaxMSG(playerid, "/clothing adjust [slot]");
		if(slot > MAX_MODELS || slot < 0) return SendClientMessage(playerid, -1, "Invalid slot.");
		if(!ClothesInfo[playerid][slot][cOn]) return SendClientMessage(playerid, -1, "No such item.");
		EditClothing(playerid, slot);
	}
	else if(!strcmp(option, "drop", true))
	{
		new slot;
		if(sscanf(params, "{s[7]}d", slot)) return SyntaxMSG(playerid, "/clothing drop [slot]");
		if(slot > MAX_MODELS || slot < 0) return SendClientMessage(playerid, -1, "Invalid slot.");
		if(!ClothesInfo[playerid][slot][cOn]) return SendClientMessage(playerid, -1, "No such item.");
		format(msg, sizeof(msg), "You have dropped your %s.", GetModelName(ClothesInfo[playerid][slot][cModelID]));
		SendClientMessage(playerid, -1, msg);
		RemoveFromSlot(playerid, slot);
	}
	else
	{
		SendClientMessage(playerid, COLOR_LIGHTRED, "Invalid parameter.");
	}
	return 1;
}

stock ShowClothesDialog(playerid, fromslot)
{
	new string[2000], msg[128];
	for(new i = fromslot; i < fromslot + NEXT_PAGE_SLOT; i++)
	{
		if( i < sizeof( ModelsInfo ) )
		{
			format(msg, sizeof(msg), "%d. %s \t- \t{9ACD32}$%d\n", i+1, ModelsInfo[i][modelName], ModelsInfo[i][modelPrice]);
			strcat(string, msg);
		}
		if( i == ( fromslot + NEXT_PAGE_SLOT ) - 1 && i < sizeof( ModelsInfo ) )
			strcat(string, "Next Page\n");
	}
	SetPVarInt(playerid, "FromSlot", fromslot);
	ShowClothingDialog(playerid, D_BUY_CLOTHES, DIALOG_STYLE_LIST, "/buy itemID", string, "Ok", "Cancel", ON_CLOTHES_BUY);
}

CMD:buyclothes(playerid, params[])
{
	if(GetPVarInt(playerid, "SelectedItem") == 1)
		return SendClientMessage(playerid, COLOR_LIGHTRED, "Please finish the current operation.");
	ShowClothesDialog(playerid, 0);
	return 1;
}

stock SavePlayerClothes(playerid)
{
	for(new i = 0; i < MAX_MODELS; i++)
	{
		if(ClothesInfo[playerid][i][cOn])
		{
			UpdatePlayerToy(playerid, i);
		}
	}
	return 1;
}

stock UpdatePlayerToy(playerid, slot)
{
	new query[500];
	format(query, sizeof(query), "UPDATE `seb-clothes` SET `bone` = %d, `offestx` = %f, `offesty` = %f, `offestz` = %f, `rotx` = %f, `roty` = %f, `rotz` = %f, `scalex` = %f, `scaley` = %f, `scalez` = %f, `enabled` = %d WHERE `id` = %d",
	ClothesInfo[playerid][slot][cBoneID], ClothesInfo[playerid][slot][cOffsetX], ClothesInfo[playerid][slot][cOffsetY], ClothesInfo[playerid][slot][cOffsetZ], ClothesInfo[playerid][slot][cRotX], ClothesInfo[playerid][slot][cRotY], ClothesInfo[playerid][slot][cRotZ], ClothesInfo[playerid][slot][cScaleX], ClothesInfo[playerid][slot][cScaleY], ClothesInfo[playerid][slot][cScaleZ], ClothesInfo[playerid][slot][enabled], ClothesInfo[playerid][slot][cID]);
	mysql_function_query(1, query, false, "", "");
	return 1;
}

stock EditClothing(playerid, index)
{
    new msg[128];
	if(GetPVarInt(playerid, "EditingNow") == 1) return SendClientMessage(playerid, COLOR_LIGHTRED, "Please finish the current operation.");
	format(msg, sizeof(msg), "Editing now your {00FF00}%s{FFFFFF} - Index {00FF00}%d{FFFFFF}.", GetModelName(ClothesInfo[playerid][index][cModelID]), index);
	SendClientMessage(playerid, -1, msg);
	SetPVarInt(playerid, "EditingSlot", index);
	SetPVarInt(playerid, "EditingNow", 1);
	if(!IsPlayerAttachedObjectSlotUsed(playerid, index))
	{
		SetPlayerAttachedObject(playerid, index, ClothesInfo[playerid][index][cModelID], ClothesInfo[playerid][index][cBoneID], ClothesInfo[playerid][index][cOffsetX], ClothesInfo[playerid][index][cOffsetY], ClothesInfo[playerid][index][cOffsetZ], ClothesInfo[playerid][index][cRotX], ClothesInfo[playerid][index][cRotY], ClothesInfo[playerid][index][cRotZ], ClothesInfo[playerid][index][cScaleX], ClothesInfo[playerid][index][cScaleY], ClothesInfo[playerid][index][cScaleZ]);
	}
	EditAttachedObject(playerid, index);
	return 1;
}

stock ReplaceClothing(playerid, index)
{
	RemovePlayerAttachedObject(playerid, index);
	SetPlayerAttachedObject(playerid, index, ClothesInfo[playerid][index][cModelID], ClothesInfo[playerid][index][cBoneID], ClothesInfo[playerid][index][cOffsetX], ClothesInfo[playerid][index][cOffsetY], ClothesInfo[playerid][index][cOffsetZ], ClothesInfo[playerid][index][cRotX], ClothesInfo[playerid][index][cRotY], ClothesInfo[playerid][index][cRotZ], ClothesInfo[playerid][index][cScaleX], ClothesInfo[playerid][index][cScaleY], ClothesInfo[playerid][index][cScaleZ]);
}

stock RemoveClothing(playerid, index)
{
	RemovePlayerAttachedObject(playerid, index);
}

stock PlaceClothing(playerid, index)
{
	new msg[128];
	if(IsPlayerAttachedObjectSlotUsed(playerid, index))
	{
		format(msg, sizeof(msg), "You have removed your {00FF00}%s{FFFFFF}.", GetModelName(ClothesInfo[playerid][index][cModelID]));
		SendClientMessage(playerid, -1, msg);
		RemovePlayerAttachedObject(playerid, index);
	}
	else
	{
		format(msg, sizeof(msg), "You have placed your {00FF00}%s{FFFFFF}.", GetModelName(ClothesInfo[playerid][index][cModelID]));
		SendClientMessage(playerid, -1, msg);
		SetPlayerAttachedObject(playerid, index, ClothesInfo[playerid][index][cModelID], ClothesInfo[playerid][index][cBoneID], ClothesInfo[playerid][index][cOffsetX], ClothesInfo[playerid][index][cOffsetY], ClothesInfo[playerid][index][cOffsetZ], ClothesInfo[playerid][index][cRotX], ClothesInfo[playerid][index][cRotY], ClothesInfo[playerid][index][cRotZ], ClothesInfo[playerid][index][cScaleX], ClothesInfo[playerid][index][cScaleY], ClothesInfo[playerid][index][cScaleZ]);
	}
	return 1;
}



stock DisplayClothing(playerid)
{
    new msg[128];
	for(new i = 0; i < MAX_MODELS; i++)
	{
		if(ClothesInfo[playerid][i][cOn])
		{
			format(msg, sizeof(msg), "%s (Index:%d)\n", GetModelName(ClothesInfo[playerid][i][cModelID]), i);
			strcat(dstr, msg);
		}

	}
	ShowClothingDialog(playerid, D_CLOTHES, DIALOG_STYLE_LIST, "What would you like to edit?", dstr, "Select", "<<", ON_CLOTHES_LIST);
	return 1;
}

stock ShowClothingDialog(playerid, dialogid, style, caption[], info[], button1[], button2[], status)
{
	SetPVarInt(playerid, "DialogStatus", status);
	ShowPlayerDialog(playerid, dialogid, style, caption, info, button1, button2);
	dstr = "";
	return 1;
}

stock GetModelName(model)
{
	new name[64];
	for(new i = 0; i < sizeof(ModelsInfo); i++)
	{
		if(model == ModelsInfo[i][modelID])
		{
			format(name, sizeof(name), "%s", ModelsInfo[i][modelName]);
		}
	}
	return name;
}

stock RemoveFromSlot(playerid, slot)
{
	new query[120];
	format(query, sizeof(query), "DELETE FROM `seb-clothes` WHERE `id` = %d", ClothesInfo[playerid][slot][cID]);
	mysql_function_query(1, query, true, "OnRemoveFromSlot", "id", playerid, slot);
}

forward OnRemoveFromSlot(playerid, slot);
public OnRemoveFromSlot(playerid, slot)
{
	ClothesInfo[playerid][slot][cOn] = false;
	ClothesInfo[playerid][slot][cModelID] = 0;
	ClothesInfo[playerid][slot][cBoneID] = 0;
	ClothesInfo[playerid][slot][cOffsetX] = 0.0;
	ClothesInfo[playerid][slot][cOffsetY] = 0.0;
	ClothesInfo[playerid][slot][cOffsetZ] = 0.0;
	ClothesInfo[playerid][slot][cRotX] = 0.0;
	ClothesInfo[playerid][slot][cRotY] = 0.0;
	ClothesInfo[playerid][slot][cRotZ] = 0.0;
	ClothesInfo[playerid][slot][cScaleX] = 0.0;
	ClothesInfo[playerid][slot][cScaleY] = 0.0;
	ClothesInfo[playerid][slot][cScaleZ] = 0.0;
	ClothesInfo[playerid][slot][enabled] = 0;
	RemovePlayerAttachedObject(playerid, slot);
	return 1;
}

stock ResetClothes(playerid)
{
	for(new i = 0; i < MAX_MODELS; i++)
	{
		if(ClothesInfo[playerid][i][cOn] == true)
		{
			RemoveFromSlot(playerid, i);
		}
	}
}

stock SyntaxMSG(playerid, message[])
{
	new msg[64];
	format(msg, sizeof(msg), "{AFAFAF}USAGE:{FFFFFF} %s", message);
	return SendClientMessage(playerid, -1, msg);
}

stock GetBoneName(boneid)
{
	new bone[64];
	switch(boneid)
	{
		case 1: bone = "Spine";
		case 2: bone = "Head";
		case 3: bone = "Left upper arm";
		case 4: bone = "Right upper arm";
		case 5: bone = "Left hand";
		case 6: bone = "Right hand";
		case 7: bone = "Left thigh";
		case 8: bone = "Right thigh";
		case 9: bone = "Left foot";
		case 10: bone = "Right foot";
		case 11: bone = "Right calf";
		case 12: bone = "Left calf";
		case 13: bone = "Left forearm";
		case 14: bone = "Right forearm";
		case 15: bone = "Left clavicle (shoulder)";
		case 16: bone = "Right clavicle (shoulder)";
		case 17: bone = "Neck";
		case 18: bone = "Jaw";
	}
	return bone;
}

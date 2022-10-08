/*
Weapon Object & Leg damage script by Lean*

*/

#include <WeaponScript>



stock AttachWeapon(playerid, weaponid)
{
	if(IsGunBig(weaponid))
	{
		new f = GetWSlotID(weaponid), c = weaponid;
		if(IsPlayerAttachedObjectSlotUsed(playerid, f))
		{
		    RemovePlayerAttachedObject(playerid, f);
		}

	    gGunInfo[playerid][c][gWeaponID] = weaponid;
     	new Float:x, Float:y, Float:z, Float:px, Float:py, Float:pz, Float:sx, Float:sy, Float:sz;
        GetGunPosInfo(playerid, c, x, y, z, px, py, pz, sx, sy, sz);

     	if(gGunInfo[playerid][weaponid][gSaved] == 0)
     	{
            SetDefaultGunPos(playerid, weaponid);
			GetGunPosInfo(playerid, c, x, y, z, px, py, pz, sx, sy, sz);
            gGunInfo[playerid][c][gBoneID] = 1;
            SaveWeaponObject(playerid, weaponid);
     	}
     	gGunInfo[playerid][c][gStatus] = 1;
     	SetPlayerAttachedObject(playerid, f, GunObjects[weaponid], gGunInfo[playerid][c][gBoneID], x, y, z, px, py, pz, sx, sy, sz);
	}
	return 1;
}


stock SaveWeaponObject(playerid, weaponid)
{
	new leanquery[1200];
	if(gGunInfo[playerid][weaponid][gSaved] == 1)
	{
		format(leanquery, sizeof(leanquery), "UPDATE `weapons` SET `boneid` = %d, `x` = %f, `y` = %f, `z` = %f, `px` = %f, `py` = %f, `pz` = %f, `sx` = %f, `sy` = %f, `sz` = %f WHERE `holder` = '%s' AND `weaponid` = %d",
		gGunInfo[playerid][weaponid][gBoneID],
		gGunInfo[playerid][weaponid][gPos][0],
		gGunInfo[playerid][weaponid][gPos][1],
		gGunInfo[playerid][weaponid][gPos][2],
		gGunInfo[playerid][weaponid][gPos][3],
		gGunInfo[playerid][weaponid][gPos][4],
		gGunInfo[playerid][weaponid][gPos][5],
		gGunInfo[playerid][weaponid][gPos][6],
		gGunInfo[playerid][weaponid][gPos][7],
		gGunInfo[playerid][weaponid][gPos][8],
		GetName(playerid),
		weaponid);
		mysql_function_query(1, leanquery, false, "", "");
		return 1;
	}

	if(gGunInfo[playerid][weaponid][gSaved] == 0)
	{
		mysql_format(mysql, leanquery, sizeof(leanquery), "INSERT INTO `weapons` (`weaponid`, `holder`) VALUES ('%d', '%s')",weaponid, GetName(playerid));
 		mysql_function_query(1, leanquery, false, "", "");
 		gGunInfo[playerid][weaponid][gSaved] = 1;
 		SaveWeaponObject(playerid, weaponid);
	}
	return 1;
}


// Commands

strtok(const string[], &index)
{
	new length = strlen(string);
	while ((index < length) && (string[index] <= ' '))
	{
		index++;
	}

	new offset = index;
	new result[20];
	while ((index < length) && (string[index] > ' ') && ((index - offset) < (sizeof(result) - 1)))
	{
		result[index - offset] = string[index];
		index++;
	}
	result[index - offset] = EOS;
	return result;
}

CMD:weapon( playerid, cmdtext[] )
{
		new idx, tmp[128];
        tmp = strtok(cmdtext,idx);
        new tmp2[64];
        tmp2 = strtok(cmdtext,idx);
        if(!strlen(tmp) || !strlen(tmp2) ) return SendClientMessage(playerid, COLOR_LIGHTRED,"USAGE: /weapon [bone/adjust] [weaponid]");
        
        new gun = strval(tmp2);
        
        new f = GetWSlotID(gun);
        

	    if(!strcmp(tmp, "bone", true))
	    {
	        editinggun[playerid] = gun;
	    	ShowPlayerDialog(playerid, G_BONE_DIALOG, DIALOG_STYLE_LIST, "Change The Bone Slot", "Spine\nHead\nLeft Upper Arm\nRight Upper Arm\nLeft Hand\nRight Hand\nLeft Thigh\nRight Thigh\nLeft Food\nRight Foot\nRight Calf\nLeft Calf\nLeft Forearm\nRight forearm\nLeft Clavicle\nRight Clavicle\nNeck\nJaw", "Select", "<<<");
	    }
	    if(!strcmp(tmp, "adjust", true))
	    {
			if(!IsPlayerAttachedObjectSlotUsed(playerid, f)) return SendClientMessage(playerid, COLOR_LIGHTRED, "WEAPON: "COL_WHITE"You need to have the gun you wanna edit attached to you.");
			EditAttachedObject(playerid, f);
			editinggun[playerid] = gun;
		}
        return 1;
}

// Callbacks


public LoadWeaponObjects(playerid)
{
	new query[128];
	format(query, sizeof(query), "SELECT * FROM `weapons` WHERE `holder` = '%s'",GetName(playerid) );
	mysql_tquery(mysql, query, "OnWeaponsLoad", "d", playerid);
    return 1;
}



public OnWeaponsLoad(playerid)
{
	    new rows, fields;
		cache_get_data(rows, fields, mysql);
		if(rows)
		{
		    for(new i = 0; i < rows; i++)
		    {
		        new weaponid = cache_get_row_int(i, 0);
		    	gGunInfo[playerid][weaponid][gWeaponID] = weaponid,
				gGunInfo[playerid][weaponid][gBoneID] = cache_get_row_int(i, 1),
				gGunInfo[playerid][weaponid][gPos][0] = cache_get_row_float(i, 2),
				gGunInfo[playerid][weaponid][gPos][1] = cache_get_row_float(i, 3),
				gGunInfo[playerid][weaponid][gPos][2] = cache_get_row_float(i, 4),
				gGunInfo[playerid][weaponid][gPos][3] = cache_get_row_float(i, 5),
				gGunInfo[playerid][weaponid][gPos][4] = cache_get_row_float(i, 6),
				gGunInfo[playerid][weaponid][gPos][5] = cache_get_row_float(i, 7),
				gGunInfo[playerid][weaponid][gPos][6] = cache_get_row_float(i, 8),
				gGunInfo[playerid][weaponid][gPos][7] = cache_get_row_float(i, 9),
				gGunInfo[playerid][weaponid][gPos][8] = cache_get_row_float(i, 10);
				
				gGunInfo[playerid][weaponid][gSaved] = 1;
			}
 
		}
		return 1;
}



public OnFilterScriptInit()
{
    mysql = mysql_connect(sqlhost, sqluser, sqldb, sqlpass);


	print("\n--------------------------------------");
	print(" Visible weapons & leg damage script by Lean.");
	print(" Script Auther: Lean, start date 2016-04-25.");
	print("--------------------------------------\n");
	updatetimer = SetTimer("OnPlayerUpdateEx", UpdateTimer, 1);
	EachPlayer(playerid)
	{
	    LoadWeaponObjects(playerid);
	}
	return 1;
}

public OnFilterScriptExit()
{
	KillTimer(updatetimer);
	printf("Visible weapon script unloaded.");
	return 1;
}


public OnPlayerConnect(playerid)
{
    LoadWeaponObjects(playerid);
}

public OnPlayerUpdateEx()
{
    EachPlayer(x)
	{
 		WeaponUpdate(x);
	}
	return 1;
}


public WeaponUpdate(playerid)
{
	for (new c = 0; c < 13; c++)
 	{
 	    new weaponid, ammo;
  		GetPlayerWeaponData(playerid, c, weaponid, ammo);

    	if (weaponid != 0 && ammo != 0)
     	{
     	    if(IsGunBig(weaponid))
     	    {
				if(editinggun[playerid] == weaponid) return 1;
				if(GetPlayerWeapon(playerid) != weaponid)
				{
                    if(gGunInfo[playerid][weaponid][gStatus] == 0)
                    {
				    	AttachWeapon(playerid, weaponid);
					}
				}
				else
				{
				    if(gGunInfo[playerid][weaponid][gStatus] == 1)
				    {
				    	RemoveAttachedWeapon(playerid, weaponid);
				    }
				}
			}
      	}

	}
	for (new c = 0; c < MAX_WEAPONS; c++)
	{
	    if(gGunInfo[playerid][c][gStatus] == 1)
	    {
	        new d = GetWSlotID(gGunInfo[playerid][c][gWeaponID]);
	        new weaponid, ammo;
	        GetPlayerWeaponData(playerid, d, weaponid, ammo);
	        if(ammo == 0)
	        {
	            RemoveAttachedWeapon(playerid, c);
	        }
	    
	    }
	}
	return 1;
}



public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == G_BONE_DIALOG)
	{
	    if(!response)
	    {
	        editinggun[playerid] = 0;
	    }
	    new bone = listitem + 1, dString[128], Float:x, Float:y, Float:z, Float:px, Float:py, Float:pz, Float:sx, Float:sy, Float:sz,
		c = editinggun[playerid], f = GetWSlotID(c);
		format(dString, sizeof(dString), "You have adjusted your weapon bone to %s.", GetBoneName(bone));
	    SendClientMessage(playerid, -1, dString);
	    gGunInfo[playerid][editinggun[playerid]][gBoneID] = bone;
        GetGunPosInfo(playerid, c, x, y, z, px, py, pz, sx, sy, sz);
     	SetPlayerAttachedObject(playerid, f, GunObjects[c], gGunInfo[playerid][c][gBoneID], x, y, z, px, py, pz, sx, sy, sz);
	    SaveWeaponObject(playerid, editinggun[playerid]);
	    editinggun[playerid] = 0;
	    return 1;
	}
	
	return 1;

}



public OnPlayerEditAttachedObject(playerid, response, index, modelid, boneid, Float:fOffsetX, Float:fOffsetY, Float:fOffsetZ, Float:fRotX, Float:fRotY, Float:fRotZ, Float:fScaleX, Float:fScaleY, Float:fScaleZ)
{
    if(response)
    {
        SendClientMessage(playerid, -1, "Attached object edition saved.");
        new c = editinggun[playerid];
        gGunInfo[playerid][c][gPos][0] = fOffsetX;
        gGunInfo[playerid][c][gPos][1] = fOffsetY;
        gGunInfo[playerid][c][gPos][2] = fOffsetZ;
        gGunInfo[playerid][c][gPos][3] = fRotX;
        gGunInfo[playerid][c][gPos][4] = fRotY;
        gGunInfo[playerid][c][gPos][5] = fRotZ;
        gGunInfo[playerid][c][gPos][6] = fScaleX;
        gGunInfo[playerid][c][gPos][7] = fScaleY;
        gGunInfo[playerid][c][gPos][8] = fScaleZ;
        
        gGunInfo[playerid][c][gBoneID] = boneid;
        editinggun[playerid] = 0;
        SaveWeaponObject(playerid, c);
    }
    else
    {
    	SendClientMessage(playerid, COLOR_LIGHTRED, "WEAPON: position Aborted!");
    	new Float:x, Float:y, Float:z, Float:px, Float:py, Float:pz, Float:sx, Float:sy, Float:sz;
    	new c = editinggun[playerid];
        GetGunPosInfo(playerid, c, x, y, z, px, py, pz, sx, sy, sz);
        new f = GetWSlotID(c);
     	SetPlayerAttachedObject(playerid, f, GunObjects[c], gGunInfo[playerid][c][gBoneID], x, y, z, px, py, pz, sx, sy, sz);
     	editinggun[playerid] = 0;
    }
    return 1;
}


// LEG DAMAGE SCRIPT
stock BreakLeg(playerid)
{
	SendClientMessage(playerid, COLOR_LIGHTRED, "You have been shot in the leg, you wont be able to run or jump");
	KillTimer(legtimer[playerid]);
	brokenleg[playerid] = 1;
	legtimer[playerid] = SetTimerEx( "BrokenLegFix", 90000, false, "i", playerid );
	return 1;
}
stock FixLeg(playerid)
{
    KillTimer(legtimer[playerid]);
    brokenleg[playerid] = 0;
    return 1;
}

public OnPlayerTakeDamage(playerid, issuerid, Float: amount, weaponid, bodypart)
{
	if(issuerid != INVALID_PLAYER_ID)
    {
		switch(bodypart)
		{
		    case 7, 8:
		    {
                BreakLeg(playerid);
		    }
		}
    }
	return 1;
}


public BrokenLegFix(playerid)
{
    FixLeg(playerid);
    return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{

	if(brokenleg[playerid] == 1)
	{
	    if(newkeys & KEY_JUMP && !(oldkeys & KEY_JUMP) )
	    {
		   	ApplyAnimation(playerid, "GYMNASIUM", "gym_jog_falloff",4.1,0,1,1,0,0);
		}
  		if(newkeys & KEY_SPRINT && !(oldkeys & KEY_SPRINT) )
	    {
		   	ApplyAnimation(playerid, "PED", "FALL_collapse", 4.1,0,1,1,0,0);
		}
	}

	return 1;
}

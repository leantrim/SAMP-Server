/* Criminal weapon loadout by Lean */


/* NOT TO BE INCLUDED !*/
#include <a_samp>
#include <a_mysql>
#include <zcmd>
#include <foreach>
#include <easydialog>

#define LEANCMD:(%1) CMD:%1(playerid, params[])


public OnFilterScriptInit()
{
	SendClientMessage(0, -1, "Crim Weapon Loadout sys v1.0 LOADED");
	return 1;
}

public OnFilterScriptExit()
{
	SendClientMessage(0, -1, "Crim Weapon Loadout UNLOADED");
	return 1;
}


/* NOT TO BE INCLUDED ^ (LINES ABOVE!) */

stock GetWLoad(weaponid)
{
	new weapon[24];
	if(weaponid == 0)
	{
		format(weapon,sizeof(weapon),"No Weapon Equiped!");
	}
    GetWeaponName(weaponid, weapon, 24);
    return weapon;
}


#define MAX_WEAPONS_LOADOUT 4

enum gCrimLoadOut
{
    WeaponID[MAX_WEAPONS_LOADOUT],
}

new gCrimLoad[MAX_PLAYERS][gCrimLoadOut];




#define WEAPON_MELEE 0
#define WEAPON_PISTOLS 1
#define WEAPON_SMG 2
#define WEAPON_RIFLES 3

stock ShowCrimLoadOut(playerid)
{

	new string[128];
	for(new i = 0; i < MAX_WEAPONS_LOADOUT; i++)
	{
	    if(!gCrimLoad[playerid][WeaponID][i])
	    {
	    	format(string, sizeof(string),"%s\n%d - No Weapon Equiped!",string, i);
		}
	    else
		format(string, sizeof(string),"%s\n%d - %s",string, i, GetWLoad(gCrimLoad[playerid][WeaponID][i]));
	}

	ShowDialog(playerid, Show:CrimLoad, DIALOG_STYLE_LIST, "Criminal Loadout", string, "Submit", "Cancel");

}


LEANCMD:(crimtest)
{
	new string[128];
	for(new i = 0; i < MAX_WEAPONS_LOADOUT; i++)
	{
	    if(gCrimLoad[playerid][WeaponID][i] != 0)
	    {
			format(string, sizeof(string),"%s given",GetWLoad(gCrimLoad[playerid][WeaponID][i]));
			SendClientMessage(playerid, -1,string);
			GivePlayerWeapon(playerid,gCrimLoad[playerid][WeaponID][i], 999);
		}
	}
	SendClientMessage(playerid, -1, "You are now on criminal duty!");
	return 1;

}


LEANCMD:(crimload)
{
    ShowCrimLoadOut(playerid);
	return 1;
}




/*

WEAPON_TYPES - WEAPON_MODEL
0 - Melee (Bat 5, Knife4, nightstick 3, katana8, golf club2)
1 - Pistols (Colt45, Silencer, Deagle)
2 - SMG's (MP5, UZI, TEC9)
3 - Rifle (AK, M4)

*/

Dialog:CrimLoad(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		switch(listitem)
		{
		    case WEAPON_MELEE:
		    {
		        ShowDialog(playerid, Show:gMelee, DIALOG_STYLE_LIST, "Crim LoadOut - Melee's", "Bat\nKnife\nNightstick\nKatana\nGolf Club", "Submit", "Cancel");
		    }
		    case WEAPON_PISTOLS:
		    {
		        ShowDialog(playerid, Show:gPistols, DIALOG_STYLE_LIST, "Crim LoadOut - Pistols", "Desert Eagle\nColt 45\nSilenced Pistol", "Submit", "Cancel");
		    }
		    case WEAPON_SMG:
		    {
		        ShowDialog(playerid, Show:gSMGs, DIALOG_STYLE_LIST, "Crim LoadOut - SMG's", "MP5\nUZI\nTEC9", "Submit", "Cancel");
		    }
		    case WEAPON_RIFLES:
		    {
		        ShowDialog(playerid, Show:gRifles, DIALOG_STYLE_LIST, "Crim LoadOut - Rifle's", "AK\nM4", "Submit", "Cancel");
		    }
		}
	}
	return 1;
}

Dialog:gRifles(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		switch(listitem)
		{
		    case 0:
		    {
	            gCrimLoad[playerid][WeaponID][WEAPON_RIFLES] = WEAPON_AK47;
		    }
		    case 1:
		    {
	            gCrimLoad[playerid][WeaponID][WEAPON_RIFLES] = WEAPON_M4;
		    }

		}
		new string[128];
		format(string, sizeof(string), "%s Choosen as a Rifle weapon.",GetWLoad(gCrimLoad[playerid][WeaponID][WEAPON_RIFLES]));
		SendClientMessage(playerid, -1, string);
		ShowCrimLoadOut(playerid);
 	}
    else ShowCrimLoadOut(playerid);
	return 1;
}


Dialog:gSMGs(playerid, response, listitem, inputtext[])
{
    if(response)
    {
		switch(listitem)
		{
		    case 0:
		    {
	            gCrimLoad[playerid][WeaponID][WEAPON_SMG] = WEAPON_MP5;
		    }
		    case 1:
		    {
	            gCrimLoad[playerid][WeaponID][WEAPON_SMG] = WEAPON_UZI;
		    }
		    case 2:
		    {
		        gCrimLoad[playerid][WeaponID][WEAPON_SMG] = WEAPON_TEC9;
		    }

		}
		new string[128];
		format(string, sizeof(string), "%s Choosen as a SMG weapon.",GetWLoad(gCrimLoad[playerid][WeaponID][WEAPON_SMG]));
		SendClientMessage(playerid, -1, string);
		ShowCrimLoadOut(playerid);
	}
    else ShowCrimLoadOut(playerid);
	return 1;
}



Dialog:gMelee(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		switch(listitem)
		{
		    case 0:
		    {
	            gCrimLoad[playerid][WeaponID][WEAPON_MELEE] = WEAPON_BAT;
		    }
		    case 1:
		    {
	            gCrimLoad[playerid][WeaponID][WEAPON_MELEE] = WEAPON_KNIFE;
		    }
		    case 2:
		    {
		        gCrimLoad[playerid][WeaponID][WEAPON_MELEE] = 3;
		    }
		    case 3:
		    {
		        gCrimLoad[playerid][WeaponID][WEAPON_MELEE] = WEAPON_KATANA;
		    }
		    case 4:
		    {
	            gCrimLoad[playerid][WeaponID][WEAPON_MELEE] = WEAPON_GOLFCLUB;
		    }
		}
		new string[128];
		format(string, sizeof(string), "%s Choosen as a melee weapon.",GetWLoad(gCrimLoad[playerid][WeaponID][WEAPON_MELEE]));
		SendClientMessage(playerid, -1, string);
		ShowCrimLoadOut(playerid);
	}
	else ShowCrimLoadOut(playerid);
	return 1;
}

Dialog:gPistols(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		switch(listitem)
		{
		    case 0:
		    {
	            gCrimLoad[playerid][WeaponID][WEAPON_PISTOLS] = WEAPON_DEAGLE;
		    }
		    case 1:
		    {
	            gCrimLoad[playerid][WeaponID][WEAPON_PISTOLS] = WEAPON_COLT45;
		    }
		    case 2:
		    {
		        gCrimLoad[playerid][WeaponID][WEAPON_PISTOLS] = WEAPON_SILENCED;
		    }

		}
		new string[128];
		format(string, sizeof(string), "%s Choosen as a pistol weapon.",GetWLoad(gCrimLoad[playerid][WeaponID][WEAPON_PISTOLS]));
		SendClientMessage(playerid, -1, string);
		ShowCrimLoadOut(playerid);
	}
	else ShowCrimLoadOut(playerid);
	return 1;
}



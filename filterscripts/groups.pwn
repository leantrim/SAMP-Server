/*
	******CellphoneSys By Lean*******
*/

//****START OF SCRIPT*****//

//****INCLUDES*****//
#include <a_samp>
#include <zcmd>
#include <sscanf2>
#include <foreach>
#include <streamer>

//****END OF INCLUDES*****//

//****DEFINES*****//
#define COLOR_YELLOW 0xFFFF00AA
#define COLOR_GREEN 0x33AA33AA
#define COLOR_WHITE -1
#define COLOR_TESTER 0xD53C2BC8
#define COL_ORANGE "{FF9900}"
#define COL_WHITE "{FFFFFF}"
#define COLOR_LIGHTRED 0xFF6347AA


stock randomEx(min, max)
{
    //Credits to y_less
    new rand = random(max-min)+min;
    return rand;
}


stock GetName(playerid)
{
	new name[MAX_PLAYER_NAME];
 	GetPlayerName( playerid, name, sizeof( name ) );
	return name;
}


stock GetICName( playerid )
{
	new name[MAX_PLAYER_NAME];
 	GetPlayerName( playerid, name, sizeof( name ) );
 	name[strfind(name, "_")] = ' ';
 	return name;
}


#define LEANCMD:(%1) CMD:%1(playerid, params[])







//GRAFFITI
#define ggVERSION "Graffiti V1"
#define PRESSED(%0) \
	(((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))
#define RELEASED(%0) \
	(((newkeys & (%0)) != (%0)) && ((oldkeys & (%0)) == (%0)))
#define    DIALOG_WELCOME 075
#define    DIALOG_SELECT 076
#define    DIALOG_INPUTGRAFF 077
#define    DIALOG_COLOR 078
#define    DIALOG_HAPPY 079
#define    DIALOG_GLIST 080
#define GRAFFDIALOG ShowPlayerDialog(playerid, DIALOG_SELECT, DIALOG_STYLE_LIST, "Graffiti Menu", "Enter Graffiti Text\nGraffiti List", "Select", "Exit");
#define GRAFFINPUT ShowPlayerDialog(playerid, DIALOG_INPUTGRAFF, DIALOG_STYLE_INPUT, "Graffiti", "Please Enter Graffiti text", "Continue", "Cancel");
#define GRAFFINPUTER ShowPlayerDialog(playerid, DIALOG_INPUTGRAFF, DIALOG_STYLE_INPUT, ""COL_WHITE"Graffiti", ""COL_RED"ERROR: No text was written \nPlease try again!", "Continue", "Cancel");
#define GRAFFCOLOR ShowPlayerDialog(playerid, DIALOG_COLOR, DIALOG_STYLE_LIST, "Color Menu", "{000000}Black\n{FFFFFF}White\n{F81414}Red\n{00FF22}Green\n{00CED1}Lightblue\n{C3C3C3}Grey", "Select", "Exit");
#define GRAFFHAPPY ShowPlayerDialog(playerid, DIALOG_HAPPY, DIALOG_STYLE_MSGBOX, "Graffiti Menu", "Please Enter Graffiti text", "Continue", "Cancel");
#define GRAFFLIST ShowPlayerDialog(playerid,DIALOG_GLIST,DIALOG_STYLE_LIST,"Graffiti List",string,"Ok","Cancel");

#define MAXGRAFFS 50

/*-------END OF INCLUDES/DEFINES-----------*/


/*
NEWS;
*
**
*/
new sprayammount[MAX_PLAYERS];
new POBJECT[MAX_PLAYERS];
new POBJECTN[MAX_PLAYERS][96];
new POBJECTC[MAX_PLAYERS][24];
new Float:XYZ[MAX_PLAYERS][6];
new GRAVEH[MAX_PLAYERS];
new spraytimer[MAX_PLAYERS];
new spraytimerch[MAX_PLAYERS];
new sprayammountch[MAX_PLAYERS];
new isveh[MAX_PLAYERS] = 0;
new sprays = 0;
new graffmenup[MAX_PLAYERS] = 0;
new creator[MAX_PLAYERS][MAX_PLAYER_NAME];
new gammount;
new spraytimerx[MAX_PLAYERS];

/*-------END OF NEWS-----------*/




//****ENUM****

enum graffInfo
{
	graffcreator[MAX_PLAYER_NAME],
	graffname[96],
	Float:posX,
	Float:posY,
	Float:posZ,
	Float:XYpos,
	Float:YYpos,
	Float:ZYpos,
	OBJECTID
}
new gInfo[MAXGRAFFS][graffInfo];




stock SaveGraffitis()
{
	return true;
}
stock LoadGraffitis()
{
	return true;
}

/*
FORWARDS;
*
**
*/
forward loadgraffs();
forward spraying(playerid);
forward sprayingch(playerid);
forward killgr(playerid);
forward creategraff(playerid);



/*-------END OF FORWARDS-----------*/


/*
CALLBACKS;
*
**
*/







public loadgraffs()
{

	for(new ID = 0; ID < MAXGRAFFS; ID++)
	{

			gInfo[ID][OBJECTID] = CreateDynamicObject( 19482, gInfo[ID][posX],gInfo[ID][posY],gInfo[ID][posZ], gInfo[ID][XYpos], gInfo[ID][YYpos], gInfo[ID][ZYpos], -1, 0, -1, 200 ); //Creating the object
   			SetDynamicObjectMaterialText( gInfo[ID][OBJECTID], 0, gInfo[ID][graffname], OBJECT_MATERIAL_SIZE_256x256, "Diploma", 25, 0, 0xFFFFFFFF, 0, 1 ); // Setting the object text with our choosen graffiti text
   			gammount ++;

	}
	return 1;
}



public creategraff( playerid )
{
	new v = randomEx(1000,999999);
	POBJECT[playerid] += v;
    DestroyDynamicObject( POBJECT[playerid] ); // Destroying old sprayobject
    POBJECT[playerid] = CreateDynamicObject( 19482, XYZ[playerid][0], XYZ[playerid][1], XYZ[playerid][2], XYZ[playerid][3], XYZ[playerid][4], XYZ[playerid][5], GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid), -1, 200 ); //Creating the object
	SetDynamicObjectMaterialText( POBJECT[playerid], 0, POBJECTN[playerid], OBJECT_MATERIAL_SIZE_256x256, "Diploma", 25, 0, 0xFFFFFFFF, 0, 1 ); // Setting the object text with our choosen graffiti text
	GameTextForPlayer( playerid, "~w~SPRAYED ]",5000,5 ); // SElf explainable?
	DeletePVar( playerid, "GraffitiCreating" ); // Deleting the PVAR afterwards
	sprayammount[playerid] = 0; // SEtting this var to 0, will explain what it is further down
	sprays ++;
	creator[playerid] = GetName(playerid);
	new string[20];
	
	
	new id;

	strmid(gInfo[id][graffname] , POBJECTN[playerid], 0, strlen(POBJECTN[playerid]), 32);
	gInfo[id][graffcreator] = GetName(playerid);
	gInfo[id][OBJECTID] = POBJECT[playerid];
	gInfo[id][posX] = XYZ[playerid][0];
	gInfo[id][posY] = XYZ[playerid][1];
	gInfo[id][posZ] = XYZ[playerid][2];
	gInfo[id][XYpos] = XYZ[playerid][3];
	gInfo[id][YYpos] = XYZ[playerid][4];
	gInfo[id][ZYpos] = XYZ[playerid][5];
	SaveGraffitis();
	LoadGraffitis();
	return 1;
}











public killgr(playerid)
{
    sprayammount[playerid] = 0;
   	DeletePVar( playerid,"GraffitiCreating" ); // Deleting the PVAR afterwards
	sprayammountch[playerid] = 0;
	graffmenup[playerid] = 0;
	return 1;
}



public spraying( playerid ) // This Callback gets called evrysecond
{
    if(IsPlayerInRangeOfPoint(playerid, 3.0,XYZ[playerid][0],XYZ[playerid][1], XYZ[playerid][2]))
    {
		sprayammount[playerid] ++; //Evry second it gets called player gets ONE point

		if( sprayammount[playerid] == sprayammountch[playerid] ) // If player reached his points
		{
			KillTimer( spraytimer[playerid] ); // We kill this timer as player reached his points
	    	creategraff( playerid ); // We now call creategraff and the graffiti will be created
	 		return 1;
		}
		new string[64];
		format( string, sizeof(string),"~g~SPRAYING~n~ ~r~] ~w~%d/%d",sprayammount[playerid], sprayammountch[playerid]); // <----
		GameTextForPlayer( playerid, string, 1000,5 );
		return 1;
	}
	else
	{
		GameTextForPlayer(playerid, "] ~r~Sorry, you are too far away\ngraffiti aborted. ~y~]",5000, 5);
		sprayammount[playerid] -= 2;
		killgr(playerid);
		return 1;
	}

}


public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{

	if (GetPVarInt(playerid, "GraffitiCreating") == 1 ) // CHeck if player is pressing FIRE key and if he have a positiv pvar on graffiticreating
	{
        if( GetPlayerWeapon(playerid) == 41 )
        {
		    if( PRESSED(KEY_FIRE) )
			{
				    KillTimer( spraytimerx[playerid] );
			}
			else if( RELEASED( KEY_FIRE ) )
			{
	   			KillTimer( spraytimer[playerid] ); // Killing the timer so it wont keep going
		    	sprayammount[playerid] --; // Removing one POINT of spray for releasing the fire button
		    	GameTextForPlayer( playerid,"~g~Please keep spraying!!",3000, 5 ); // <---
			}
		}
	}

}

forward startgraff(playerid);
public startgraff (playerid)
{
	new	Float:X[3];
	GetPlayerPos( playerid, X[0], X[1], X[2] ); // SAving players position// storing params in a format // storing text in a player callback
	POBJECT[playerid] = CreateObject( 19482, X[0], X[1], X[2], 0.0, 0.0, 0.0, 200 ); // Creating the graffiti for player
	SetObjectMaterialText(POBJECT[playerid], POBJECTN[playerid], 0, OBJECT_MATERIAL_SIZE_256x128,"Diploma", 26, 0, 0xFFFFFFFF, 0, OBJECT_MATERIAL_TEXT_ALIGN_CENTER);
	//SetObjectMaterialText( POBJECT[playerid], 0, POBJECTN[playerid], OBJECT_MATERIAL_SIZE_256x256, "Diploma", 26, 0, 0xFFFFFFFF, 0, 1 ); // SEtting the text to what player wrote
	EditObject( playerid, POBJECT[playerid] ); // Forcing the player to move the graffiti
	SetPVarInt( playerid, "GraffitiCreating", 1 ); // SEtting Graffiticreating positive for player
	return 1; // End of script.
}



LEANCMD:(graffiti)
{
//	if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
	GRAFFDIALOG
	return 1;
}




public OnPlayerEditObject(playerid, playerobject, objectid, response, Float:fX, Float:fY, Float:fZ, Float:fRotX, Float:fRotY, Float:fRotZ)
{
	new Float:oldX, Float:oldY, Float:oldZ, Float:oldRotX, Float:oldRotY, Float:oldRotZ;
	GetObjectPos(objectid, oldX, oldY, oldZ);
	GetObjectRot(objectid, oldRotX, oldRotY, oldRotZ);



	if( GetPVarInt(playerid, "GraffitiCreating") == 1 ) //Checking if player have a positiv variable on GraffitiCreating
	{
		if( response == EDIT_RESPONSE_FINAL ) // If player press SAVE
		{

		    XYZ[playerid][0] = fX; //Getting XYZ
			XYZ[playerid][1] = fY;
			XYZ[playerid][2] = fZ;
			XYZ[playerid][3] = fRotX; // Getting Angles
			XYZ[playerid][4] = fRotY;
			XYZ[playerid][5] = fRotZ;
			GameTextForPlayer( playerid, "Please keep spraying your spraycan till its created.",10000, 5 ); // Telling player to SPRAY with his psraycan
			DestroyObject( POBJECT[playerid] ); //
			GivePlayerWeapon( playerid, 41, 9999 ); //
			return 1;

		}
		if( response == EDIT_RESPONSE_CANCEL ) // If he hits ESC
		{
			DestroyObject( POBJECT[playerid] ); // Destroying the object
			SendClientMessage( playerid,0xFF6800FF,"Creation of Graffiti Canceld" ); // <---
			DeletePVar( playerid,"GraffitiCreating" ); // Deleting the PVAR from the player that he is not creating a graffiti
			return 1;
		}

	}

	return 1;
}






//GRAFFITI
#define PRESSED(%0) \
	(((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))
#define RELEASED(%0) \
	(((newkeys & (%0)) != (%0)) && ((oldkeys & (%0)) == (%0)))



#define MAX_GRAFFITIS 150

/*-------END OF INCLUDES/DEFINES-----------*/


/*
NEWS;
*
**
*/
new POBJECT[MAX_PLAYERS];
new POBJECTN[MAX_PLAYERS][60];
new Float:XYZ[MAX_PLAYERS][6];
new sprayammountch[MAX_PLAYERS];
new gammount;
new spraytim[MAX_PLAYERS];
new sprayperm[MAX_PLAYERS];
new g_amount[MAX_PLAYERS];


/*-------END OF NEWS-----------*/




//****ENUM****

enum graffInfo
{
	graffcreator[MAX_PLAYER_NAME],
	graffname[70],
	Float:posX,
	Float:posY,
	Float:posZ,
	Float:XYpos,
	Float:YYpos,
	Float:ZYpos,
	Virtual,
	g_Interior,
	OBJECTID,
	G_In_Use
}
new gInfo[MAX_GRAFFITIS][graffInfo];



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
#define GRAFFITI_DRAW_DISTANCE 100


/*-------END OF FORWARDS-----------*/


/*
CALLBACKS;
*
**
*/



startgraff(playerid)
{
	new	Float:X[3];
	GetPlayerPos( playerid, X[0], X[1], X[2] ); 
	POBJECT[playerid] = CreateObject( 19482, X[0], X[1], X[2], 0.0, 0.0, 0.0, 200 ); 
	SetObjectMaterialText(POBJECT[playerid], POBJECTN[playerid], 0, OBJECT_MATERIAL_SIZE_256x128, "Diploma", 26, 0, 0xFFFFFFFF, 0, OBJECT_MATERIAL_TEXT_ALIGN_CENTER);
	EditObject( playerid, POBJECT[playerid] ); 
	SetPVarInt( playerid, "GraffitiCreating", 1 );
	return 1;
}
new g_selected[MAX_PLAYERS];
new g_g_List[MAX_GRAFFITIS];

Dialog:G_Menu(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
 	{
            // IF Enter Graffiti Text
            if(listitem == 0) // They selected the first item - Desert Eagle
            {
                ShowGraffitiInputMenu(playerid);
            }
            // Graffiti List
            if(listitem == 1) 
            {
                ShowGraffitiList(playerid);
				return 1;
            }

	}
	return 1;
}



stock ShowGraffitiList(playerid)
{

              	new sd;
                new tmpString[128], tpDialog[1900];
				for(new x = 1; x < gammount+1; x++)
				{
				    if(gInfo[x][G_In_Use] == 1)
				    {
        				g_g_List[sd] = x;
				        sd++;
				        new string[64];
				        str_replace1 ("(n)", "\n", gInfo[x][graffname], string, false);
				        format(tmpString, sizeof(tmpString), ""COL_WHITE"%s (%s) (ID: %d)\n", string,gInfo[x][graffcreator], x);
				        strcat(tpDialog, tmpString);
					}
				}
				ShowDialog(playerid, Show:G_List, DIALOG_STYLE_LIST, "Graffiti List", tpDialog, "Teleport", "Cancel");
				return 1;

}


Dialog:G_List(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
 	{
        g_selected[playerid] = g_g_List[listitem];
        new dString[128];
        format(dString, sizeof(dString),"G_ID %d %s",g_selected[playerid],gInfo[g_selected[playerid]][graffname]);
        SCM(playerid, -1, dString);
        ShowGraffitiOptions(playerid);
	}
	else return ShowGraffitiMenu(playerid);
	return 1;
}



stock ShowGraffitiOptions(playerid)
{
	ShowDialog(playerid, Show:g_Edit, DIALOG_STYLE_LIST, "Graffiti Edit", "Delete Graffiti\nEdit position\nEdit Name\nTeleport to Graffiti\nMove Graffiti to your position.", "Teleport", "Cancel");
    return 1;
}


Dialog:g_Edit(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
 	{
		switch(listitem)
		{
		    // Delete graffiti
		    case 0:
		    {
		            new LeanQuerry[128];
		        	mysql_format(mysql, LeanQuerry, sizeof(LeanQuerry), "DELETE FROM `graffiti` WHERE `g_ID` = '%d'", g_selected[playerid]);
					mysql_tquery(mysql, LeanQuerry, "", "");
					DestroyDynamicObject(gInfo[g_selected[playerid]][OBJECTID]);
					gInfo[g_selected[playerid]][G_In_Use] = false;
					ShowGraffitiList(playerid);
					format(LeanQuerry, sizeof(LeanQuerry), "%s deleted graffiti %d.", GetName(playerid), g_selected[playerid]);
					WriteLog("Graffiti", LeanQuerry);
					gammount ++;
					SCM(playerid, COLOR_LIGHTRED, "[GRAFFITI]"COL_WHITE" Graffiti deleted succefully!");
		    }
		    // Edit position
		    case 1:
		    {
		        new ID = g_selected[playerid];
      			if(IsPlayerInRangeOfPoint (playerid, 10.0, gInfo[ID][posX],gInfo[ID][posY],gInfo[ID][posZ]) )
      			{
		        	EditDynamicObject( playerid, gInfo[ID][OBJECTID] );
					SetPVarInt( playerid, "GraffitiEditing", 1 );
					SCM(playerid, COLOR_LIGHTRED, "[GRAFFITI] "COL_WHITE"You can now move the tag, hold 'SPACE' to look around/move.");
				}
				else
				{
					new dString[128];
					format(dString, sizeof(dString),"[GRAFFITI] "COL_WHITE"You are too far away from the graffiti, /gotograffiti [%d]", ID);
					SCM(playerid, COLOR_LIGHTRED, dString);
				    ShowGraffitiOptions(playerid);
				}
		    }
		    // Edit name
			case 2:
			{
  					new string[256];
					format(string, sizeof(string), "HINT: Type in the new name of the graffiti\n {00CED1}- 	(n) for new line\n - 	(0049FF):Blue, (0E0101):Black, (FFFFFF):White, (6EF83C):Green\n - 	 In order to select a color do {ColorCode}.\n - 	The max is 60 characters.");
				 	ShowDialog(playerid, Show:g_Edit_Name, DIALOG_STYLE_INPUT, "Write in what you want", string, "Submit", "<<");
			}
			// Teleport to graffiti
			case 3:
			{
			    new ID = g_selected[playerid];
			    SetPlayerPos(playerid, gInfo[ID][posX],gInfo[ID][posY],gInfo[ID][posZ]);
			    SetPlayerVirtualWorld(playerid, gInfo[ID][Virtual]);
			    SetPlayerInterior(playerid, gInfo[ID][g_Interior]);
				new dString[94];
				format(dString, sizeof(dString),"[GRAFFITI] "COL_WHITE"You have been teleported to graffiti %d.",ID);
				SCM(playerid, COLOR_LIGHTRED, dString);
			}
			// Move graffiti to player position
			case 4:
			{
				SetPVarInt( playerid, "GraffitiEditing", 1 );
			    new
					ID = g_selected[playerid],
					dString[94],
     				Float:X,
		 			Float:Y,
				 	Float:Z,
				 	wv = GetPlayerVirtualWorld(playerid);
				GetPlayerPos(playerid, X, Y, Z);
			    if(wv == gInfo[ID][Virtual])
			    {
			        SetPVarInt( playerid, "GraffitiDiffVirtual", 0 );
       				SetDynamicObjectPos(gInfo[ID][OBJECTID], X, Y, Z);
				}
				else
				{
				    SetPVarInt( playerid, "GraffitiDiffVirtual", 1 );
				    DestroyDynamicObject(gInfo[ID][OBJECTID]);
		    		gInfo[ID][OBJECTID] = CreateDynamicObject( 19482, X, Y, Z, gInfo[ID][XYpos], gInfo[ID][YYpos], gInfo[ID][ZYpos], GetPlayerVirtualWorld(playerid), -1, -1, GRAFFITI_DRAW_DISTANCE ); //Creating the object
					SetDynamicObjectMaterialText( gInfo[ID][OBJECTID], 0, gInfo[ID][graffname], OBJECT_MATERIAL_SIZE_256x256, "Diploma", 25, 0, 0xFFFFFFFF, 0, 1 ); // Setting the object text with our choosen graffiti text
				}
				
				EditDynamicObject( playerid, gInfo[ID][OBJECTID] );
				
				
				format(dString, sizeof(dString),"[GRAFFITI] "COL_WHITE"Graffiti %d has been moved to your position, You can now move the tag.",ID);
				SCM(playerid, COLOR_LIGHTRED, dString);
				SCM(playerid, COLOR_WHITE, "Hold 'SPACE' to look around.");
			}
		}
	}
	else return ShowGraffitiList(playerid);
	return 1;
}

stock Ex_OnPlayerDisconnect(playerid)
{
	SetPVarInt( playerid, "GraffitiEditing",0 );
	KillTimer(spraytim[playerid]);
}
stock Ex_OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{

 	if( GetPlayerWeapon(playerid) == 41 )
    {
		    if(PRESSED(KEY_FIRE))
		    {
		        spraytim[playerid] = SetTimerEx( "G_Spraying", 1000, true, "i", playerid );
		    }
		    else if(RELEASED(KEY_FIRE))
		    {
				sprayammountch[playerid] = g_amount[playerid];
		        KillTimer(spraytim[playerid]);
		    }
	}
}


stock Ex_OnPlayerEditDynamicObject(playerid, objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz)
{
	    if(response == EDIT_RESPONSE_FINAL)
	    {	new ID = g_selected[playerid];
  			gInfo[ID][posX] = x, gInfo[ID][posY] = y, gInfo[ID][posZ] = z;
			gInfo[ID][XYpos] = rx, gInfo[ID][YYpos] = ry, gInfo[ID][ZYpos] = rz,
			gInfo[ID][Virtual] = GetPlayerVirtualWorld(playerid);

			new LeanQuery[256];
			mysql_format(mysql, LeanQuery, sizeof(LeanQuery), "UPDATE `graffiti` SET `x` = '%f', `y` = '%f', `z` = '%f', `px` = '%f', `py` = '%f', `pz` = '%f', `virtual` = '%d'  WHERE `G_ID` = '%d'",gInfo[ID][posX] = x, gInfo[ID][posY] = y, gInfo[ID][posZ] = z,gInfo[ID][XYpos] = rx, gInfo[ID][YYpos] = ry, gInfo[ID][ZYpos] = rz,gInfo[ID][Virtual], ID);
	 		mysql_tquery(mysql, LeanQuery, "", "");

			SetDynamicObjectPos(objectid, gInfo[ID][posX], gInfo[ID][posY], gInfo[ID][posZ]);
			SetDynamicObjectRot(objectid, gInfo[ID][XYpos], gInfo[ID][YYpos], gInfo[ID][ZYpos]);
			ShowGraffitiOptions(playerid);
			SCM(playerid, COLOR_LIGHTRED, "[GRAFFITI] "COL_WHITE"New graffiti position saved!");
			SetPVarInt( playerid, "GraffitiEditing",0 );
			format(LeanQuery, sizeof(LeanQuery), "%s edited position of graffiti %d.", GetName(playerid), g_selected[playerid]);
			WriteLog("Graffiti", LeanQuery);
			return 1;
		}
		if(response == EDIT_RESPONSE_CANCEL)
		{
		    new ID = g_selected[playerid];
		    if( GetPVarInt(playerid, "GraffitiDiffVirtual") == 0 )
		    {
					SetDynamicObjectPos(objectid, gInfo[ID][posX], gInfo[ID][posY], gInfo[ID][posZ]);
					SetDynamicObjectRot(objectid, gInfo[ID][XYpos], gInfo[ID][YYpos], gInfo[ID][ZYpos]);
			}
			else
			{
			        SetPVarInt( playerid, "GraffitiDiffVirtual",0 );
			        DestroyDynamicObject(gInfo[ID][OBJECTID]);
 					gInfo[ID][OBJECTID] = CreateDynamicObject( 19482, gInfo[ID][posX], gInfo[ID][posY], gInfo[ID][posZ], gInfo[ID][XYpos], gInfo[ID][YYpos], gInfo[ID][ZYpos], gInfo[ID][Virtual], -1, -1, GRAFFITI_DRAW_DISTANCE ); //Creating the object
					SetDynamicObjectMaterialText( gInfo[ID][OBJECTID], 0, gInfo[ID][graffname], OBJECT_MATERIAL_SIZE_256x256, "Diploma", 25, 0, 0xFFFFFFFF, 0, 1 ); 
			}

			SetPVarInt( playerid, "GraffitiEditing",0 );
			ShowGraffitiOptions(playerid);
			SCM(playerid, COLOR_LIGHTRED, "[GRAFFITI] "COL_WHITE"Graffiti position canceld.");
			return 1;
		}

		return 1;

}


Dialog:g_Edit_Name(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
 	{
 	    new id = g_selected[playerid];
 	    format(gInfo[id][graffname], 70, inputtext);
        SetDynamicObjectMaterialText( gInfo[id][OBJECTID], 0, inputtext, OBJECT_MATERIAL_SIZE_256x256, "Diploma", 25, 0, 0xFFFFFFFF, 0, 1 );
        
		new LeanQuery[256];
		mysql_format(mysql, LeanQuery, sizeof(LeanQuery), "UPDATE `graffiti` SET `G_Text` = '%s'  WHERE `g_ID` = '%d'",gInfo[id][graffname], id);
		mysql_tquery(mysql, LeanQuery, "", "");
		
		format(LeanQuery, sizeof(LeanQuery),"[GRAFFITI] "COL_WHITE"Graffiti %d has succefully been renamed to %s.",id,gInfo[id][graffname]);
		SCM(playerid, COLOR_LIGHTRED, LeanQuery);
		
		format(LeanQuery, sizeof(LeanQuery), "%s edited graffiti %d to %s", GetName(playerid), id, inputtext);
		WriteLog("Graffiti", LeanQuery);
	}
	else ShowGraffitiOptions(playerid);
}







stock str_replace1 (newstr [], oldstr [], srcstr [], deststr [], bool: ignorecase = false, size = sizeof (deststr))
{
	new
	    newlen = strlen (newstr),
	    oldlen = strlen (oldstr),
	    srclen = strlen (srcstr),
	    idx,
		rep;

	for (new i = 0; i < srclen; ++i)
	{
	    if ((i + oldlen) <= srclen)
	    {
	        if (!strcmp (srcstr [i], oldstr, ignorecase, oldlen))
	        {
				deststr [idx] = '\0';
				strcat (deststr, newstr, size);
				++rep;
				idx += newlen;
				i += oldlen - 1;
			}
			else
			{
		        if (idx < (size - 1))
		            deststr [idx++] = srcstr [i];
				else
					return rep;
		    }
	    }
	    else
	    {
	        if (idx < (size - 1))
	            deststr [idx++] = srcstr [i];
			else
				return rep;
	    }
	}
	deststr [idx] = '\0';
	return rep;
}


Dialog:G_Graffiti_Create(playerid, response, listitem, inputtext[])
{
	if(response) // If they clicked 'Select' or double-clicked a weapon
 	{
		new d = strlen(inputtext);
		if( d > 60)
		{
                ShowGraffitiInputMenu(playerid);
                return 1;

		}

		format(POBJECTN[playerid], sizeof(POBJECTN), inputtext);
        sprayammountch[playerid] = d;
		g_amount[playerid] = d;
        new string[128];
        SCM(playerid, COLOR_YELLOW, "You have set your text.");
        SCM(playerid, -1, inputtext);
        
        format(string, sizeof(string), inputtext);

        str_replace1 ("\n", "(n)", inputtext, POBJECTN[playerid], false);

		startgraff(playerid);


	}
	else ShowGraffitiMenu(playerid);
	return 1;
}




stock ShowGraffitiInputMenu(playerid)
{
	new string[256];
	format(string, sizeof(string), ""COL_YELLOW"HINT:\n {00CED1}- 	(n) for new line\n - 	(0049FF):Blue, (0E0101):Black, (FFFFFF):White, (6EF83C):Green\n - 	 In order to select a color do {ColorCode}.\n - 	The max is 60 characters.");
 	ShowDialog(playerid, Show:G_Graffiti_Create, DIALOG_STYLE_INPUT, "Write in what you want", string, "Submit", "<<");
	return 1;
}



stock ShowGraffitiMenu(playerid)
{
    return ShowDialog(playerid, Show:G_Menu, DIALOG_STYLE_LIST, "Graffiti Menu", "Enter Graffiti Text\nGraffiti List", "Submit", "Exit");
}


LEANCMD:(graffiti)
{
	if(PlayerInfo[playerid][pAdmin] < 1 && sprayperm[playerid] == 0) return ADMIN_UNAUTHORIZED
	ShowGraffitiMenu(playerid);
	return 1;
}
LEANCMD:(checkgraffiti)
{
    if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
   	for(new ID = 0; ID < MAX_GRAFFITIS; ID++)
	{
        if(IsPlayerInRangeOfPoint (playerid, 3.0, gInfo[ID][posX],gInfo[ID][posY],gInfo[ID][posZ]) )
        {
            new dString[128];
            format(dString, sizeof(dString),"[GRAFFITI] "COL_WHITE"g_ID: %d, g_Creator: %s g_Text: %s",ID,gInfo[ID][graffcreator],gInfo[ID][graffname]);
            SCM(playerid, COLOR_LIGHTRED, dString);
        
        }
	}
	return 1;
	
}


LEANCMD:(givespray)
{
	if(PlayerInfo[playerid][pAdmin] < 0) ADMIN_UNAUTHORIZED
	new string[128], id;
	
	if(sscanf(params,"u", id)) return SCM(playerid, COLOR_GREY, "USAGE: /givespray [playerid/partofname]");
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	
	format(string, sizeof(string), "-> %s granted you spray permission, /graffiti.",GetName(playerid));
	SCM(id, COLOR_YELLOW, string);
	format(string,sizeof(string), "Spraycan given to %s.",GetName(id));
	SCM(playerid, COLOR_YELLOW, string);
	
	
	format(string, sizeof(string), "%s granted %s spraycan permission.",GetName(playerid),GetName(playerid));
	WriteLog("Graffiti", string);
	
	GiveWeapon(id, 41, 99999);
	
	sprayperm[id] = true;
	
	return 1;
}

public loadgraffs()
{
	for(new ID = 0; ID < MAX_GRAFFITIS; ID++)
	{
		gInfo[ID][OBJECTID] = CreateDynamicObject( 19482, gInfo[ID][posX],gInfo[ID][posY],gInfo[ID][posZ], gInfo[ID][XYpos], gInfo[ID][YYpos], gInfo[ID][ZYpos], gInfo[ID][Virtual], -1, -1, GRAFFITI_DRAW_DISTANCE ); //Creating the object
		SetDynamicObjectMaterialText( gInfo[ID][OBJECTID], 0, gInfo[ID][graffname], OBJECT_MATERIAL_SIZE_256x256, "Diploma", 25, 0, 0xFFFFFFFF, 0, 1 ); // Setting the object text with our choosen graffiti text
		gammount ++;
	}
	return 1;
}
stock GetNextAvailableGraffiti()
{
	for(new x = 1; x < MAX_GRAFFITIS; x++)
	{
		if(gInfo[x][G_In_Use] == 0)
		{
			return x;
		}
	}
	return 0;
}


public creategraff( playerid )
{
	if(gammount > MAX_GRAFFITIS) return SCM(playerid, COLOR_LIGHTRED, "[GRAFFITI] "COL_WHITE"There is a maximum of graffitis on the server.");
	DestroyDynamicObject( POBJECT[playerid] );
    new id = GetNextAvailableGraffiti();
	if(id == 0) return SCM(playerid, COLOR_LIGHTRED, "[GRAFFITI] "COL_WHITE"NOT ABLE TO FIND AN AVAILABLE GRAFFITI ID, CONTACT LEAN!");
	if(gInfo[id][G_In_Use] == 1) return SCM(playerid, -1, "ERROR: ID IS IN USE TRY AGAIN!");
 

	GameTextForPlayer( playerid, "~g~SPRAYED",5000,5 ); 
	DeletePVar( playerid, "GraffitiCreating" );

	strmid(gInfo[id][graffname] , POBJECTN[playerid], 0, strlen(POBJECTN[playerid]), 32);
	gInfo[id][graffcreator] = GetName(playerid);
	gInfo[id][posX] = XYZ[playerid][0];
	gInfo[id][posY] = XYZ[playerid][1];
	gInfo[id][posZ] = XYZ[playerid][2];
	gInfo[id][XYpos] = XYZ[playerid][3];
	gInfo[id][YYpos] = XYZ[playerid][4];
	gInfo[id][ZYpos] = XYZ[playerid][5];
	gInfo[id][Virtual] = GetPlayerVirtualWorld(playerid);
	gInfo[id][g_Interior] = GetPlayerInterior(playerid);
	gInfo[id][G_In_Use] = true;
	
	gInfo[id][OBJECTID] = CreateDynamicObject( 19482, gInfo[id][posX],gInfo[id][posY],gInfo[id][posZ], gInfo[id][XYpos], gInfo[id][YYpos], gInfo[id][ZYpos], gInfo[id][Virtual], -1, -1, GRAFFITI_DRAW_DISTANCE );
	SetDynamicObjectMaterialText( gInfo[id][OBJECTID], 0, gInfo[id][graffname], OBJECT_MATERIAL_SIZE_256x256, "Diploma", 25, 0, 0xFFFFFFFF, 0, 1 ); 
	
	
	g_Create_Graffiti_To_Mysql(gInfo[id][posX], gInfo[id][posY], gInfo[id][posZ], gInfo[id][XYpos], gInfo[id][YYpos], gInfo[id][ZYpos],gInfo[id][Virtual],gInfo[id][g_Interior], id);
	gammount ++;
	printf("ID: %d, GRAFFITI CREATED, NAME: %s CREATOR: %s G_IN_USE: %d", id,gInfo[id][graffname],gInfo[id][graffcreator],gInfo[id][G_In_Use]);
	new string[128];
	format(string, sizeof(string), "%s created a grafiti with the name %s, ID: %d",GetName(playerid), id);
	WriteLog("Graffiti", string);
	return 1;
}


stock g_Create_Graffiti_To_Mysql(Float:X, Float:Y, Float:Z, Float:pX, Float:pY, Float:pZ,virtualw, gInterior, g_ID)
{
	new LeanQuery[256];
	mysql_format(mysql, LeanQuery, sizeof(LeanQuery), "INSERT INTO `graffiti` (`G_Creator`, `G_Text`, `x`, `y`, `z`, `px`, `py`, `pz`, `virtual`, `Interior`) VALUES ('%s', '%s', '%f', '%f', '%f', '%f', '%f', '%f', '%d', '%d')",
	gInfo[g_ID][graffcreator],
	gInfo[g_ID][graffname],
	X,
	Y,
	Z,
	pX,
	pY,
	pZ,
	virtualw,
	gInterior);
	
	
 	mysql_tquery(mysql, LeanQuery, "");
}


stock g_Load_Graffiti()
{
	new ottquery[52];
	for(new x = 1; x < MAX_GRAFFITIS; x++)
	{
	    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `graffiti` WHERE `g_ID` = %d", x);
		mysql_tquery(mysql, ottquery, "DoesGraffitiExist", "i", x);
	}
}



forward DoesGraffitiExist(g_ID);
public DoesGraffitiExist(g_ID)
{
	new rows, fields, ottquery[50];
	cache_get_data(rows, fields, mysql);
	if(rows)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `graffiti` WHERE `g_ID` = %d", g_ID);
		mysql_tquery(mysql, ottquery, "LoadAllGraffitis", "i", g_ID);
	    return 1;
	}
	return 0;
}

forward LoadAllGraffitis(id);
public LoadAllGraffitis(id)
{
	new g_creator[MAX_PLAYER_NAME], g_Text[70];

	cache_get_row(0, 1, g_creator);
	cache_get_row(0, 2, g_Text);
	gInfo[id][graffcreator] = g_creator;
	gInfo[id][graffname] = g_Text;
	gInfo[id][posX] = cache_get_row_float(0, 3);
	gInfo[id][posY] = cache_get_row_float(0, 4);
	gInfo[id][posZ] = cache_get_row_float(0, 5);
	gInfo[id][XYpos] = cache_get_row_float(0, 6);
	gInfo[id][YYpos] = cache_get_row_float(0, 7);
	gInfo[id][ZYpos] = cache_get_row_float(0, 8);
	gInfo[id][Virtual] = cache_get_row_int(0, 9);
	gInfo[id][g_Interior] = cache_get_row_int(0, 9);
	gInfo[id][G_In_Use] = true;
	new ID = id;
	gInfo[ID][OBJECTID] = CreateDynamicObject( 19482, gInfo[ID][posX],gInfo[ID][posY],gInfo[ID][posZ], gInfo[ID][XYpos], gInfo[ID][YYpos], gInfo[ID][ZYpos], gInfo[ID][Virtual], -1, -1, GRAFFITI_DRAW_DISTANCE ); //Creating the object
	SetDynamicObjectMaterialText( gInfo[ID][OBJECTID], 0, gInfo[ID][graffname], OBJECT_MATERIAL_SIZE_256x256, "Diploma", 25, 0, 0xFFFFFFFF, 0, 1 ); // Setting the object text with our choosen graffiti text
	gammount ++;
	return 1;
}

public killgr(playerid)
{
   	DeletePVar( playerid, "GraffitiCreating" ); // Deleting the PVAR afterwards
	sprayammountch[playerid] = 0;
	return 1;
}







forward G_Spraying(playerid);
public G_Spraying(playerid)
{
	if(IsPlayerInRangeOfPoint(playerid, 3.0,XYZ[playerid][0],XYZ[playerid][1], XYZ[playerid][2]))
	{
		sprayammountch[playerid] --; //Evry second it gets called player gets ONE point

		if( sprayammountch[playerid] < 2) // If player reached his points
		{
			creategraff( playerid ); // We now call creategraff and the graffiti will be created
			KillTimer(spraytim[playerid]);
			return 1;
		}
		new string[64];
		format( string, sizeof(string),"~r~SPRAYING~n~ ~w~%d]",sprayammountch[playerid]);
		GameTextForPlayer( playerid, string, 1000,5 );
		return 1;
	}
	else
	{
	    KillTimer(spraytim[playerid]);
		DeletePVar( playerid, "GraffitiCreating" );
		SCM(playerid, COLOR_LIGHTRED, "[GRAFFITI]"COL_WHITE" Creation of graffiti has been canceld, you are too far away from the position, you will need to restart the process.");
	}
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
			DestroyObject( POBJECT[playerid] ); //
			if(AdminDuty[playerid])
			{
	    		creategraff( playerid );
    			SCM(playerid, COLOR_LIGHTRED, "[GRAFFITI] "COL_WHITE"Your graffiti has been created automaticly due to you being on aduty.");
    			DeletePVar( playerid,"GraffitiCreating" );
			}
			return 1;

		}
		if( response == EDIT_RESPONSE_CANCEL ) // If he hits ESC
		{
			DestroyObject( POBJECT[playerid] ); // Destroying the object
			DeletePVar( playerid,"GraffitiCreating" ); // Deleting the PVAR from the player that he is not creating a graffiti
			ShowGraffitiMenu(playerid);
			return 1;
		}

	}

	return 1;
}

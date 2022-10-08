// TO BE DELETED!
#include <a_samp>
#include <sscanf2>
#include <easydialog>
#include <zcmd>
#include <foreach>


#define SCM SendClientMessage
#define COLOR_DUTY 0x8D8DFFC8
#define COLOR_WHITE 0xFFFFFFAA
#define COL_FACTION "{8D8DFF}"
#define COLOR_LIGHTRED 0xFF6347AA

stock GetICName(playerid)
{
	new name[MAX_PLAYER_NAME];
 	GetPlayerName(playerid,name,sizeof(name));
 	name[strfind(name,"_")] = ' ';
	return name;
}


new aVehicleNames[212][] =
{
	{"Landstalker"},
	{"Bravura"},
	{"Buffalo"},
	{"Linerunner"},
	{"Perrenial"},
	{"Sentinel"},
	{"Dumper"},
	{"Firetruck"},
	{"Trashmaster"},
	{"Stretch"},
	{"Manana"},
	{"Infernus"},
	{"Voodoo"},
	{"Pony"},
	{"Mule"},
	{"Cheetah"},
	{"Ambulance"},
	{"Leviathan"},
	{"Moonbeam"},
	{"Esperanto"},
	{"Taxi"},
	{"Washington"},
	{"Bobcat"},
	{"Mr Whoopee"},
	{"BF Injection"},
	{"Hunter"},
	{"Premier"},
	{"Enforcer"},
	{"Securicar"},
	{"Banshee"},
	{"Predator"},
	{"Bus"},
	{"Rhino"},
	{"Barracks"},
	{"Hotknife"},
	{"Trailer 1"},
	{"Previon"},
	{"Coach"},
	{"Cabbie"},
	{"Stallion"},
	{"Rumpo"},
	{"RC Bandit"},
	{"Romero"},
	{"Packer"},
	{"Monster"},
	{"Admiral"},
	{"Squalo"},
	{"Seasparrow"},
	{"Pizzaboy"},
	{"Tram"},
	{"Trailer 2"},
	{"Turismo"},
	{"Speeder"},
	{"Reefer"},
	{"Tropic"},
	{"Flatbed"},
	{"Yankee"},
	{"Caddy"},
	{"Solair"},
	{"Berkley's RC Van"},
	{"Skimmer"},
	{"PCJ-600"},
	{"Faggio"},
	{"Freeway"},
	{"RC Baron"},
	{"RC Raider"},
	{"Glendale"},
	{"Oceanic"},
	{"Sanchez"},
	{"Sparrow"},
	{"Patriot"},
	{"Quad"},
	{"Coastguard"},
	{"Dinghy"},
	{"Hermes"},
	{"Sabre"},
	{"Rustler"},
	{"ZR-350"},
	{"Walton"},
	{"Regina"},
	{"Comet"},
	{"BMX"},
	{"Burrito"},
	{"Camper"},
	{"Marquis"},
	{"Baggage"},
	{"Dozer"},
	{"Maverick"},
	{"News Chopper"},
	{"Rancher"},
	{"FBI Rancher"},
	{"Virgo"},
	{"Greenwood"},
	{"Jetmax"},
	{"Hotring"},
	{"Sandking"},
	{"Blista Compact"},
	{"Police Maverick"},
	{"Boxville"},
	{"Benson"},
	{"Mesa"},
	{"RC Goblin"},
	{"Hotring Racer A"},
	{"Hotring Racer B"},
	{"Bloodring Banger"},
	{"Rancher"},
	{"Super GT"},
	{"Elegant"},
	{"Journey"},
	{"Bike"},
	{"Mountain Bike"},
	{"Beagle"},
	{"Cropdust"},
	{"Stunt"},
	{"Tanker"},
	{"Roadtrain"},
	{"Nebula"},
	{"Majestic"},
	{"Buccaneer"},
	{"Shamal"},
	{"Hydra"},
	{"FCR-900"},
	{"NRG-500"},
	{"HPV1000"},
	{"Cement Truck"},
	{"Tow Truck"},
	{"Fortune"},
	{"Cadrona"},
	{"FBI Truck"},
	{"Willard"},
	{"Forklift"},
	{"Tractor"},
	{"Combine"},
	{"Feltzer"},
	{"Remington"},
	{"Slamvan"},
	{"Blade"},
	{"Freight"},
	{"Streak"},
	{"Vortex"},
	{"Vincent"},
	{"Bullet"},
	{"Clover"},
	{"Sadler"},
	{"Firetruck LA"},
	{"Hustler"},
	{"Intruder"},
	{"Primo"},
	{"Cargobob"},
	{"Tampa"},
	{"Sunrise"},
	{"Merit"},
	{"Utility"},
	{"Nevada"},
	{"Yosemite"},
	{"Windsor"},
	{"Monster A"},
	{"Monster B"},
	{"Uranus"},
	{"Jester"},
	{"Sultan"},
	{"Stratum"},
	{"Elegy"},
	{"Raindance"},
	{"RC Tiger"},
	{"Flash"},
	{"Tahoma"},
	{"Savanna"},
	{"Bandito"},
	{"Freight Flat"},
	{"Streak Carriage"},
	{"Kart"},
	{"Mower"},
	{"Duneride"},
	{"Sweeper"},
	{"Broadway"},
	{"Tornado"},
	{"AT-400"},
	{"DFT-30"},
	{"Huntley"},
	{"Stafford"},
	{"BF-400"},
	{"Newsvan"},
	{"Tug"},
	{"Trailer 3"},
	{"Emperor"},
	{"Wayfarer"},
	{"Euros"},
	{"Hotdog"},
	{"Club"},
	{"Freight Carriage"},
	{"Trailer 3"},
	{"Andromada"},
	{"Dodo"},
	{"RC Cam"},
	{"Launch"},
	{"Police Car (LSPD)"},
	{"Police Car (SFPD)"},
	{"Police Car (LVPD)"},
	{"Police Ranger"},
	{"Picador"},
	{"S.W.A.T. Van"},
	{"Alpha"},
	{"Phoenix"},
	{"Glendale"},
	{"Sadler"},
	{"Luggage Trailer A"},
	{"Luggage Trailer B"},
	{"Stair Trailer"},
	{"Boxville"},
	{"Farm Plow"},
	{"Utility Trailer"}
};

GetVehicleModelIDFromName(vname[])
{
	for(new i = 0; i < 211; i++)
	{
		if(strfind(aVehicleNames[i], vname, true) != -1)
		return i + 400;
	}
	return -1;
}

stock GetWName(weaponid)
{
	new weapon[24];
	if(weaponid == 0)
	{
		format(weapon,sizeof(weapon),"Fist");
		return weapon;
	}
    GetWeaponName(weaponid,weapon,24);
    return weapon;
}

stock GetValidWeapon(weaponid)
{
	switch (weaponid)
	{
	    case 22,23,24,25,28,29,32,30,31,33,34:
		{
		    return true;
		}

	}
	return false;
}


#define DIALOG_CONFIRM_SYS 03524

stock ConfirmDialog(playerid, caption[], info[], callback[], ...){
   new n = numargs(),       // number of arguments, static + optional
      szParamHash[64];   // variable where the passed arguments will be stored
   for(new arg = 4; arg < n; arg++){   // loop all additional arguments
      format(szParamHash, sizeof(szParamHash), "%s%d|", szParamHash, getarg(arg)); // store them in szParamHash
   }
   SetPVarInt(playerid, "confDialogArgs", n -4);         // store the amount of additional arguments
   SetPVarString(playerid, "confDialCallback", callback);   // store the callback that needs to be called after response
   SetPVarString(playerid, "confDialog_arg", szParamHash);   // store the additional arguments

   ShowPlayerDialog(playerid, DIALOG_CONFIRM_SYS, DIALOG_STYLE_MSGBOX, caption, info, "Yes", "No"); // display the dialog message itself

   return;
}

stock ConfirmDialog_Response(playerid, response){
   new szCallback[33],      // variable to fetch our callback to
      szParamHash[64],    // variable to check raw compressed argument string
      n,               // variable to fetch the amount of additional arguments
      szForm[12];         // variable to generate the CallLocalFunction() "format" argument

   n = GetPVarInt(playerid, "confDialogArgs");   // Fetch the amount of additional arguments
   GetPVarString(playerid, "confDialCallback", szCallback, sizeof(szCallback));   // fetch the callback
   GetPVarString(playerid, "confDialog_arg", szParamHash, sizeof(szParamHash));   // fetch the raw compressed additional arguments

   new hashDecoded[12];   // variable to store extracted additional arguments from the ConfirmDialog() generated string

   sscanf(szParamHash, "p<|>A<d>(0)[12]", hashDecoded);   // extraction of the additional arguments

   new args,    // amount of cells passed to CallLocalFunction
      addr,    // pointer address variable for later use
      i;      // i

   format(szForm, sizeof(szForm), "dd");   // static parameters for the callback, "playerid" and "response"

   #emit ADDR.pri hashDecoded   // get pointer address of the extracted additional arguments
   #emit STOR.S.pri addr      // store the pointer address in variable 'addr'
   if(n){   // if there's any additional arguments
      for(i = addr + ((n-1) * 4); i >= addr; i-=4){ // loops all additional arguments by their addresses
         format(szForm, sizeof(szForm), "%sd", szForm); // adds an aditional specifier to the "format" parameter of CallLocalFunction
         #emit load.s.pri i   // load the argument at the current address
         #emit push.pri      // push it to the CallLocalFunction argument list
         args+=4;         // increase used cell number by 4
      }
   }


   args+=16;   // preserve 4 more arguments for CallLocalFunction (16 cause 4 args by 4 cells (4*4))

   #emit ADDR.pri response            // fetch "response" pointer address to the primary buffer
   #emit push.pri                  // push it to the argument list

   #emit ADDR.pri playerid            // fetch "playerid" pointer address to the primary buffer
   #emit push.pri                  // push it to the argument list

   #emit push.adr szForm            // push the szForm ("format") to the argument list by its referenced address
   #emit push.adr szCallback         // push the szCallback (custom callback) to the argument list by its referenced address
   #emit push.s args               // push the amount of arguments
   #emit sysreq.c CallLocalFunction   // call the function

   // Clear used data
   #emit LCTRL 4
   #emit LOAD.S.ALT args
   #emit ADD.C 4
   #emit ADD
   #emit SCTRL 4

   // Clear used PVars
   DeletePVar(playerid, "confDialCallback");
   DeletePVar(playerid, "confDialog_arg");
   DeletePVar(playerid, "confDialogArgs");

   return;
}



public OnFilterScriptInit()
{
	SendClientMessageToAll(-1,"Event System By Lean Loaded.");
	return 1;
}

public OnFilterScriptExit()
{
    SendClientMessageToAll(-1,"Event System By Lean UNLoaded.");
	return 1;
}

#define LEANCMD:(%1) CMD:%1(playerid, params[])

// TO BE DELETED! ^ ABOVE!





#define EVENT_WEAPONS 2
#define EVENT_AMMO 2
#define EVENT_ARHP 2
#define EVENT_POS 56
#define EVENT_TEAMXYZ 56
#define EVENT_SKIN 2
#define COL_LIGHTRED "{FF6347}"

//NEWS
new isinevent[MAX_PLAYERS];
new EVENTCRIMCAR[MAX_VEHICLES];
new EVENTCARS[MAX_VEHICLES];
new EVENTATEAM;
new EVENTBTEAM;
new eventtimer;
new canjoin = 0;
new eventstarted;
new evenid = 0;
new evcrim;
new canstart;
new Text3D:event3d[MAX_PLAYERS];
new eventteamtype[MAX_PLAYERS];
new joined[MAX_PLAYERS];
// NEWS


LEANCMD:(event)
{
	ShowDialog(playerid, Show:Event, DIALOG_STYLE_LIST, "Event Menu", "Create Event\nCurrent Events(Not Available)", "Submit", "Cancel");
	return 1;
}

enum evInfo
{
	EventType,
    EventName[64],
    EventJoin,
    EventTeamA[64],
    EventTeamB[64],
    EventSkin[EVENT_SKIN],
    EventTeamAXYZ[EVENT_TEAMXYZ],
    EventTeamBXYZ[EVENT_TEAMXYZ],
    EventAmmount,
    EventWeapon[EVENT_WEAPONS],
    EventAmmo[EVENT_AMMO],
    Float:EventARHP[EVENT_ARHP],
    Float:EventX[EVENT_POS],
    Float:EventY[EVENT_POS],
    Float:EventZ[EVENT_POS],
    Float:EventAngle[EVENT_POS],
    EventInt[EVENT_POS],
    EventVw[EVENT_POS],
    EventSusVeh,
    EventCopVeh,


}
new EventInfo[evInfo];


stock GetEventType(eventid)
{
    new string[16];
	switch(eventid)
	{
	    case 0:
	    {
	        format(string,sizeof(string),"Pursuit");
		}
  		case 1:
		{
	        format(string,sizeof(string),"Team Deathmatch");
		}
  		case 2:
	    {
	        format(string,sizeof(string),"Deathmatch");
		}
	}
	return string;
}



Dialog:Event(playerid, response, listitem, inputtext[])
{
	if(response) 
        {
            if(listitem == 0)
            {
                ShowDialog(playerid, Show:EventType, DIALOG_STYLE_LIST, "Event Menu > Type", "Pursuit\nTeam Deathmatch\nDeathmatch(Will be available later..)", "Submit", "Cancel");
            }
            if(listitem == 1) 
            {

            }

        }
	return 1;
}

Dialog:EventType(playerid, response, listitem, inputtext[])
{
	if(response)
        {
            if(listitem == 0)
            {
                EventInfo[EventType] = 0;
            }
            if(listitem == 1)
            {
                EventInfo[EventType] = 1;
            }
            if(listitem == 2)
            {
                ShowDialog(playerid, Show:EventType, DIALOG_STYLE_LIST, "Event Menu > Type", "Pursuit\nTeam Deathmatch\nDeathmatch(THIS IS DISABLED!)", "Submit", "Cancel");
            }
            new string[128];
            format(string,sizeof(string),"You have choosen Event Type: %s\t\n"COL_LIGHTRED"Please select a name for the event!",GetEventType(EventInfo[EventType]));
            ShowDialog(playerid, Show:EventName, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name", string, "Submit", "Cancel");

        }
	return 1;
}
forward heventname(playerid, response);

Dialog:EventName(playerid, response, listitem, inputtext[])
{
	if(response)
        {
            if(isnull(inputtext))
            {
            	new string[128];
            	format(string,sizeof(string),"You have to input a name! \nExample: Leans Team Deathmatch.");
            	ShowDialog(playerid, Show:EventName, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name", string, "Submit", "Cancel");
            }
            else
            {
                new string[128];
                strmid(EventInfo[EventName],inputtext,0,64,64);
                format(string,sizeof(string),"EVENTCMD: You have named the event to: %s\n"COL_LIGHTRED"Are you happy with this name?",EventInfo[EventName]);
                ShowDialog(playerid, Show:EventNameCon, DIALOG_STYLE_MSGBOX, "Event Menu > Type > Event Name > Event Name Confirmation", string, "Yes", "No");
			}
        }
	return 1;
}


Dialog:EventNameCon(playerid, response, listitem, inputtext[])
{
	if(response)
	{
	    new string[128];
		format(string,sizeof(string),"Congratulations, you have succefully named the event to: %s\n\t"COL_LIGHTRED"Please input Primary Weaponid:",EventInfo[EventName]);
		ShowDialog(playerid, Show:EventWeaponPrim, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Yes", "No");
	}
	else
	{
		new string[128];
 		format(string,sizeof(string),"Input a new name into the box:");
  		ShowDialog(playerid, Show:EventName, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name", string, "Submit", "Cancel");
	}
	return 1;
}



Dialog:EventWeaponPrim(playerid, response, listitem, inputtext[])
{
	if(response)
	{
	    new string[128];
        new weaponid = strval ( inputtext );
        if(sscanf(inputtext,"d",weaponid) || !GetValidWeapon(weaponid))
        {
            		format(string,sizeof(string),"Something went wrong, try again..\nEXAMPLE: 31",EventInfo[EventName]);
					ShowDialog(playerid, Show:EventWeaponPrimAmmo, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Yes", "No");
					return 1;
		}
		EventInfo[EventWeapon][0] = weaponid;
		format(string,sizeof(string),"You have choosen primary weapon %s\n"COL_LIGHTRED"Please input desired Ammo to have:",GetWName(weaponid));
		ShowDialog(playerid, Show:EventWeaponPrimAmmo, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Yes", "No");
	}
	else
	{
		ShowDialog(playerid, Show:EventType, DIALOG_STYLE_LIST, "Event Menu > Type", "Pursuit\nTeam Deathmatch\nDeathmatch", "Submit", "Cancel");
	}
	return 1;
}

Dialog:EventWeaponPrimAmmo(playerid, response, listitem, inputtext[])
{
	if(response)
	{
	    new string[128];
        new weaponid = strval ( inputtext );
        if(sscanf(inputtext,"d",weaponid))
        {
            		format(string,sizeof(string),"Something went wrong, try again..\nEXAMPLE: 31",EventInfo[EventName]);
					ShowDialog(playerid, Show:EventWeaponPrimAmmo, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Yes", "No");
					return 1;
		}
		EventInfo[EventAmmo][0] = weaponid;
		format(string,sizeof(string),"You have choosen %s with %d ammo\n"COL_LIGHTRED"Please Input secondary weapon id:",GetWName(EventInfo[EventWeapon][0]),EventInfo[EventAmmo][0]);
		ShowDialog(playerid, Show:EventWeaponSecond, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Yes", "No");
	}
	else
	{
		new string[128];
 		format(string,sizeof(string),"Input primary weaponID again or go back....");
  		ShowDialog(playerid, Show:EventWeaponPrim, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Submit", "Cancel");
	}
	return 1;
}


Dialog:EventWeaponSecond(playerid, response, listitem, inputtext[])
{
	if(response)
	{
	    new string[128];
        new weaponid = strval ( inputtext );
        if(sscanf(inputtext,"d",weaponid) || !GetValidWeapon(weaponid))
        {
            		format(string,sizeof(string),"Something went wrong, try again..\nEXAMPLE: 24",EventInfo[EventName]);
					ShowDialog(playerid, Show:EventWeaponSecond, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Yes", "No");
					return 1;
		}
		EventInfo[EventWeapon][1] = weaponid;
		format(string,sizeof(string),"You have choosen weapon %s\n"COL_LIGHTRED"Please Input desired ammo to have:",GetWName(EventInfo[EventWeapon][1]));
		ShowDialog(playerid, Show:EventWeaponSecondAmmo, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Yes", "No");
	}
	else
	{
		new string[128];
 		format(string,sizeof(string),"Input primary weapon ammo again...Or go back...");
  		ShowDialog(playerid, Show:EventWeaponPrimAmmo, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Submit", "Cancel");
	}
	return 1;
}


Dialog:EventWeaponSecondAmmo(playerid, response, listitem, inputtext[])
{
	if(response)
	{
	    new string[128];
        new weaponid = strval ( inputtext );
        if(sscanf(inputtext,"d",weaponid))
        {
  			format(string,sizeof(string),"Something went wrong, try again..\nEXAMPLE: 31",EventInfo[EventName]);
			ShowDialog(playerid, Show:EventWeaponSecondAmmo, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Yes", "No");
			return 1;
		}
		EventInfo[EventAmmo][1] = weaponid;
		if(EventInfo[EventType] == 0)
		{
			format(string,sizeof(string),"You have choosen %s with %d ammo.\n"COL_LIGHTRED"Please input the Suspects vehicle name, example: Blista Compact",GetWName(EventInfo[EventWeapon][1]),EventInfo[EventAmmo][1]);
			ShowDialog(playerid, Show:EventCrimCar, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Yes", "No");
			return 1;
		}
		if(EventInfo[EventType] == 1)
		{
			format(string,sizeof(string),"You have choosen %s with %d ammo.\n"COL_LIGHTRED"Please input Team A Name:",GetWName(EventInfo[EventWeapon][1]),EventInfo[EventAmmo][1]);
			ShowDialog(playerid, Show:EventTeamA, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Yes", "No");
			return 1;
		}
	}
	else
	{
		new string[128];
 		format(string,sizeof(string),"Input Secondary weapon again or go back...");
  		ShowDialog(playerid, Show:EventWeaponSecond, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Submit", "Cancel");
	}
	return 1;
}


Dialog:EventTeamA(playerid, response, listitem, inputtext[])
{
	if(response)
        {
            if(isnull(inputtext))
            {
            	new string[128];
            	format(string,sizeof(string),"You have to input a name! \nExample: The A Team");
            	ShowDialog(playerid, Show:EventName, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name", string, "Submit", "Cancel");
            }
            else
            {
                new string[128];
                strmid(EventInfo[EventTeamA],inputtext,0,64,64);
                format(string,sizeof(string),"You have named Team A to: %s\n"COL_LIGHTRED"Please name Team B:",EventInfo[EventTeamA]);
                ShowDialog(playerid, Show:EventTeamB, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation", string, "Yes", "No");
			}
        }
  	else
	{
		new string[128];
 		format(string,sizeof(string),"Input Secondary Ammo again or go back...");
  		ShowDialog(playerid, Show:EventWeaponSecondAmmo, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Submit", "Cancel");
	}
	return 1;
}



Dialog:EventTeamB(playerid, response, listitem, inputtext[])
{
	if(response)
        {
            if(isnull(inputtext))
            {
            	new string[128];
            	format(string,sizeof(string),"You have to input a name! \nExample: The A Team");
            	ShowDialog(playerid, Show:EventName, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name", string, "Submit", "Cancel");
            }
            else
            {
                new string[128];
                strmid(EventInfo[EventTeamB],inputtext,0,64,64);
				format(string,sizeof(string),"You have named Team B to: %s\n"COL_LIGHTRED"Please select SKIN for Team A",EventInfo[EventTeamB]);
				ShowDialog(playerid, Show:Skins, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Yes", "No");
			}
        }
  	else
	{
		new string[128];
 		format(string,sizeof(string),"Input Team A Name again or go back..");
  		ShowDialog(playerid, Show:EventTeamA, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Submit", "Cancel");
	}
	return 1;
}




Dialog:EventCrimCar(playerid, response, listitem, inputtext[])
{
	if(response)
	{
	    new string[128];
	    format(string,sizeof(string),"Something went wrong, try again..\nEXAMPLE: Buffalo",EventInfo[EventName]);
   		if(sscanf(inputtext,"s",inputtext))
   		{
			ShowDialog(playerid, Show:EventCrimCar, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Yes", "No");
		}
		new vehicle = GetVehicleModelIDFromName(inputtext);

		if(vehicle < 400 || vehicle > 611)
		{
            ShowDialog(playerid, Show:EventCrimCar, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Yes", "No");
		}
		EventInfo[EventSusVeh] = vehicle;
		format(string,sizeof(string),"You have choosen vehicle %s for the suspect.(MODELID: %d)\n"COL_LIGHTRED"Please input the cops  vehicle name, example: LVPD",aVehicleNames[vehicle - 400],EventInfo[EventSusVeh]);
		ShowDialog(playerid, Show:EventCopCar, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Yes", "No");
	}
	else
	{
		new string[128];
 		format(string,sizeof(string),"Input Health again or go back..");
  		ShowDialog(playerid, Show:EventHP, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Submit", "Cancel");
	}
	return 1;
}


Dialog:EventCopCar(playerid, response, listitem, inputtext[])
{
	if(response)
	{
	    new string[128];
	    format(string,sizeof(string),"Something went wrong, try again..\nEXAMPLE: Buffalo",EventInfo[EventName]);
   		if(sscanf(inputtext,"s",inputtext))
   		{
			ShowDialog(playerid, Show:EventCopCar, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Yes", "No");
		}
		new vehicle = GetVehicleModelIDFromName(inputtext);

		if(vehicle < 400 || vehicle > 611)
		{
            ShowDialog(playerid, Show:EventCrimCar, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Yes", "No");
		}
		EventInfo[EventCopVeh] = vehicle;
		format(string,sizeof(string),"You have choosen vehicle %s for the Cops.(MODELID: %d)\n"COL_LIGHTRED"Please input skin id for Team A",aVehicleNames[vehicle - 400],EventInfo[EventSusVeh]);
		ShowDialog(playerid, Show:Skins, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Yes", "No");
	}
	else
	{
		new string[128];
 		format(string,sizeof(string),"Input Health again or go back..");
  		ShowDialog(playerid, Show:EventCrimCar, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Submit", "Cancel");
	}
	return 1;
}

Dialog:Skins(playerid, response, listitem, inputtext[])
{
	if(response)
	{
	    new string[128];
        new weaponid = strval ( inputtext );
        if(sscanf(inputtext,"d",weaponid) || weaponid < 0 || weaponid > 311)
        {
            		format(string,sizeof(string),"Something went wrong, try again..\nEXAMPLE: 31",EventInfo[EventName]);
					ShowDialog(playerid, Show:Skin, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Yes", "No");
					return 1;
		}
		EventInfo[EventSkin][0] = weaponid;
		format(string,sizeof(string),"You have choosen skin id: %d for Team A.\n"COL_LIGHTRED"Please Input skin for Team B:",EventInfo[EventSkin][0]);
		ShowDialog(playerid, Show:SkinsB, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Yes", "No");
	}
	else
	{
		new string[128];
 		format(string,sizeof(string),"Input Secondary weapon again or go back...");
  		ShowDialog(playerid, Show:EventCopCar, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Submit", "Cancel");
	}
	return 1;
}

new creatingev[MAX_PLAYERS];

GetPlayersOnServer()
{
	new count;
	for(new x=0; x< MAX_PLAYERS; x++)
	{ 
	  	if(IsPlayerConnected(x))
	  	{
			count++;
		}
	}
	return count;
}




Dialog:SkinsB(playerid, response, listitem, inputtext[])
{
	if(response)
	{
	    new string[128];
        new weaponid = strval ( inputtext );
        if(sscanf(inputtext,"d",weaponid) || weaponid < 0 || weaponid > 311)
        {
            		format(string,sizeof(string),"Something went wrong, try again..\nEXAMPLE: 31",EventInfo[EventName]);
					ShowDialog(playerid, Show:SkinsB, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Yes", "No");
					return 1;
		}
		EventInfo[EventSkin][1] = weaponid;
		format(string,sizeof(string),"You have choosen skin id: %d for Team B.",EventInfo[EventSkin][1]);
		SendClientMessage(playerid,-1,"EVENT NOTICE: "COL_LIGHTRED" You are now almost finnished with creating - /event_pos for all the positions!");
		creatingev[playerid] = 1;
		eventstarted = 0;

	}
	else
	{
		new string[128];
 		format(string,sizeof(string),"Input Secondary weapon again or go back...");
  		ShowDialog(playerid, Show:Skins, DIALOG_STYLE_INPUT, "Event Menu > Type > Event Name > Event Name Confirmation > Primary WeaponID", string, "Submit", "Cancel");
	}
	return 1;
}
new which;
new lastid;

LEANCMD:(event_pos)
{
	if(!creatingev[playerid]) return 1;
	new Float:X[4];
	new Y[2];
	GetPlayerPos(playerid,X[0],X[1],X[2]);
	GetPlayerFacingAngle(playerid, X[3]);
	Y[0] = GetPlayerInterior(playerid);
	Y[1] = GetPlayerVirtualWorld(playerid);
	if(EventInfo[EventType] == 0)
	{
		if(evcrim == 0 && EventInfo[EventType] == 0)
		{
		    evcrim = 1;
		 	SendClientMessage(playerid,-1,"Go stand at the suspects position. "COL_LIGHTRED"IMPORTANT: Face the direction you want the vehicle to face. Use this command again..");
			return 1;
		}
	    EventInfo[EventX][evenid] = X[0];
	    EventInfo[EventY][evenid] = X[1];
	    EventInfo[EventZ][evenid] = X[2];
	    EventInfo[EventAngle][evenid] = X[3];
	    EventInfo[EventInt][evenid] = Y[0];
	    EventInfo[EventVw][evenid] = Y[1];
	    if(evenid == 0)
		{
			new string[64];
			format(string,sizeof(string),"EVENT:"COL_LIGHTRED" Criminal Position (%d)",evenid);
	    	event3d[evenid] =  Create3DTextLabel(string, COLOR_WHITE, X[0], X[1], X[2], 30.0, GetPlayerVirtualWorld(playerid), 0);
			SendClientMessage(playerid,-1,"Criminal position set - "COL_LIGHTRED"/even_pos for the cops positions now..");
		}
		else{
			new string[64];
			format(string,sizeof(string),"EVENT:"COL_FACTION" Cop Position (%d)",evenid);
	    	event3d[evenid] =  Create3DTextLabel(string, COLOR_WHITE, X[0], X[1], X[2], 30.0, GetPlayerVirtualWorld(playerid), 0);
		    SendClientMessage(playerid,-1,"[EVENT NOTICE]: "COL_LIGHTRED"Cop position set.");
		}
	    evenid++;
	    if(evenid == GetPlayersOnServer())
		{
			SendClientMessage(playerid,-1,"All positions that are needed are now saved - "COL_LIGHTRED"/event_start to start the event.");
			canstart = 1;
			evenid = 0;
			evcrim = 0;
			creatingev[playerid] = 0;
			return 1;
		}
		return 1;
	}
	if(EventInfo[EventType] == 1)
	{
	    if(evcrim == 0 && EventInfo[EventType] == 1)
		{
		    evcrim = 1;
		 	SendClientMessage(playerid,-1,"Go stand at the team A side "COL_LIGHTRED"IMPORTANT: Face the direction you want the PLAYER to face. Use this command again..");
		 	SCM(playerid,COLOR_WHITE,"[IMPORTANT!!]"COL_LIGHTRED"Use /mark for help, remember, you set once Team A pos, then TEAM B position, then A, then B. Not A, a ,a. etc");
			return 1;
		}

	    if(which == 0)
		{
		    if(IsPlayerInRangeOfPoint(playerid, 15.0, EventInfo[EventX][lastid], EventInfo[EventY][lastid], EventInfo[EventZ][lastid])) return SCM(playerid,COLOR_WHITE,"[EVENT] You are too close to team A position for Team B..Go further away.");
            lastid = evenid;
			which = 1;
			new string[64];
			format(string,sizeof(string),"EVENT:"COL_LIGHTRED" Team A position: %s(%d)",EventInfo[EventTeamA],evenid);
	    	event3d[evenid] =  Create3DTextLabel(string, COLOR_WHITE, X[0], X[1], X[2], 30.0, GetPlayerVirtualWorld(playerid), 0);
			SendClientMessage(playerid,-1,"Team A position set "COL_LIGHTRED" go to Team B position and /event_pos");
   			EventInfo[EventX][evenid] = X[0];
    		EventInfo[EventY][evenid] = X[1];
	    	EventInfo[EventZ][evenid] = X[2];
	    	EventInfo[EventAngle][evenid] = X[3];
	    	EventInfo[EventInt][evenid] = Y[0];
	    	EventInfo[EventVw][evenid] = Y[1];
		}
		else{
		    if(IsPlayerInRangeOfPoint(playerid, 15.0,EventInfo[EventX][lastid],EventInfo[EventY][lastid], EventInfo[EventZ][lastid])) return SCM(playerid,COLOR_WHITE,"[EVENT] You are too close to team A position for Team B..Go further away.");
            lastid = evenid;
			which = 0;
			new string[64];
			format(string,sizeof(string),"EVENT:"COL_FACTION" Team B position: %s(%d)",EventInfo[EventTeamA],evenid);
	    	event3d[evenid] =  Create3DTextLabel(string, COLOR_WHITE, X[0], X[1], X[2], 30.0, GetPlayerVirtualWorld(playerid), 0);
		    SendClientMessage(playerid,-1,"Team B position set "COL_LIGHTRED" go to Team A position and /event_pos");
 	    	EventInfo[EventX][evenid] = X[0];
	    	EventInfo[EventY][evenid] = X[1];
	    	EventInfo[EventZ][evenid] = X[2];
	    	EventInfo[EventAngle][evenid] = X[3];
	    	EventInfo[EventInt][evenid] = Y[0];
	    	EventInfo[EventVw][evenid] = Y[1];
		}
	    evenid++;
	    if(evenid == GetPlayersOnServer())
		{
			SendClientMessage(playerid,-1,"All positions that are needed are now saved - "COL_LIGHTRED"/event_start to start the event.");
			canstart = 1;
			evenid = 0;
			evcrim = 0;
			creatingev[playerid] = 0;
			return 1;
		}
	}
    return 1;
}

LEANCMD:(debugg)
{
	SCM(playerid,-1,"Goin to last saved position...hopefully!");
	SetPlayerPos(playerid, EventInfo[EventX][lastid],EventInfo[EventY][lastid], EventInfo[EventZ][lastid]);
	return 1;
}


forward checkevent();

public checkevent()
{
	new string[128];
	new end;
	if(EVENTATEAM == 0)
	{
	    end = 5;
	    format(string, sizeof(string),"[EVENT NOTICE] Team 'B' has just won the event!");
 	}
	if(EVENTBTEAM == 0)
	{
	    end = 5;
	    format(string,sizeof(string),"[EVENT NOTICE] Team 'B' has just won the event!");
	}
	SendClientMessageToAll(COLOR_WHITE,string);
	if(end == 5)
	{
		for(new i=0; i <=  GetPlayerPoolSize(); i++)
			{
				if(IsPlayerConnected(i))
				{
		  			if(isinevent[i] == 1)
			    	{
						SpawnPlayer(i);
						isinevent[i] = 0;
						eventteamtype[i] = 0;
						joined[i] = 0;
					}
				}
			}
		for(new i=0; i <= GetVehiclePoolSize(); i++)
	      	{
	  	  		if(EVENTCARS[i] == 1)
	        	{
	        	    EVENTCARS[i] = 0;
					DestroyVehicle(i);
	  			}
	   	 	}
	}
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
    if(eventstarted)
    {
        if(isinevent[playerid] == 1)
        {
			new string[128];
            if(eventteamtype[playerid] == 1) // IF TEAM 'A'
            {
                joined[playerid] = 0;
                EVENTATEAM--;
                format(string,sizeof(string),"[EVENT TEAM: A]  %s has disconnected from the event..",GetICName(playerid));
                
			}
			if(eventteamtype[playerid] == 2) // IF TEAM 'B'
			{
			    joined[playerid] = 0;
			    EVENTBTEAM--;
			    format(string,sizeof(string),"[EVENT TEAM: A]  %s has disconnected from the event..",GetICName(playerid));
			}
			SendClientMessageToAll(-1,string);
			SetTimer("checkevent",2000,0);
		}
    }
    return 1;
}



public OnPlayerDeath(playerid, killerid, reason)
{

    if(eventstarted)
    {
	        if(isinevent[playerid] == 1)
	        {
				new string[128];
	            if(eventteamtype[playerid] == 1) // IF TEAM 'A'
	            {
	                joined[playerid] = 0;
	                EVENTATEAM--;
	                format(string,sizeof(string),"[EVENT TEAM: A]  Suspect %s from the pursuit has just died. Killer:(%s) %s",GetICName(playerid),GetICName(killerid),reason);
				}
				if(eventteamtype[playerid] == 2) // IF TEAM 'B'
				{
				    joined[playerid] = 0;
	   				EVENTBTEAM--;
				    format(string,sizeof(string),"[EVENT TEAM: B] Police %s has just died. Killer: %s (%s)",GetICName(playerid),GetICName(killerid),reason);
				}
				isinevent[playerid] = 0;
				eventteamtype[playerid] = 0;
				SendClientMessageToAll(-1,string);
				SetTimer("checkevent",1000,0);
			}
    }

    
    return 1;
}




forward eventstart();
public eventstart()
{
	// If the event is a pursuit
        eventstarted = 1;
		new string[128];
		canjoin = 0;
		evenid = 0;
		format(string,sizeof(string),"[EVENT] event %s has started and is no longer joinable..",EventInfo[EventName]);
		SendClientMessageToAll(-1,string);
		for(new i=0; i <=  GetPlayerPoolSize(); i++)
		{
			if(IsPlayerConnected(i))
			{
			    Delete3DTextLabel(event3d[i]);
	  			if(isinevent[i] == 1)
		    	{
		        	TogglePlayerControllable(i, true);
		        	GameTextForPlayer( i, "EVENT STARTED!\n [~r~GO GO GO[!",5000, 5 );
				}
			}
		}
		return 1;
}

LEANCMD:(event_force)
{
    if(!canstart) return SendClientMessage(playerid,-1,"There is no event to force start..");
	new string[128];
	format(string,sizeof(string),"[EVENT]"COL_LIGHTRED" %s has been force started by Admin %s",EventInfo[EventName],GetICName(playerid));
	SendClientMessageToAll(-1,string);
	eventstart();
	KillTimer(eventtimer);
	return 1;
}


LEANCMD:(event_start)
{
	if(!canstart) return SendClientMessage(playerid,-1,"no event to start../event");
	new string[128];
	format(string,sizeof(string),"Admin %s has created an %s (%s) event - "COL_LIGHTRED"/event_join to join!",GetICName(playerid),GetEventType(EventInfo[EventType]),EventInfo[EventName]);
	SendClientMessageToAll(-1,string);
	canjoin = 1;
	EVENTATEAM = 0;
	EVENTBTEAM = 0;
	evenid = 0;
	which = 0;
    format(string,sizeof(string),"[EVENT] "COL_LIGHTRED"The event %s (%s) will start in approxmetly 30 seconds, make sure to join!",GetEventType(EventInfo[EventType]),EventInfo[EventName]);
	SendClientMessageToAll(-1,string);
	eventtimer = SetTimer("eventstart", 30000, 0);
	return 1;
}




LEANCMD:(event_join)
{
	if(!canjoin) return SCM(playerid,COLOR_LIGHTRED,"No event to join..");
	if(joined[playerid] == 1) return SCM(playerid,COLOR_LIGHTRED,"You have already joined an event..");
	new string[128];
	if(EventInfo[EventType] == 0 && evenid == 0)
 	{
 	    joined[playerid] = 1;
 	    SetPlayerSkin(playerid,EventInfo[EventSkin][0]);
 	    SCM(playerid,-1,"You are the criminal of the pursuit! - Your job is to evade!");
 	    format(string,sizeof(string),"[Event] %s Has joined the pursuit event and is the criminal!",GetICName(playerid));
 	    SendClientMessageToAll(-1,string);
	 	PutPlayerInVehicle(playerid,CreateVehicle(EventInfo[EventSusVeh], EventInfo[EventX][evenid], EventInfo[EventY][evenid], EventInfo[EventZ][evenid], EventInfo[EventAngle][evenid], 0, 1, 0), 10000);
  		new veh = GetPlayerVehicleID(playerid);
  		PutPlayerInVehicle(playerid,veh,0);
  		EVENTCRIMCAR[veh] = 1;
		evenid++;
		TogglePlayerControllable(playerid, false);
		SetPlayerHealth(playerid,150);
		SetPlayerArmour(playerid,50);
		ResetPlayerWeapons(playerid);
		GivePlayerWeapon(playerid,EventInfo[EventWeapon][0],EventInfo[EventAmmo][0]);
		GivePlayerWeapon(playerid,EventInfo[EventWeapon][1],EventInfo[EventAmmo][1]);
		SetPlayerColor(playerid,COLOR_WHITE);
		EVENTATEAM++;
		EVENTCARS[veh] = 1;
		isinevent[playerid] = 1;
		eventteamtype[playerid] = 1;
		return 1;
	}
	else if(EventInfo[EventType] == 0 && evenid > 0)
	{
	    joined[playerid] = 1;
	    SetPlayerSkin(playerid,EventInfo[EventSkin][1]);
 		format(string,sizeof(string),"[Event] %s Has joined the pursuit event and is a "COL_LIGHTRED"cop",GetICName(playerid));
 	    SendClientMessageToAll(-1,string);
 		SCM(playerid,-1,"You are a cop of the pursuit! - Your job is to catch the suspect..!");
  		PutPlayerInVehicle(playerid, CreateVehicle(EventInfo[EventCopVeh], EventInfo[EventX][evenid], EventInfo[EventY][evenid], EventInfo[EventZ][evenid], EventInfo[EventAngle][evenid], 0, 1, 0), 10000);
		evenid++;
		new veh = GetPlayerVehicleID(playerid);
  		PutPlayerInVehicle(playerid,veh,0);
  		TogglePlayerControllable(playerid, false);
		SetPlayerHealth(playerid,150);
		SetPlayerArmour(playerid,100);
		ResetPlayerWeapons(playerid);
		GivePlayerWeapon(playerid,EventInfo[EventWeapon][0],EventInfo[EventAmmo][0]);
		GivePlayerWeapon(playerid,EventInfo[EventWeapon][1],EventInfo[EventAmmo][1]);
		SetPlayerColor(playerid,COLOR_DUTY);
		EVENTBTEAM++;
		EVENTCARS[veh] = 1;
		isinevent[playerid] = 1;
		eventteamtype[playerid] = 2;
		return 1;
	}
	if(EventInfo[EventType] == 1)
	{
	    if(which == 0) // If last player joined Team B we set them to Team A.
	    {
	        joined[playerid] = 1;
	        SetPlayerColor(playerid, COLOR_LIGHTRED);
	 		SetPlayerSkin(playerid,EventInfo[EventSkin][0]);
	 	    format(string,sizeof(string),"[Event] %s Has joined the event and is in the team %s (Team'A')",GetICName(playerid),EventInfo[EventTeamA]);
	 	    SendClientMessageToAll(-1,string);
	 	    SetPlayerInterior(playerid,EventInfo[EventInt][evenid]);
	 	    SetPlayerVirtualWorld(playerid,EventInfo[EventVw][evenid]);
		 	SetPlayerPos(playerid, EventInfo[EventX][evenid], EventInfo[EventY][evenid], EventInfo[EventZ][evenid]);
		 	SetPlayerFacingAngle(playerid, EventInfo[EventAngle][evenid]);
			evenid++;
			TogglePlayerControllable(playerid, false);
			SetPlayerHealth(playerid,150);
			SetPlayerArmour(playerid,50);
			ResetPlayerWeapons(playerid);
			GivePlayerWeapon(playerid,EventInfo[EventWeapon][0],EventInfo[EventAmmo][0]);
			GivePlayerWeapon(playerid,EventInfo[EventWeapon][1],EventInfo[EventAmmo][1]);
			SetPlayerColor(playerid,COLOR_WHITE);
			EVENTATEAM++;
			isinevent[playerid] = 1;
			eventteamtype[playerid] = 1;
			which = 1;
			return 1;
		}
  		if(which == 1) // If last player joined Team B we set them to Team A.
	    {
	        joined[playerid] = 1;
	 		SetPlayerSkin(playerid,EventInfo[EventSkin][1]);
	 		SetPlayerColor(playerid,COLOR_DUTY);
	 	    format(string,sizeof(string),"[Event] %s Has joined the event and is in the team %s (Team'B')",GetICName(playerid),EventInfo[EventTeamB]);
	 	    SendClientMessageToAll(-1,string);
	 	    SetPlayerInterior(playerid,EventInfo[EventInt][evenid]);
	 	    SetPlayerVirtualWorld(playerid,EventInfo[EventVw][evenid]);
		 	SetPlayerPos(playerid, EventInfo[EventX][evenid], EventInfo[EventY][evenid], EventInfo[EventZ][evenid]);
		 	SetPlayerFacingAngle(playerid, EventInfo[EventAngle][evenid]);
			evenid++;
			TogglePlayerControllable(playerid, false);
			SetPlayerHealth(playerid,150);
			SetPlayerArmour(playerid,50);
			ResetPlayerWeapons(playerid);
			GivePlayerWeapon(playerid,EventInfo[EventWeapon][0],EventInfo[EventAmmo][0]);
			GivePlayerWeapon(playerid,EventInfo[EventWeapon][1],EventInfo[EventAmmo][1]);
			SetPlayerColor(playerid,COLOR_WHITE);
			EVENTBTEAM++;
			isinevent[playerid] = 1;
			eventteamtype[playerid] = 1;
			which = 0;
			return 1;
		}
	}
	return 1;
}



public OnVehicleDeath(vehicleid, killerid)
{
	if(EVENTCRIMCAR[vehicleid] == 1)
	{
	    EVENTCRIMCAR[vehicleid] = 0;
	    new string[128];
	    format(string,sizeof(string),"[Event] The pursuit vehicle has exploded! Kill the suspect!");
	    SendClientMessageToAll(-1,string);
	    return 1;
	}

    return 1;
}

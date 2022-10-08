/* Leans Spectating system, startdate: 2016-06-05 11:59 */





/* News */

new Float:SpecX[MAX_PLAYERS], Float:SpecY[MAX_PLAYERS], Float:SpecZ[MAX_PLAYERS], vWorld[MAX_PLAYERS], Inter[MAX_PLAYERS];
new bool:IsSpecing[MAX_PLAYERS] =  false;
new spectatorid[MAX_PLAYERS] =  0;
new specveh[MAX_PLAYERS];
new bool:nospeci[MAX_PLAYERS];
new	bool:specid[MAX_PLAYERS][MAX_PLAYERS];
new SpecTime[MAX_PLAYERS];
new SpecTimeOff[MAX_PLAYERS][MAX_PLAYERS];

#define SPEC_ANY 0
#define SPEC_LAW 1
#define SPEC_CRIMINALS 2
#define PLAYER_SPECTATE_ID spectatorid[playerid]



/* Forwards */

forward PlayerAWP(playerid, id);
forward Specoff(playerid);


/* Publics */

public PlayerAWP(playerid, id)
{
	if(playerid == id)
	{	
		SCM(playerid, -1, "SERVER: Something went wrong with spectate system, quiting spectate, try again.");
		Specoff(playerid);
		return 1;
	}
    disableTP[playerid] = true;
	TogglePlayerSpectating(playerid, true); 
    SetPlayerInterior(playerid,GetPlayerInterior(id));
    SetPlayerVirtualWorld(playerid,GetPlayerVirtualWorld(id)); 
    IsSpecing[playerid] = true; 
    GetPlayerPos(id, XTP[playerid], YTP[playerid], ZTP[playerid]);
    spectatorid[playerid] = id; 
    ShowPlayerNameTagForPlayer(playerid, id, 1); 
    new string[128];
    if(PlayerInfo[playerid][pAdmin] < 1)
    {
    	format(string, sizeof(string),"[ ! ] "COL_WHITE"You are now spectating "COL_LIGHTRED"%s!",GetName(id)); 
    	SCM(playerid, COLOR_LIGHTRED, string); 
	}
	if(PlayerInfo[playerid][pAdmin] > 4)
	{
		format(string, sizeof(string), "LeadWarn(%d): %s is now spectating %s (%d)",ALEVEL, GetName(playerid), GetName(id), id);
		SendLeadMessage(COLOR_YELLOW, string);
	}

	if(PlayerInfo[playerid][pAdmin] < 5)
	{
		format(string, sizeof(string), "AdmWarn(%d): %s is now spectating %s (%d)",ALEVEL, GetName(playerid), GetName(id), id);
		SendAdminMessage(COLOR_YELLOW, string);
	}

    if(IsPlayerInAnyVehicle(id)) 
    {
        PlayerSpectateVehicle(playerid,GetPlayerVehicleID(id)); 
        specveh[playerid] = GetPlayerVehicleID(id);
    }
    else 
    {
        PlayerSpectatePlayer(playerid,id); 
        specveh[playerid] = INVALID_VEHICLE_ID;
    }
	SpecTime[playerid] = GetTickCount();
    return 1;
}

public Specoff(playerid)
{
	SpecTimeOff[playerid][PLAYER_SPECTATE_ID] = GetTickCount();
	TogglePlayerSpectating(playerid, 0);
	specid[playerid][spectatorid[playerid]] = false;
	IsSpecing[playerid] = false;
	disableTP[playerid] = false;
	specveh[playerid] = INVALID_VEHICLE_ID;
	return 1;
}

/* Commands */
LEANCMD:(awp)
{
	if ((nospec) && PlayerInfo[playerid][pAdmin] < 4)
	{
		SendClientMessage(playerid, COLOR_GRAD2, "The spectate has been disabled by an admin.");
		return 1;
	}


	if(strcmp(params,"off",true) == 0)
   	{
        TogglePlayerSpectating(playerid, 0);
        specid[spectatorid[playerid]][playerid] = false;
        Specoff(playerid);
   		return 1;
   	}

	
	new
	    id;
	if(strcmp(params,"fix",true) == 0) //Checking if player typed /awp off
   	{
		if(IsSpecing[playerid] == false) return SCM(playerid, COLOR_LIGHTRED, "Fix what? You are not watching anyone.");
		PlayerAWP(playerid, spectatorid[playerid]);
   		return 1;
   	}
	

	if(sscanf(params,"u", id)) return SCM(playerid, COLOR_GREY, "USAGE: /awp [playerid/off/fix]");

	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG

	if(AdminDuty[id] == true && PlayerInfo[playerid][pAdmin] < 4) return SCM(playerid, COLOR_YELLOW, "This player is on adminduty.");


    if(id == playerid) return SendClientMessage(playerid, COLOR_LIGHTRED, "Watch yourself?");

    if(IsSpecing[id] == true) return SCM(playerid, COLOR_LIGHTRED, "This player is spectating someone.");


	if(nospeci[id] == true)
	{
		if(specid[playerid][id] == false && PlayerInfo[playerid][pAdmin] < 1)
		{
			SendRequest(playerid, id);
			return 1;
		}
	}

	if(IsSpecing[playerid] == false)
	{
	 	GetPlayerPos(playerid,SpecX[playerid],SpecY[playerid],SpecZ[playerid]);// This is getting and saving the player's position in a variable so they'll respawn at the same place they typed '/awp'
	    Inter[playerid] = GetPlayerInterior(playerid);// Getting and saving the interior.
	    vWorld[playerid] = GetPlayerVirtualWorld(playerid);//Getting and saving the virtual world.
	}
    PlayerAWP(playerid, id); 
    SCM(playerid, COLOR_LIGHTRED, "NOTE: "COL_WHITE"Type /awp fix if anything messes up, "COL_LIGHTRED" 'SPACE' "COL_WHITE" to switch spec type.");
	SCM(playerid, COLOR_LIGHTRED, "NOTE: "COL_WHITE"You can switch between players by clicking "COL_LIGHTRED"shoot"COL_WHITE" button or "COL_LIGHTRED"aim"COL_WHITE" button on your mouse.");
	return 1;
}
new Spec_RequestTimer[MAX_PLAYERS];
new request[MAX_PLAYERS] = INVALID_PLAYER_ID;
new bool:Isrequested[MAX_PLAYERS];
stock SendRequest(playerid, id)
{
		new rstring[128];
		SCM(playerid, COLOR_LIGHTRED, "SERVER: The player will have to aprove your spectate prior to spectating.");
		format(rstring, sizeof(rstring),"SERVER: %s is requesting to spectate you, press 'Y' to accept it, 'N' to decline.",GetName(playerid));
		SCM(id, COLOR_YELLOW, rstring);
		SCM(id, COLOR_YELLOW, "SERVER: This request will automaticly be declined in 8 seconds if you dont respond. /togspec to disable requests.");
		request[id] = playerid;
		Isrequested[id] = true;
		Spec_RequestTimer[id] = SetTimerEx( "SpecDeny", 8000, false, "i", id );
		return 1;
}
new Spec_type[MAX_PLAYERS] = SPEC_ANY;
new spec_switch[MAX_PLAYERS] = 0;

forward SpecDeny(playerid);
public SpecDeny(playerid)
{
	request[playerid] = INVALID_PLAYER_ID;
	Isrequested[playerid] = false;
	return 1;
}

stock GetHighestID()
{
	new d;
	for(new id = 0; id <= GetPlayerPoolSize(); id++)
	{
	   d = id;
	}
	return d;
}

new spamcheck[MAX_PLAYERS];
new Spec_AntiSpam[MAX_PLAYERS];


stock SendSpectateError(playerid, stat)
{

	new interval;
	interval = GetTickCount() - spamcheck[playerid];
	new Seconds = (interval  / 1000);
	
	if(stat == 1 || stat == 0)
	{
	
		if(Seconds > 3)
		{
		
			if(stat)
			{
				SCM(playerid, COLOR_YELLOW, "SPECTATE: No players found, try go positive (KEY_FIRE) or switch spectate type (SPACE)!");
				spamcheck[playerid] = GetTickCount();
			}
			else
			{
				SCM(playerid, COLOR_YELLOW, "SPECTATE: No players found, try go negative (KEY_AIM) or switch spectate type (SPACE)!");
				spamcheck[playerid] = GetTickCount();
			}
			return 1;
		}
	}

	if(stat == 2)
	{
	
		if(interval > 1500)
		{
			SCM(playerid, COLOR_YELLOW, "SPECTATE: Please wait 3 seconds before trying to switch between players.");
			spamcheck[playerid] = GetTickCount();
			return 1;
		}
	}
	
	
	return 0;
}

stock AntiSpectateSpam(playerid)
{
	if(PlayerInfo[playerid][pAdmin] > 3) return 1;
	new interval;
	interval = GetTickCount() - Spec_AntiSpam[playerid];
	new Seconds = (interval  / 1000);
	if(Seconds > 3)
	{
		Spec_AntiSpam[playerid] = GetTickCount();
		return 1;
	}
	SendSpectateError(playerid, 2);
	return 0;
}

stock Spec_OnPlayerKeyStateChange(playerid, newkeys)
{
	if(request[playerid] != INVALID_PLAYER_ID && Isrequested[playerid] == true)
	{
		if(newkeys & KEY_YES)
		{
			new id = request[playerid];
			new string[128];
			format(string, sizeof(string),"SERVER: Player %s allowed you to spec him, you may now use (/awp)",GetName(playerid));
			SCM(id, COLOR_LIGHTRED, string);
			specid[id][playerid] = true;
			format(string, sizeof(string), "~n~~n~Spectate approved for:~n~~w~%s",GetName(id));
			GameTextForPlayer(playerid, string, 5000, 3);
			SpecDeny(playerid);
			KillTimer(Spec_RequestTimer[playerid]);
		}
		if(newkeys & KEY_NO)
		{
			new id = request[playerid];
			new string[128];
			format(string, sizeof(string), "~n~~n~Spectate declined for:~n~~w~%s",GetName(id));
			GameTextForPlayer(playerid, string, 5000, 3);
			SpecDeny(playerid);
			KillTimer(Spec_RequestTimer[playerid]);
		}
	}
	

	if(IsSpecing[playerid] == true)
	{
		if(newkeys & KEY_AIM)
		{
			switch(Spec_type[playerid])
			{
				case SPEC_ANY:
				{
					new toloopfrom = spectatorid[playerid];
					if(spectatorid[playerid] == 0)
					{
						toloopfrom = GetHighestID();
					
					}
					for (new id = toloopfrom; id >= 0; id--)
					{
						if(id != playerid && id != spectatorid[playerid] && id != INVALID_PLAYER_ID)
						{
							if(!(AdminDuty[id] == true && PlayerInfo[playerid][pAdmin] < 4))
							{
								if(nospeci[id] == true && ALEVEL > 1 || nospeci[id] == true && specid[playerid][id] == true || nospeci[id] == false)
								{
									if(AntiSpectateSpam(playerid))
									{
										PlayerAWP(playerid, id);
										return 1;
									}
								}
							}
						}
					}
				}
				case SPEC_LAW:
				{
					new toloopfrom = spectatorid[playerid];
					if(spectatorid[playerid] == 0)
					{
						toloopfrom = GetHighestID();
					
					}
					for (new id = toloopfrom; id >= 0; id--)
					{
						if(id != playerid && id != spectatorid[playerid] && Law_Duty[id] == true  && id != INVALID_PLAYER_ID)
						{
							if(!(AdminDuty[id] == true && PlayerInfo[playerid][pAdmin] < 4))
							{
								if(nospeci[id] == true && ALEVEL > 1 || nospeci[id] == true && specid[playerid][id] == true || nospeci[id] == false)
								{
									if(AntiSpectateSpam(playerid))
									{
										PlayerAWP(playerid, id);
										return 1;
									}
								}
							}
						}
					}
				}
				case SPEC_CRIMINALS:
				{

					new toloopfrom = spectatorid[playerid];
					if(spectatorid[playerid] == 0)
					{
						toloopfrom = GetHighestID();
					
					}
					for (new id = toloopfrom; id >= 0; id--)
					{
						if(id != playerid && id != spectatorid[playerid] && Criminal[id] == true  && id != INVALID_PLAYER_ID)
						{
							if(!(AdminDuty[id] == true && PlayerInfo[playerid][pAdmin] < 4))
							{
								if(nospeci[id] == true && ALEVEL > 1 || nospeci[id] == true && specid[playerid][id] == true || nospeci[id] == false)
								{
									if(AntiSpectateSpam(playerid))
									{
										PlayerAWP(playerid, id);
										return 1;
									}
								}
							}
						}
					}
				}
			}
			SendSpectateError(playerid, 1);
		}
		
		if(newkeys & KEY_FIRE)
		{
			switch(Spec_type[playerid])
			{
				case SPEC_ANY:
				{
					new toloopfrom = spectatorid[playerid];
					if(toloopfrom == GetHighestID())
					{
						toloopfrom = 0;
					
					}
					for(new id = toloopfrom; id <= GetPlayerPoolSize(); id++)
					{
						if(!(AdminDuty[id] == true && PlayerInfo[playerid][pAdmin] < 4))
						{
							if(id != spectatorid[playerid] && id != playerid  && id != INVALID_PLAYER_ID)
							{
								if(nospeci[id] == true && ALEVEL > 1 || nospeci[id] == true && specid[playerid][id] == true || nospeci[id] == false)
								{
									if(AntiSpectateSpam(playerid))
									{
										PlayerAWP(playerid, id);
										return 1;
									}
								}
							}
						}
					}
				}
				case SPEC_LAW:
				{
					new toloopfrom = spectatorid[playerid];
					if(toloopfrom == GetHighestID())
					{
						toloopfrom = 0;
					
					}
					for(new id = toloopfrom; id <= GetPlayerPoolSize(); id++)
					{
						if(!(AdminDuty[id] == true && PlayerInfo[playerid][pAdmin] < 4))
						{
							if(id != spectatorid[playerid] && id != playerid && Law_Duty[id] == true  && id != INVALID_PLAYER_ID)
							{
								if(nospeci[id] == true && ALEVEL > 1 || nospeci[id] == true && specid[playerid][id] == true || nospeci[id] == false)
								{
									if(AntiSpectateSpam(playerid))
									{
										PlayerAWP(playerid, id);
										return 1;
									}
								}
							}
						}
					}
				}
				case SPEC_CRIMINALS:
				{
					new toloopfrom = spectatorid[playerid];
					if(toloopfrom == GetHighestID())
					{
						toloopfrom = 0;
					}
					for(new id = toloopfrom; id <= GetPlayerPoolSize(); id++)
					{
						if(!(AdminDuty[id] == true && PlayerInfo[playerid][pAdmin] < 4))
						{
							if(id != spectatorid[playerid] && id != playerid && Criminal[id] == true  && id != INVALID_PLAYER_ID)
							{
								if(nospeci[id] == true && ALEVEL > 1 || nospeci[id] == true && specid[playerid][id] == true || nospeci[id] == false)
								{
									if(AntiSpectateSpam(playerid))
									{
										PlayerAWP(playerid, id);
										return 1;
									}
								}
							}
						}
					}
				}
			}
			SendSpectateError(playerid, 0);
		}
		
		
		
		if(newkeys & KEY_SPRINT)
		{
			switch(spec_switch[playerid])
			{
				case SPEC_ANY:
				{
					GameTextForPlayer(playerid, "~n~~n~~n~~p~Spectype: ~w~anyone.", 2000, 3);
					Spec_type[playerid] = SPEC_ANY;
					spec_switch[playerid] = 1;
				}
				case SPEC_LAW:
				{
					GameTextForPlayer(playerid, "~n~~n~~n~~p~Spectype: ~b~law personel.", 2000, 3);
					Spec_type[playerid] = SPEC_LAW;
					spec_switch[playerid] = 2;
				}
				case SPEC_CRIMINALS:
				{
					GameTextForPlayer(playerid, "~n~~n~~n~~p~Spectype: ~r~criminals.", 2000, 3);
					Spec_type[playerid] = SPEC_CRIMINALS;
					spec_switch[playerid] = 0;
				}
			}
		}
	}
	return 1;
}


LEANCMD:(togspec)
{
	if(nospeci[playerid] == false)
	{
        nospeci[playerid] = true;
        SCM(playerid, COLOR_LIGHTRED, "Everyone will have to ask for permission to spec you.");
		return 1;
	}
	if(nospeci[playerid] == true)
	{
        nospeci[playerid] = false;
        SCM(playerid, COLOR_LIGHTRED, "Everyone will be able to spec you without permission.");
		return 1;
	}
	return 1;
}


LEANCMD:(speclist)
{
    if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED

	new 
		string[ MAX_PLAYER_NAME + MAX_PLAYER_NAME + 60 ], 
		specDialog[700],
		d;
	EachPlayer(i)
	{
				
		new 
					intervaloff = GetTickCount() - SpecTimeOff[i][i],
					SecondsOff = (intervaloff  / 1000);
		if(SecondsOff < 280)
		{
			if(PlayerInfo[playerid][pAdmin] >= PlayerInfo[i][pAdmin])
			{

				format(string, sizeof(string), "{FFFFFF}%s(%d) spectated %s(%d) %d seconds ago\n",GetName(i),i,GetName(spectatorid[i]),spectatorid[i], SecondsOff);
		        strcat(specDialog, string);
				d++;
			}
		}
		if(IsSpecing[i] == true)
		{
		    if(PlayerInfo[playerid][pAdmin] >= PlayerInfo[i][pAdmin])
			{
				new 
					interval = GetTickCount() - SpecTime[i],
					Seconds = (interval  / 1000);
				format(string, sizeof(string), "{FFFFFF}%s(%d) -> %s(%d) Duration: %d seconds\n",GetName(i),i,GetName(spectatorid[i]),spectatorid[i], Seconds);
		        strcat(specDialog, string);
				d++;
			}
		}

	}
	if(d > 0)
	{
		ShowDialog(playerid, Show:SpecList, DIALOG_STYLE_LIST, "Spectators {006400}ACTIVE - {AFAFAF}INACTIVE", specDialog, "Ok", "");
	}
	else
	{
		ShowDialog(playerid, Show:SpecList, DIALOG_STYLE_LIST, "Spectators", "No spectators..", "Ok", "Ok");
	}
	return 1;
}




Dialog:SpecList(playerid, response, listitem, inputtext[])
{
	return 1;
}

LEANCMD:(specapprove)
{
	new id;
	if(sscanf(params, "u", id)) return SCM(playerid, COLOR_LIGHTRED, "USAGE: /specapprove [PlayerID/PartOfName]");
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG

	new string[128];

	format(string, sizeof(string),"SERVER: Player %s allowed you to spec him, you may now use (/awp)",GetName(playerid));
	SCM(id, COLOR_LIGHTRED, string);
	specid[id][playerid] = true;
	return 1;
}


LEANCMD:(togaspec)
{
	new string[75];
    if (PlayerInfo[playerid][pAdmin] >= 4 && (!nospec))
	{
		nospec = true;
        format(string, sizeof(string), "AdmWarn(%d): %s has disabled Spectate System.",PlayerInfo[playerid][pAdmin], GetName(playerid));
        SendAdminMessage(COLOR_YELLOW, string);
        EachPlayer(i)
        {
          if (PlayerInfo[i][pAdmin] <= 1 && IsSpecing[i] == true)
          {
          		TogglePlayerSpectating(i, 0);
		  }
		}
		return 1;

	}
	else if (PlayerInfo[playerid][pAdmin] >= 4 && (nospec))
	{
		nospec = false;
        format(string, sizeof(string), "AdmWarn(%d): %s has enabled Spectate System.",PlayerInfo[playerid][pAdmin], GetName(playerid));
		SendAdminMessage(COLOR_YELLOW, string);
		return 1;
	}
	else return ADMIN_UNAUTHORIZED
}

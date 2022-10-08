/* Admin Commands */

LEANCMD:(payday)
{
	if(PlayerInfo[playerid][pAdmin] <= 4) return ADMIN_UNAUTHORIZED
	EachPlayer( i)
	{
	    PayDay(i);
	}
	return 1;
}

LEANCMD:(lastcmd)
{
    if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
    new
		interval,string[128],id;

	if(sscanf(params,"u",id)) return SCM(playerid,COLOR_GREY,"USAGE: /lastcmd [partofname/playerid]");
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
   	interval = GetTickCount() - gPlayerCommand[id];
	new Seconds = (interval  / 1000);
	format(string,sizeof(string),"[AFK] 0%d %s's last command was %d seconds ago.", id, GetName(id), Seconds);
	SCM(playerid,COLOR_GREY,string);
	return 1;
}


LEANCMD:(realchat)
{
    if (PlayerInfo[playerid][pAdmin] <= 3) return ADMIN_UNAUTHORIZED
    realchat = !realchat;
    SendClientMessage(playerid,COLOR_GREY,realchat ?  ("   IC Chat has been enabled by an Admin!") : "   IC Chat has been disabled by an Admin!");
	return 1;
}

LEANCMD:(as)
{
	if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
	new id;
	
	if(sscanf(params,"u",id)) return SCM(playerid, COLOR_LIGHTRED, "USAGE: /as [PartOfName/Playerid]");
	
	new string[128];
	
	format(string, sizeof(string),"Player: %s (Packetloss: %f)",GetName(id),NetStats_PacketLossPercent(id) );
	SCM(playerid, COLOR_LIGHTRED, string);
	
	new
		Float:HP,
		Float:Armor;
	GetPlayerHealth(id, HP);
	GetPlayerArmour(id, Armor);
	
	new iSeat = GetPlayerVehicleSeat(id);
	
	format(string, sizeof(string),"Car ID: [%d], Car Seat: [%d],  Health: [%f], Armour: [%f], Cheat Warning Triggers: [%d]",GetPlayerVehicleID(id), iSeat, HP, Armor, PlayerInfo[id][CheatWarnings] );
	SCM(playerid, COLOR_GREY, string);
	
	format(string, sizeof(string),"Money: [$%d], World: [%d], Interior: [%d], State: [%d], Freq: [%d]",PlayerInfo[id][pCash], GetPlayerVirtualWorld(id), GetPlayerInterior(id),GetPlayerState(playerid), PlayerInfo[id][Freq] );
	SCM(playerid, COLOR_GREY, string);

	new maski[16];
	GetPVarString(id, "MaskID", maski, sizeof(maski));
	format(string, sizeof(string), "[Mask %s]",maski);
	
	format(string, sizeof(string),"UserID: [%d], Skin: [%d] Mask: [%s]",PlayerInfo[id][userid], GetPlayerSkin(id), maski );
	SCM(playerid, COLOR_GREY, string);
	
 	new interval = GetTickCount() - gPlayerConnectedTime[id];
	new SecondsConnect = (interval  / 1000);
	new intervals = GetTickCount() - gPlayerCommand[id];
	new SecondsCmd = (intervals  / 1000);
	format(string, sizeof(string),"Last CMD: [%d] Seconds on: [%d] Last On:%s Account Created:%s",SecondsCmd, SecondsConnect,PlayerInfo[id][pLastOn], PlayerInfo[id][pAccCreation]);
	SCM(playerid, COLOR_GREY, string);

	return 1;
}
 

LEANCMD:(banip)
{
	new bIP[16], dString[128];

	if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED

	if(sscanf(params,"s",bIP)) return SCM(playerid, COLOR_LIGHTRED, "USAGE: /banip [ip]");

	format(dString, sizeof(dString),"banip %s", bIP);
	SendRconCommand(dString);
	SendRconCommand("reloadbans");

	format(dString, sizeof(dString),"You have succefully added the IP adress %s to the ban list.", bIP);
	SCM(playerid,COLOR_YELLOW, dString);

	format(dString, sizeof(dString),"AdmWarn(%d): %s has added IP adress %s to the ban list.",ALEVEL, GetName(playerid), bIP);
	SendAdminMessage(COLOR_YELLOW, dString);

	return 1;
}


LEANCMD:(unbanip)
{
	new bIP[16], dString[128];

	if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED

	if(sscanf(params,"s",bIP)) return SCM(playerid, COLOR_LIGHTRED, "USAGE: /unbanip [ip]");

	format(dString, sizeof(dString),"unbanip %s", bIP);
	SendRconCommand(dString);
	SendRconCommand("reloadbans");

	format(dString, sizeof(dString),"You have succefully removed IP adress %s from the ban list.",bIP);
	SCM(playerid,COLOR_YELLOW, dString);

	format(dString, sizeof(dString),"AdmWarn(%d): %s has removed IP adress %s from the ban list.",ALEVEL, GetName(playerid), bIP);
	SendAdminMessage(COLOR_YELLOW, dString);

	return 1;
}

LEANCMD:(setint)
{

	if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED

	new
	    id,
	    intid,
	    string[ 128 ];

	if( sscanf( params, "ud",id, intid )) return SCM( playerid,COLOR_LIGHTRED,"USAGE: /setint [playerid/PartOfName] [interiorid]");

	if( id == INVALID_PLAYER_ID ) return INVALID_PLAYERMSG

	if (PlayerInfo[playerid][pAdmin] < PlayerInfo[id][pAdmin]) return SendClientMessage(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"This player is higher ranked admin than you are.");

	format( string, sizeof( string ),"AdmWarn(%d): %s has set interiorid %d on player %s.",ALEVEL, GetName( playerid ), intid, GetName( id ) );

	SendAdminMessage( COLOR_YELLOW, string );

	format( string, sizeof( string ), "Your interior has been set to %d by admin %s.",intid, GetName( playerid ) );

	SCM( id, COLOR_LIGHTRED, string );

	SetPlayerInterior( id, intid );

	return 1;

}


LEANCMD:(attachcar)
{
	new vehicleID;
	if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
	if(sscanf(params,"d",vehicleID)) return SCM(playerid,COLOR_LIGHTRED,"USAGE: /attachcar [vehicleid]");
	if(!IsValidVehicle(vehicleID)) return SCM(playerid, COLOR_GREY, "Invalid vehicleid!");
	if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid,COLOR_GREY,"	you have to be in a vehicle to use this.");
	new Float:X[3];
	GetVehiclePos(vehicleID, X[0],X[1],X[2]);
	if(!IsVehicleStreamedIn(vehicleID, playerid)) return SCM(playerid,COLOR_LIGHTRED,"		Vehicle is not streamed in for you.");
	if(PlayerInfo[playerid][pAdmin] > 2)
	{
	    	new vehid = GetPlayerVehicleID(playerid);
			AttachTrailerToVehicle(vehicleID, vehid);
			SCM(playerid,COLOR_GREEN,"  Done, vehicle attached.");
			return 1;
	}
	if(IsPlayerInRangeOfPoint(playerid, 5.0, X[0],X[1],X[2]))
	{
		new vehid = GetPlayerVehicleID(playerid);
		AttachTrailerToVehicle(vehicleID, vehid);
		SCM(playerid,COLOR_GREEN,"  Done, vehicle attached.");
	}
	return 1;
}

LEANCMD:(getip)
{
	if(PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED
	new targetid, string[128],IPt[16];
	if(sscanf(params,"u",targetid)) return SCM(playerid,COLOR_LIGHTRED,"USAGE: /getip [Playerid/PartOfName]");
	if(targetid == INVALID_PLAYER_ID) return INVALID_PLAYERMSG

	GetPlayerIp(targetid, IPt, sizeof(IPt));
	format(string,sizeof(string),"[ IP ] "COL_WHITE"%s (ID: %d) | "COL_LIGHTRED"%s",GetName(targetid),targetid,IPt);
	SCM(playerid,COLOR_LIGHTRED, string);
	return 1;
}

LEANCMD:(desynced)
{
	if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
	new targetid, string[128];
	if(sscanf(params,"u",targetid)) return SCM(playerid,COLOR_LIGHTRED,"USAGE: {FFFFFF}/desynced [Playerid/PartOfName]");
	if(targetid == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	
	
	new Float:ploss;
	GetPlayerPacketloss(targetid, ploss);
	format(string, sizeof(string),"Player: %s (Packetloss: %f)",GetName(targetid),ploss  );
	SCM(playerid, COLOR_WHITE, string);
	

	
	new drunk = GetPlayerDrunkLevel(targetid);

	if(drunk > 0)
	{
		format(string,sizeof(string),"Player %s (%d) is NOT desynced. (DrunkLevel: %d)",GetName(targetid), targetid, drunk);
	}
	else
	{
	    format(string,sizeof(string),"Player %s (%d) is desynced. (DrunkLevel: %d)",GetName(targetid), targetid, drunk);
	}
	SCM(playerid, COLOR_LIGHTRED, string);
	return 1;
}

LEANCMD:(spawn)
{
	if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
	new id, string[128];
	if(sscanf(params,"u",id)) return SCM(playerid,COLOR_GREY,"USAGE: /spawn [playerid]");
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG

	format(string, sizeof(string), "AdmWarn(%d): %s respawned player %s.",ALEVEL, GetName(playerid), GetName(id) );
	SendAdminMessage(COLOR_YELLOW, string);

	SpawnPlayer(id);

	loggedin[id] = true;
	return 1;
}

LEANCMD:(setspeed)
{
	#if defined TRAINING_SASD
    if(PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED
    #endif
    #if defined TRAINING_METRO
    if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
    #endif

	new
		id,
		Float:speed,
		height;

	if(sscanf(params,"ufD(0)", id, speed, height)) return SCM(playerid,COLOR_LIGHTRED,"USAGE: /setspeed [targetid] [speed] (height)");

	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	if(GetPlayerState(id) == PLAYER_STATE_DRIVER)
	{
	    new
			vehicleid = GetPlayerVehicleID(id);
        SetVehicleSpeed(vehicleid, speed, height);
		SCM(playerid, COLOR_LIGHTRED, "-> vehicle speed set.");
		disableTP[id] = true;
		SetTimerEx("EnableTPCheck", 1000, false, "i", id);
	}
	else
	{
		SetPlayerSpeed(id, speed, height);
	    SCM(playerid, COLOR_LIGHTRED, "-> foot speed set.");
	}
	return 1;
}



LEANCMD:(ninjamove)
{
	if(PlayerInfo[playerid][pAdmin] == 0) return ADMIN_UNAUTHORIZED
	new Float:amount, Float:x,Float:y,Float:z, Float:height;
	if(sscanf(params,"fF(0)",amount, height)) return SCM(playerid,COLOR_LIGHTRED,"USAGE:{AFAFAF} /ninjamove [MetersAhead] (Z-Offset)");

	GetPlayerPos(playerid, x, y, z);
	GetXYInFrontOfPlayer(playerid, x, y, amount);
	SetPlayerPosEx(playerid, x, y, z+height);
    return 1;
}

LEANCMD:(bigbang)
{
	if (PlayerInfo[playerid][pAdmin] > 5)
		{
		    EachPlayer( i)
		    {
					new Float:bangx, Float:bangy, Float:bangz;
					GetPlayerPos(i,bangx, bangy, bangz);
					CreateExplosion(bangx, bangy, bangz + 3, 7, 9999999);
					CreateExplosion(bangx, bangy, bangz + 3, 7, 9999999);
					CreateExplosion(bangx, bangy, bangz + 3, 7, 9999999);
			}
			new string[128];
			format(string, sizeof(string), "AdmCmd: %s re-created the big bang.",GetName(playerid));
			SendClientMessageToAll(COLOR_LIGHTRED, string);

			format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s re-created the big bang.",GetName(playerid));
    		IRC_GroupSayEx(string);

	        GameTextForAll("~r~THE BIG BANG", 5000, 1);
        }
        else
        {
            ADMIN_UNAUTHORIZED
        }
	return 1;
}

LEANCMD:(skydiveall)
{
			#if defined TRAINING_SASD
			if (PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED
			#endif
			#if defined TRAINING_METRO
			if (PlayerInfo[playerid][pAdmin] < 3) return ADMIN_UNAUTHORIZED
			#endif
	        new Float:slx, Float:sly, Float:slz;
			EachPlayer( i)
			{

					GetPlayerPos(i, slx, sly, slz);
					SetPlayerPosEx(i, slx, sly, slz+900);
					GiveWeapon(i, 46, 1);
			}
			new string[128];
	    	format(string, sizeof(string), "AdmCmd: Everyone has been skydived by Admin %s.", GetName(playerid));
	  		SendClientMessageToAll(COLOR_LIGHTRED,string);

			format(string, sizeof(string),"04[WARNING]01 AdmCmd: Everyone has been skydived by Admin %s.",GetName(playerid));
    		IRC_GroupSayEx(string);
			return 1;
}




LEANCMD:(maskcheck)
{
	if(PlayerInfo[playerid][pAdmin] < 3) return ADMIN_UNAUTHORIZED
	new maskid;
	if(sscanf(params, "d", maskid)) return SCM(playerid, COLOR_LIGHTRED, "USAGE: /maskcheck [maskid]. EXAMPLE: /maskcheck 13149 - DO NOT INCLUDE _ and the two digits after!");

	EachPlayer( i)
	{
	    if(PlayerInfo[i][userid] == maskid-1000)
	    {
	        new maski[15], string[128], string1[16];
    		GetPVarString(i, "MaskID", maski, sizeof(maski));
			format(string1, sizeof(string1), "[Mask %s]",maski);
			format(string,sizeof(string),"[ ! ] "COL_WHITE"%s (ID:%d) Mask_ID: %s",GetName(i),i,maski);
			SCM(playerid,COLOR_LIGHTRED,string);
			return 1;
		}
	}
	SCM(playerid,COLOR_LIGHTRED,"ERROR: No results found, try again.");
	return 1;
}


LEANCMD:(netstats)
{
	if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
	new
	    targetid;

	if(sscanf(params,"u",targetid)) return SCM(playerid,COLOR_LIGHTRED,"USAGE: /netstats [playerid]");
	if(targetid == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	new stats[400+1],rubrik[16+MAX_PLAYER_NAME];
 	GetPlayerNetworkStats(targetid, stats, sizeof(stats)); // get your own networkstats
 	format(rubrik,sizeof(rubrik),"Netstats of: %s",GetName(targetid));
  	ShowPlayerDialog(playerid, 0, DIALOG_STYLE_MSGBOX, rubrik, stats, "Okay", "");
  	return 1;
}

LEANCMD:(packetloss)
{
	if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
	new
	    targetid;
	if(sscanf(params,"u",targetid)) return SCM(playerid,COLOR_LIGHTRED,"USAGE: /packetloss [playerid]");
	if(targetid == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	new string[128];
	new Float:ploss;
	GetPlayerPacketloss(targetid, ploss);
	format(string, sizeof(string), "NETINFO: "COL_WHITE"%s (ID: %d) Packets lost:"COL_LIGHTRED" %.2f"COL_WHITE" percent.",GetName(targetid),targetid, ploss);
	SCM(playerid,COLOR_LIGHTRED,string);
	return 1;
}

LEANCMD:(lockserver)
{
		new markid;
		if(PlayerInfo[playerid][pAdmin] < 3) return ADMIN_UNAUTHORIZED
		if(sscanf(params, "d", markid))
		{
			SendClientMessage(playerid, COLOR_WHITE, "USAGE: /lockserver [1 CSD Training /2 ASD Training/3 Other] ");
			return 1;
		}
		switch(markid)
		{
			case 1:
				{
				    new string[128];
				    if(lockedserver == 0)
				    {
						format(string, sizeof(string),"Server has been UNBLOCKED by admin %s for CSD Induction, PASSWORD:"COL_ORANGE" "CSDPW"",GetName(playerid));
						SendRconCommand("password "CSDPW"");
						lockedserver = 1;
					}
	    			else
					{
						format(string, sizeof(string),"Server has been BLOCKED by admin %s",GetName(playerid));
						SendRconCommand("password 0");
						CheckForLockedAccs();
						lockedserver = 0;
					}
					SendAdminMessage(COLOR_YELLOW, string);


				}
			case 2:
				{
				    new string[128];
				    if(lockedserver == 0)
				    {
						format(string, sizeof(string),"Server has been UNBLOCKED by admin %s for Air Support Division Training, PASSWORD:"COL_ORANGE" "ASDPW"",GetName(playerid));
						SendRconCommand("password "ASDPW"");
						lockedserver = 1;
					}
	    			else
					{
						format(string, sizeof(string),"Server has been BLOCKED by admin %s",GetName(playerid));
						SendRconCommand("password 0");
						CheckForLockedAccs();
						lockedserver = 0;
					}
					SendAdminMessage(COLOR_YELLOW, string);
				}
			case 3:
				{
				    new string[128];
				    if(lockedserver == 0)
				    {
						format(string, sizeof(string),"Server has been UNBLOCKED by admin %s for General training, PASSWORD:"COL_ORANGE" "GENPW"",GetName(playerid));
						SendRconCommand("password "GENPW"");
						lockedserver = 1;
					}
	    			else
					{
						format(string, sizeof(string),"Server has been BLOCKED by admin %s",GetName(playerid));
						SendRconCommand("password 0");
						CheckForLockedAccs();
						lockedserver = 0;
					}
					SendAdminMessage(COLOR_YELLOW, string);
				}
			default:
				{
					SendClientMessage(playerid, COLOR_GRAD2, "USAGE: /lockserver [1 CSD Training /2 ASD Training/3 Other] ");
				}
       }
        return 1;
}

LEANCMD:(rpmode)
{
	if(PlayerInfo[playerid][pAdmin] <= 3) return ADMIN_UNAUTHORIZED
	new string[128];
	if (rpd == true)
	{
	    format(string,sizeof(string),"AdmCmd(%d): %s has disabled RPMODE.",ALEVEL,GetName(playerid));
	    SendAdminMessage(COLOR_YELLOW,string);
		rpd = false;
		EachPlayer( i)
		{
		    DEAD[i] = false;
		}
		return 1;
	}
	if (rpd == false)
	{
	    format(string,sizeof(string),"AdmCmd(%d): %s has enabled RPMODE.",ALEVEL,GetName(playerid));
	    SendAdminMessage(COLOR_YELLOW,string);
		rpd = true;
		return 1;
	}
	return 1;
}

LEANCMD:(mute)
{
	new id, string[MAX_PLAYER_NAME+MAX_PLAYER_NAME+34];
	if(sscanf(params,"u",id)) return SendClientMessage(playerid,COLOR_LIGHTRED, "USAGE: /mute [PartOfName/PlayerID]");
	if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	format(string, sizeof(string), "AdmCmd: %s has been silenced by %s.",GetName(id), GetName(playerid));
	SendClientMessageToAll(COLOR_LIGHTRED, string);

	format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s has been silenced by %s.",GetName(id), GetName(playerid));
 	IRC_GroupSayEx(string);

	muted[id] = true;
	return 1;
}



LEANCMD:(unmute)
{
		if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
		new id, string[100];
		if(sscanf(params,"u",id)) return SendClientMessage(playerid,COLOR_LIGHTRED, "USAGE: /unmute [PartOfName/PlayerID]");
		if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
     	format(string, sizeof(string), "AdmCmd: %s has been unsilenced by %s.",GetName(id), GetName(playerid));
     	SendClientMessageToAll(COLOR_LIGHTRED, string);

		format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s has been unsilenced by %s.",GetName(id), GetName(playerid));
  		IRC_GroupSayEx(string);

     	muted[id] = false;
		return 1;
}

LEANCMD:(kill)
{
	new id, string[MAX_PLAYER_NAME+26], fstring[18];

	if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
	if(sscanf(params,"u",id)) return SCM(playerid, COLOR_GREY, "USAGE: /kill [playerid]");
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	if( PlayerInfo[playerid][pAdmin] < PlayerInfo[id][pAdmin] ) return SendClientMessage(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"This player is higher ranked admin than you are.");
	GetPlayerPos(id, DP[id][0],DP[id][1],DP[id][2]);
	SetPlayerHealth(id, 0);
	format(string, sizeof(string),"You was killed by admin %s.",GetName(playerid));
	SCM(id, COLOR_LIGHTRED, string);
	format(fstring, sizeof(fstring),"You killed id %d.",id);
	SCM(playerid, COLOR_LIGHTRED, fstring);
	DEAD[id] = true;
	return 1;
}

LEANCMD:(countdown)
{
	if(PlayerInfo[playerid][pAdmin] == 0) return ADMIN_UNAUTHORIZED
	static amount;
	if(sscanf(params,"i",amount)) return SendClientMessage(playerid,-1,"USAGE: /count <amount>");
	if(iscountactivated == true) return SendClientMessage(playerid,-1,"The countdown is already activated!");
	if(amount > 60 || amount <= 0) return SendClientMessage(playerid,-1,"The amount can't be greater than 60");
	CountTimer = SetTimer("Count",1000,true);
	countamount = amount;
	iscountactivated = true;
	SCM(playerid, COLOR_LIGHTRED, "NOTICE: "COL_WHITE"If countdown messes up, use /stopcd and restart it.");
	new string[128];
	format(string, sizeof(string), "Timer started by %s, %d seconds.",GetName(playerid),amount);
	SendAdminMessage(COLOR_LIGHTRED, string);
	return 1;
}

LEANCMD:(stopcd)
{
	    if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
	    new string[ 53 ];
		if (iscountactivated == true)
		{
    	    iscountactivated = false;
			KillTimer(CountTimer);
    	    format(string,sizeof(string),"~r~countdown stopped by ~w~%s",GetName(playerid));
			GameTextForAll(string,3000,4);
			SendClientMessage(playerid,COLOR_GREY,"Countdown stopped.");
        	return 1;
    	}
    	else
    	{
        	SendClientMessage(playerid,COLOR_GREY,"No countdown to stop");
        	return 1;
    	}
}



LEANCMD:(down)
{
	if(IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_GREY, "This command is not usable in vehicles.");
	new down;
	sscanf(params,"D(2)", down);
	
	new
	    Float:X,
	    Float:Y,
	    Float:Z;
	    
	GetPlayerPos(playerid, X, Y, Z);
	SetPlayerPos(playerid, X, Y, Z-down);
	
	SCM(playerid, COLOR_LIGHTRED, "-> You have been teleported downwards.");
	return 1;
}


LEANCMD:(up)
{
	if(IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_GREY, "This command is not usable in vehicles.");
	new up;
	sscanf(params, "D(2)", up);
	
	new
	    Float:X,
	    Float:Y,
	    Float:Z;
	    
	GetPlayerPos(playerid, X, Y, Z);
	SetPlayerPos(playerid, X, Y, Z+up);
	
	SCM(playerid, COLOR_LIGHTRED, "-> You have been teleported upwards.");
	return 1;
}



LEANCMD:(ptp)
{
	if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
	new
		Float:X,
		Float:Y,
		Float:Z,
		id,
		id1,
		secs,
		amount;

	if(sscanf(params, "uuD(0)", id,id1,secs)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /ptp [Playerid/PartOfName] [Playerid/PartOFName] [seconds (optional)]");
	if(id == INVALID_PLAYER_ID || id1 == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	if(secs != 0)
	{
	    amount = secs;
	    new dstring[16];
		format(dstring, sizeof(dstring), "%d",secs);
		new d = strlen(dstring);
     	strins(dstring, "000", d);
	    secs = strval(dstring);
	}

	GetPlayerPos(id1, X, Y, Z);
	SetPlayerPosEx(id, X, Y+0.2, Z, secs);
	SetPlayerInterior(id, GetPlayerInterior(id1));
	SetPlayerVirtualWorld(id, GetPlayerVirtualWorld(id1));
	new string[196];
	format(string, sizeof(string),"%s teleported %s [%d] to %s [%d], freezeTime: %d sec",GetName(playerid), GetName(id), id, GetName(id1), id1, amount);
	SendAdminMessage(COLOR_YELLOW, string);
	return 1;
}

LEANCMD:(setstat)
{
	new input[16],targetid,value;
	if(PlayerInfo[playerid][pAdmin] < 5 && !IsPlayerAdmin(playerid)) return ADMIN_UNAUTHORIZED
	SCM(playerid, COLOR_GRAD1, "1.Cash | 2.Admin | 3.Kills | 4.Deaths | 5.Skin | 6.Timesloggedin | 7.Banned |");
	SCM(playerid, COLOR_GRAD1, "8.Criminalskin | 9.PasswordChanged | 10.Rank | 11.Freq | Groupid | Level | Levelup | Experience");
	if(sscanf(params, "us[16]d", targetid,input,value)) return SendClientMessage(playerid, 0xF97804FF, "USAGE: /setstat [PlayerID/PoN] [Input] [value]");
	if(targetid == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	else if(strcmp(input,"cash",true) == 0)
	{
	    PlayerInfo[targetid][pCash] = value;
	    SCM(playerid, COLOR_GREY, "Cash set.");
	    GiveMoney(targetid, PlayerInfo[targetid][pCash]);
	}
	else if(strcmp(input,"Admin",true) == 0)
	{
	    PlayerInfo[targetid][pAdmin] = value;
	    SCM(playerid, COLOR_GREY, "Admin Level.");
	}
	else if(strcmp(input,"Kills",true) == 0)
	{
	    PlayerInfo[targetid][pKills] = value;
	    SCM(playerid, COLOR_GREY, "Kills set.");
	}
	else if(strcmp(input,"Deaths",true) == 0)
	{
	    PlayerInfo[targetid][pDeaths] = value;
	    SCM(playerid, COLOR_GREY, "Deaths set.");
	}
	else if(strcmp(input,"Skin",true) == 0)
	{
	    PlayerInfo[targetid][pSkin] = value;
	    SetPlayerSkin(targetid, PlayerInfo[targetid][pSkin]);
	    SCM(playerid, COLOR_GREY, "Skin set.");
	}
	else if(strcmp(input,"Timesloggedin",true) == 0)
	{
	    PlayerInfo[targetid][pLogs] = value;
	    SCM(playerid, COLOR_GREY, "Times logged in set.");
	}
	else if(strcmp(input,"Banned",true) == 0)
	{
	    PlayerInfo[targetid][pBanned] = value;
	    SCM(playerid, COLOR_GREY, "Banned set");
	}
	else if(strcmp(input,"Criminalskin",true) == 0)
	{
	    PlayerInfo[targetid][pCrim] = value;
	    SCM(playerid, COLOR_GREY, "Crim skin set.");
	}
	else if(strcmp(input,"PasswordChanged",true) == 0)
	{
	    PlayerInfo[targetid][pPw] = value;
	    SCM(playerid, COLOR_GREY, "Password Changed set.");
	}
	else if(strcmp(input,"Rank",true) == 0)
	{
	    PlayerInfo[targetid][Rank] = value;
	    SCM(playerid, COLOR_GREY, "Rank set.");
	}
	else if(strcmp(input,"Freq",true) == 0)
	{
	    PlayerInfo[targetid][Freq] = value;
	    SCM(playerid, COLOR_GREY, "Freq set.");
	}
	else if(strcmp(input,"Userid",true) == 0)
	{
	    PlayerInfo[targetid][userid] = value;
	    SCM(playerid, COLOR_GREY, "Userid set.");
	}
	else if(strcmp(input,"GroupID",true) == 0)
	{
	    PlayerInfo[targetid][GroupID] = value;
	    SCM(playerid, COLOR_GREY, "groupid set.");
	}
	else if(strcmp(input,"Level",true) == 0)
	{
	    PlayerInfo[targetid][Level] = value;
	    SCM(playerid, COLOR_GREY, "level set.");
	}
	else if(strcmp(input,"Levelup",true) == 0)
	{
	    PlayerInfo[targetid][LevelUp] = value;
	    SCM(playerid, COLOR_GREY, "Experience Points set.");
	}
	else if(strcmp(input,"Experience",true) == 0)
	{
	    PlayerInfo[targetid][LevelUpNeeded] = value;
	    SCM(playerid, COLOR_GREY, "Amount of levels up needed set.");
	}
	else
	{
		SCM(playerid, COLOR_RED, "Input was not found, CASE SENSETIVE.");
	}
	return 1;
}


LEANCMD:(setworld)
{
	new
		world,
		id,
		string[72];

	if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
	if(sscanf(params, "ui", id, world)) return SCM(playerid, COLOR_LIGHTRED, "USAGE: /setworld [PoN/ID] [WorldID]");
	if(IsPlayerInAnyVehicle(id))
	{
		RemovePlayerFromVehicle(id);
		SetPlayerVirtualWorld(id, world);
		format(string, sizeof(string), "Your world have been set to %i by Admin %s.", world, GetName(playerid));
	    SendClientMessage(id, COLOR_LIGHTRED, string);
	    format(string, sizeof(string), "You have set %s's virtual world to %i.", GetName(id), world);
	    SendClientMessage(playerid, COLOR_LIGHTRED, string);
	    WORLD[id] = GetPlayerVirtualWorld(id);
	}
	else
	{
		SetPlayerVirtualWorld(id, world);
		format(string, sizeof(string), "Your world have been set to %i by Admin %s.", world, GetName(playerid));
	    SendClientMessage(id, COLOR_LIGHTRED, string);
	    format(string, sizeof(string), "You have set %s's virtual world to %i.", GetName(id), world);
	    SendClientMessage(playerid, COLOR_LIGHTRED, string);
	    WORLD[id] = GetPlayerVirtualWorld(id);
	}

	return 1;
}

LEANCMD:(listenr)
{
	if(PlayerInfo[playerid][pAdmin] < 3) return ADMIN_UNAUTHORIZED
	
	if(listeningR[playerid] == false)
	{
        listeningR[playerid] = true;
        SCM(playerid, COLOR_LIGHTRED, "You are now listening to all /r(adio) channels.");
		return 1;
	}
	if(listeningR[playerid] == true)
	{
        listeningR[playerid] = false;
        SCM(playerid, COLOR_LIGHTRED, "You are no longer listening to all radio channels.");
		return 1;
	}
	return 1;
}

LEANCMD:(gethere)
{

	#if defined TRAINING_SASD
 	if(PlayerInfo[playerid][pAdmin] < 2 && PlayerInfo[playerid][GroupID] != 5 && PlayerInfo[playerid][GroupID] != 6) return ADMIN_UNAUTHORIZED
 	#endif
  	#if defined TRAINING_METRO
   	if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
   	#endif
   	
    new
	     targetid,
	     Float:x,
		 Float:y,
		 Float:z;

    if(sscanf(params, "u", targetid)) return SendClientMessage(playerid, COLOR_GREY, "USAGE: /gethere [playerid]");
    if(targetid == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
    if(playerid == targetid) return SendClientMessage(playerid,COLOR_LIGHTRED,"Teleport yourself to yourself?");
    if(GetPlayerState(targetid) == 2)
	{
	    new
			tmpcar = GetPlayerVehicleID(targetid),
 			Interior = GetPlayerInterior(playerid);

    	SetPlayerInterior(targetid, Interior);
    	GetPlayerPos(playerid, x, y, z);
    	LinkVehicleToInterior(tmpcar, Interior);
	    SetPlayerPosEx(playerid, x+1, y+1, z);
		SCM(playerid, COLOR_GRAD3, "1 player teleported..");
	    SetPlayerVirtualWorld(targetid, GetPlayerVirtualWorld(playerid));
	    WORLD[targetid] = WORLD[playerid];
	}
	else
    {
        new Interior = GetPlayerInterior(playerid);
        SetPlayerInterior(targetid, Interior);
    	GetPlayerPos(playerid, x, y, z);
    	SetPlayerPosEx(targetid, x, y+0.5, z+0.5, 500);
        SCM(playerid, COLOR_GRAD3, "1 player teleported..");
	    SetPlayerVirtualWorld(targetid, GetPlayerVirtualWorld(playerid));
	    WORLD[targetid] = WORLD[playerid];
    }
    return 1;
}


LEANCMD:(setalevel)
{
    new
	     pID,
		 value,
		 string[89];

	#if defined TRAINING_SASD
	if (PlayerInfo[playerid][pAdmin] < 5 && !IsPlayerAdmin(playerid)) return ADMIN_UNAUTHORIZED
	#endif
	#if defined TRAINING_METRO
	if (PlayerInfo[playerid][pAdmin] < 4 && !IsPlayerAdmin(playerid)) return ADMIN_UNAUTHORIZED
	#endif
	if (sscanf(params, "ui", pID, value)) return SendClientMessage(playerid, COLOR_LIGHTRED, "USAGE: "COL_WHITE"/setalevel [playerid/partofname] [level]");
	if (pID == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
    if (PlayerInfo[playerid][pAdmin] < PlayerInfo[pID][pAdmin]) return SendClientMessage(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"This player is higher ranked admin than you are.");

    format(string, sizeof(string), " You have promoted %s to a level %i admin.", GetName(pID), value);
    SCM(playerid, COLOR_GREY, string);
    format(string, sizeof(string), " You have been promoted to a level %i admin by %s.", value, GetICName(playerid));
    SCM(pID, COLOR_GREY, string);
	PlayerInfo[pID][pAdmin] = value;
    format(string,sizeof(string),"AdmCmd: %s has promoted %s to level %i admin.",GetICName(playerid), GetICName(pID), value);
    WriteLog("AdminPromo", string);
    format(string,sizeof(string),"LeadWarn(%d): %s has promoted %s to level %d admin.",ALEVEL, GetName(playerid),GetName(pID),value);
    SendLeadMessage(COLOR_YELLOW,string);
    return 1;
}


#if defined TRAINING_METRO

LEANCMD:(ahelp)
{
	    if(PlayerInfo[playerid][pAdmin] == 0) return ADMIN_UNAUTHORIZED
	    SCM(playerid, COLOR_GREEN, "________________/Ahelp__________________");
	    if(PlayerInfo[playerid][pAdmin] >= 1)
		{
		    SCM(playerid, COLOR_GREEN, "[1:]{eeeeee} /stopcd, /gethere, /respawncar, /backup, /adminduty, /a, /countdown, /dgoto, /laston");
		    
		    SCM(playerid, COLOR_GREEN, "[1:]{eeeeee} /checkewapons, /connecttime, /apark, /getin, /fixcar, /desynced, /masked, /lastcmd, /setint");
		    
		    SCM(playerid, COLOR_GREEN, "[1:]{eeeeee} /clearscenes, /kick, /goin, /sethp, /setarmor, /givegun, /ptp, /sendtocar, /freeze");
		    
		    SCM(playerid, COLOR_GREEN, "[1:]{eeeeee} /thaw, /mute, /unmute, /ninjamove, /togdeath, /v, /cleardeathlist, /spawn, /nofam, /ac");
		}
		if(PlayerInfo[playerid][pAdmin] >= 2)
		{
		    SCM(playerid, COLOR_GREEN, "");
		    SCM(playerid, COLOR_GREEN, "[2:]{eeeeee} /getallhere, /setaccrank, /setrank, /setgroup, /setaccgroup, /renameacc");
		    SCM(playerid, COLOR_GREEN, "[2:]{eeeeee} /grouphelp, /resetpw, /createacc, /disbandall, /towcars, /gotocar, /despawnall");
		    SCM(playerid, COLOR_GREEN, "[2:]{eeeeee} /ban, /unban, /geteveryone, /megaslap, /setskin, /disarm, /slapcar, /ginfo");
		    SCM(playerid,COLOR_GREEN, "[2:]{eeeeee} /getcar, /tod, /aengine, /rangerespawn, /rangedespawn, /stats");
		    SCM(playerid, COLOR_GREEN, "[3:]{eeeeee} /getduty, /getcrims, /getswat, /as");
		}
		if(PlayerInfo[playerid][pAdmin] >= 3)
		{
		    SCM(playerid, COLOR_GREEN, "");
		    SCM(playerid, COLOR_GREEN, "[3:]{eeeeee} /clearclothes, /ann, /acchelp, /ao, /reviveg, /deleterank, /createrank, /rankname, /activecars");
			SCM(playerid, COLOR_GREEN, "[3:]{eeeeee} /reviveall");
		}
		if(PlayerInfo[playerid][pAdmin] >= 4)
		{
		    SCM(playerid, COLOR_GREEN, "");
		    SCM(playerid, COLOR_GREEN, "[4:]{eeeeee} /noic, /togduty, /togtp, /togmask, /togaspec, /togdm, /telename, /deletetp, /createtp, /listenfreq");
		    SCM(playerid, COLOR_GREEN, "[4:]{eeeeee} /vehint, /packetloss, /nestats, /telepos, /explode, /rpmode, /vehicle, /speclist, /metrohelp");
		    SCM(playerid, COLOR_GREEN, "[4:]{eeeeee} /kickgroup, /vehint, /jetpack, /deletegroup, /creategroup, /adoor, /grantbuild, /furniture");
		}
		if(PlayerInfo[playerid][pAdmin] >= 5)
		{
		    SCM(playerid, COLOR_GREEN, "");
		    SCM(playerid, COLOR_GREEN, "[1337:]{eeeeee}  /hostname, /setpassword, /setupdatetimer, /togadminwarn, /setcustomskin");
		    SCM(playerid, COLOR_GREEN, "[1337:]{eeeeee}  /gmx, /setalevel, /creationstation, /getip, /setaccadmin, /setspeed");
		    SCM(playerid, COLOR_GREEN, "[1337:]{eeeeee}  /togadminwarn, /bigbang, /skydiveall");
		}
		SCM(playerid, COLOR_GREEN, "_________________________________________");
		return 1;
}
#endif

#if defined TRAINING_SASD

LEANCMD:(ahelp)
{
	    if(PlayerInfo[playerid][pAdmin] == 0) return ADMIN_UNAUTHORIZED
	    SCM(playerid, COLOR_GREEN, "________________/Ahelp__________________");
	    if(PlayerInfo[playerid][pAdmin] >= 1)
		{
		    SendClientMessage(playerid, COLOR_GREEN, "[1:]{eeeeee} /a(admin)duty, /a (achat), /healall, /ban, /getallhere, /countdown, /setaccrank /dgoto /lastcmd /setint, /laston");
		    SendClientMessage(playerid, COLOR_GREEN, "[1:]{eeeeee} /checkweapons, /stopcd, /checkfix, /connecttime, /apark, /getin, /fixcar, /setgroup, /setaccgroup, /desynced, /masked /clearscenes");
		    SendClientMessage(playerid, COLOR_GREEN, "[1:]{eeeeee} /kick, /goin, /sethp, /setarmor, /givegun, /ptp, /sendtocar, /freeze, /thaw, /setrank, /mute, /unmute, /ac");
		    SendClientMessage(playerid, COLOR_GREEN, "[1:]{eeeeee} /ninjamove,/respawncar, /togdeath, /v, /cleardeathlist, /spawn, /nofam, /grouphelp, /renameacc, /resetpw, /createacc");
		}
		if(PlayerInfo[playerid][pAdmin] >= 2)
		{
		    SCM(playerid, COLOR_GREEN, "");
		    SendClientMessage(playerid, COLOR_GREEN, "[2:]{eeeeee} /disbandall, /towcar, /gotocar, /despawnall, /ban, /unban /stats");
		    SendClientMessage(playerid, COLOR_GREEN, "[2:]{eeeeee} /gethere, /geteveryone, /megaslap, /setskin, /disarm, /slapcar, /ginfo");
		    SendClientMessage(playerid, COLOR_GREEN, "[2:]{eeeeee} /getcar, /tod, /aengine, /rangerespawn, /rangedespawn");
		}
		if(PlayerInfo[playerid][pAdmin] >= 3)
		{
		    SCM(playerid, COLOR_GREEN, "");
		    SendClientMessage(playerid, COLOR_GREEN, "[3:]{eeeeee} /ann, /acchelp, /ao, /reviveg, /rankname, /getduty, /getcrims /listenr /reviveall");
		}
		if(PlayerInfo[playerid][pAdmin] >= 4)
		{
		    SCM(playerid, COLOR_GREEN, "");
		    SendClientMessage(playerid, COLOR_GREEN, "[4:]{eeeeee} /togduty, /togtp, /togmask, /togaspec, /togdm, /telename, /deletetp, /createtp, /vehint");
		    SendClientMessage(playerid, COLOR_GREEN, "[4:]{eeeeee} /packetloss, /netstats, /telepos, /explode, /getsed");
		    SendClientMessage(playerid, COLOR_GREEN, "[4:]{eeeeee} /rpmode, /kickgroup, /vehint, /jetpack, /deleterank, /deletegroup");
		    SCM(playerid, COLOR_GREEN,"[4:]{eeeeee} /watchbreach");
		}
		if(PlayerInfo[playerid][pAdmin] >= 5)
		{
		    SCM(playerid, COLOR_GREEN, "");
		    SendClientMessage(playerid, COLOR_GREEN, "[1337:]{eeeeee}  /adoor, /gmx, /bigbang, /skydiveall, /setalevel, /grantbuild, /creategroup, /vehicle, /creationstation, /getip");
		    SendClientMessage(playerid, COLOR_GREEN, "[1337:]{eeeeee}  /setaccadmin, /speclist, /setspeed, /backup (server), /furniture, /hostname, /setpassword, /clearclothes");
		    SendClientMessage(playerid, COLOR_GREEN, "[1337:]{eeeeee}  /togadminwarn");
		}
		SCM(playerid, COLOR_GREEN, "_________________________________________");
		return 1;
}
#endif

LEANCMD:(ah)
{
	return cmd_ahelp(playerid, params);
}

LEANCMD:(hostname)
{
	if(PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED
	if(sscanf(params, "s[128]", params)) return SCM(playerid,COLOR_GREY,"USAGE: /hostname [text]");
	new string[91];
	format(string,sizeof(string),"hostname %s",params);
	SendRconCommand(string);
	format(string,sizeof(string),"AdmWarn(%d): %s has changed hostname to %s.",PlayerInfo[playerid][pAdmin], GetName(playerid), params);
	SendAdminMessage(COLOR_YELLOW, string);
	return 1;
}

LEANCMD:(getin)
{
	new
 		currentveh,
   		id;


	currentveh = GetPlayerVehicleID(playerid);
	if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_GREY, "You have to be inside a vehicle to teleport a player inside your car.");
	if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
	if(sscanf(params, "u", id)) return SCM(playerid, COLOR_GREY, "USAGE: /getin [partofname/playerid]");
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
	RemovePlayerFromVehicle(id);
	GetVehiclePos(currentveh, XTP[id], YTP[id], ZTP[id]);
	PutPlayerInVehicle(id, currentveh, GetVehicleNextSeat(currentveh, 1));
	SCM(id,COLOR_GREY,"You have been teleported to the vehicle.");
	return 1;
}


LEANCMD:(goin)
{
          new
               currentveh,
			   id;

          if(PlayerInfo[playerid][pAdmin] < 1 && PlayerInfo[playerid][GroupID] != 6) return ADMIN_UNAUTHORIZED
          if(sscanf(params, "u",id)) return SCM(playerid, COLOR_GREY, "USAGE: /goin [partofname/playerid]");
          if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
		  if(!(IsPlayerInAnyVehicle(id))) return SCM(playerid, COLOR_GREY, "This player is not in any vehicle.");
          else
          {
          		currentveh = GetPlayerVehicleID(id);
          		GetVehiclePos(currentveh, XTP[playerid], YTP[playerid], ZTP[playerid]);
          		PutPlayerInVehicle(playerid, currentveh, GetVehicleNextSeat(currentveh, 1));
          		SCM(playerid, COLOR_GREY, "You have been teleported.");
          }
          return 1;
}




LEANCMD:(sendtocar)
{
          	new
               veh,
			   id;

          	if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
          	if(sscanf(params, "ud",id, veh)) return SCM(playerid, COLOR_GREY, "USAGE: /sendtocar(stc) [partofname/playerid] [vehicleid]");
          	if(!IsValidVehicle(veh)) return SCM(playerid, COLOR_GREY, "Invalid vehicleid!");
          	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
			GetVehiclePos(veh, XTP[id], YTP[id], ZTP[id]);
			PutPlayerInVehicle(id, veh, GetVehicleNextSeat(veh, 0));
 			SCM(id,COLOR_GREY,"You have been teleported.");
          	return 1;
}


LEANCMD:(stc)
{
	return cmd_sendtocar(playerid, params);
}

LEANCMD:(getcar)
{
	new
       vehicleid,
       Float:x,
	   Float:y,
	   Float:z;


  	if(PlayerInfo[playerid][pAdmin] < 2 && PlayerInfo[playerid][GroupID] != 6) return ADMIN_UNAUTHORIZED
  	if (sscanf(params, "i", vehicleid)) return SCM( playerid, COLOR_GREY, "USAGE: /getcar [vehicleid]");
  	if(!IsValidVehicle(vehicleid)) return SCM(playerid, COLOR_GREY, "Invalid vehicleid!");

  	GetPlayerPos(playerid, x,y,z);

  	SetVehiclePos(vehicleid, x, y+2, z);

  	SCM(playerid, COLOR_GREY, "You have teleported the vehicle.");

  	LinkVehicleToInterior(vehicleid, GetPlayerInterior(playerid));

  	return 1;
}



LEANCMD:(gotocar)
{
	new
       vehicleid,
       Float:x,
	   Float:y,
	   Float:z;

  	if(PlayerInfo[playerid][pAdmin] < 2 && PlayerInfo[playerid][GroupID] != 6) return ADMIN_UNAUTHORIZED
  	if (sscanf(params, "i", vehicleid)) return SCM( playerid, COLOR_GREY, "USAGE: /gotocar [vehicleid]");
  	if(!IsValidVehicle(vehicleid)) return SCM(playerid, COLOR_GREY, "Invalid vehicleid!");
  	else
  	{
  		GetVehiclePos(vehicleid, x, y, z);

  		SetPlayerPosEx(playerid, x,y,z+2);

		SCM(playerid, COLOR_GREY, "You have been teleported to the vehicle.");

  	}
  	return 1;
}

LEANCMD:(slapcar)
{
  	new
       vehicleid,
       Float:x,
	   Float:y,
	   Float:z;

	if(PlayerInfo[playerid][pAdmin] < 2 && PlayerInfo[playerid][GroupID] != 6) return ADMIN_UNAUTHORIZED
	if (sscanf(params, "i", vehicleid)) return SCM( playerid, COLOR_GREY, "/slapcar [vehicleid]");
  	if(!IsValidVehicle(vehicleid)) return SCM(playerid, COLOR_GREY, "Invalid vehicleid!");

  	GetVehiclePos(vehicleid, x, y, z);
  	SetVehiclePos(vehicleid, x, y, z+5);
  	SCM(playerid, COLOR_GREY, "Done.");
  	return 1;
}

LEANCMD:(jetpack)
{
   new
        input[5];
   if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
   if(sscanf(params,"s[5]",input)) return SCM(playerid,COLOR_GOLD,"USAGE: /jetpack ON|OFF");
   if(strcmp(input,"on",true) == 0)
   {
   		SetPlayerSpecialAction(playerid, 2);
   		SendClientMessage(playerid, COLOR_GREEN, "* Spawned jetpack. /jetpack off");
   }
   if(strcmp(input,"off",true) == 0)
   {
        ClearAnimations(playerid);
   		SetPlayerSpecialAction(playerid, 0);
   		SendClientMessage(playerid, COLOR_GREY, "* Jetpack Removed");
   }
   return 1;
}

new Float:AARMOR[MAX_PLAYERS],
	Float:AHEALTH[MAX_PLAYERS];

LEANCMD:(aduty)
{
	new string[64];
	if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
	if(AdminDuty[playerid] == true)
 	{
 		SetPlayerHealth(playerid, AHEALTH[playerid]);
        SetPlayerArmour(playerid,AARMOR[playerid]);
	   	format(string, sizeof(string), "AdmWarn(%i): %s is now off adminduty.",PlayerInfo[playerid][pAdmin], GetName(playerid));
	   	SendAdminMessage(COLOR_YELLOW,string);
	   	AdminDuty[playerid] = false;
	   	SetTimerEx("HealthCheck",200,false,"i",playerid);
   		if(Duty[playerid] == true || Swat[playerid] == true)
   		{
  			SetPlayerColor(playerid, COLOR_DUTY);
   		}
   		if(Criminal[playerid] == true || Civilian[playerid] == true)
   		{
  			SetPlayerColor(playerid, COLOR_WHITE);
   		}
        EachPlayer(i)
        {
        	if(GetPVarInt(i, "Masked") == 1)
        	{
        		ShowPlayerNameTagForPlayer(playerid, i, 0);
        	}
		}
		watchingb[playerid] = false;

		new Float:Health, Float:Armor;
		GetPlayerHealth(playerid, Health);
		GetPlayerArmour(playerid, Armor);
		if(Health > 150 || Armor > 200)
		{
			format(string,sizeof(string),"DEBUG: something went wrong with setting you the correct health, inform Lean please. (%f Health|%f Armor)", Health, Armor);
			SCM(playerid,COLOR_LIGHTRED, string);
			SetPlayerHealth(playerid, 100);
			SetPlayerArmour(playerid, 0);
			SCM(playerid, COLOR_GREY, "Your health has been set to 100 and armor to 0.");
		}

   	}
   	else
   	{
   	    AdminDuty[playerid] = true;
    	GetPlayerHealth(playerid, AHEALTH[playerid]);
        GetPlayerArmour(playerid,AARMOR[playerid]);
  		format(string, sizeof(string), "AdmWarn(%i): %s is now on adminduty.",PlayerInfo[playerid][pAdmin],GetName(playerid));
		SendAdminMessage( COLOR_YELLOW, string );
		SetPlayerHealth(playerid, 255);
		SetPlayerColor(playerid, COLOR_ADMINDUTY);
        EachPlayer( i)
        {
        	ShowPlayerNameTagForPlayer(playerid, i, 1);
		}

  	}
	return 1;
}

LEANCMD:(a)
{
    if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED

    new
         string[128 + MAX_PLAYER_NAME + 20];

    if(sscanf(params, "s[128]", params)) return SCM(playerid,COLOR_LIGHTRED,"USAGE: /(a)dmin [chat]");

    format(string,sizeof(string),"*Admin[%d] %s: %s",PlayerInfo[playerid][pAdmin],GetName(playerid),params);
    SendAMessage(COLOR_YELLOW, string);
    WriteLog("AdminChat", string);
    return 1;
}



LEANCMD:(la)
{
    if(PlayerInfo[playerid][pAdmin] < 5) return ADMIN_UNAUTHORIZED

    new
         string[128 + MAX_PLAYER_NAME + 20];

    if(sscanf(params, "s[128]", params)) return SCM(playerid,COLOR_LIGHTRED,"USAGE: /la [chat]");

    format(string,sizeof(string),"[LEAD %d] %s: %s",PlayerInfo[playerid][pAdmin],GetName(playerid),params);
    SendLAMessage(COLOR_GREEN, string);
    WriteLog("LeadChat", string);
    return 1;
}





LEANCMD:(setskin)
{
    if(!(PlayerInfo[playerid][pAdmin] >= 1)) return ADMIN_UNAUTHORIZED
    
	new
	    id,
		ammount,
		string[95];

	if(sscanf(params,"ui", id, ammount)) return SCM(playerid, COLOR_GREY,"USAGE: /setskin [playerid/partofname] [skinmodel]");
	if(ammount > 311 || ammount < 1) return SCM(playerid, COLOR_GREY,"Wrong Skin ID! Available ID's: 1-311");
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG

	format(string, sizeof(string),"AdmWarn(%d): %s has set %s' skin to %i", PlayerInfo[playerid][pAdmin],GetName(playerid),GetName(id),ammount);
	SendAdminMessage(COLOR_YELLOW, string);
	PlayerInfo[id][pSkin] = ammount;
	SetPlayerSkin(id, ammount);
	return 1;
}

LEANCMD:(sethp)
{
    if(!(PlayerInfo[playerid][pAdmin] >= 1)) return ADMIN_UNAUTHORIZED

	new
	    id,
		hp,
		string[111];

	if(sscanf(params,"ui", id, hp)) return SCM(playerid, COLOR_GREY,"USAGE: /sethp [playerid/partofname] [amount]");
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG

 	SetPlayerHealth(id, hp);
 	SetTimerEx("HealthCheck",2000,false,"i",id);
  	format(string, sizeof(string),"Your health has been set to %i by admin %s", hp, GetName(playerid));

   	SendClientMessage(id, COLOR_YELLOW, string);

    format(string, sizeof(string),"AdmWarn(%i): %s has set %s's health to %i",PlayerInfo[playerid][pAdmin], GetName(playerid), GetName(id), hp);

    SendAdminMessage(COLOR_YELLOW, string);

    format(string,sizeof(string),"AdmWarn: Admin[%i] %s has set %s's health to %i",PlayerInfo[playerid][pAdmin], GetName(playerid), GetName(id), hp);

    WriteLog("Asethealth", string);

	return 1;
}






LEANCMD:(freeze)
{
	new id, string[85];
	if(sscanf(params,"u", id)) return SCM(playerid, COLOR_GREY,"USAGE: /freeze [playerid/partofname]");
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG

    if(PlayerInfo[playerid][GroupID] == 5 && PlayerInfo[id][Rank] == 1 && PlayerInfo[playerid][GroupID] != 4)
    {

	 	TogglePlayerControllable(id, 0);

	  	format(string, sizeof(string), "AdmCmd: %s has frozen %s", GetName(playerid), GetName(id));

		SendAdminMessage(COLOR_YELLOW,string);

	 	format(string,sizeof(string),"AdmWarn: %s has freezed %s",GetName(playerid), GetName(id));

	  	WriteLog("Afreeze", string);

		format(string, sizeof(string),"You have been frozen by admin %s", GetName(playerid));

		SendClientMessage(id, COLOR_LIGHTRED, string);

		return 1;
	}
	if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
	if(PlayerInfo[playerid][pAdmin] < PlayerInfo[id][pAdmin]) return SendClientMessage(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"This player is higher ranked admin than you are.");
	else
	{
		TogglePlayerControllable(id, 0);

	  	format(string, sizeof(string), "AdmCmd: %s has frozen %s", GetName(playerid), GetName(id));

		SendAdminMessage(COLOR_YELLOW,string);

	 	format(string,sizeof(string),"AdmWarn: %s has freezed %s",GetName(playerid), GetName(id));

	  	WriteLog("Afreeze", string);

		format(string, sizeof(string),"You have been frozen by admin %s", GetName(playerid));

		SendClientMessage(id, COLOR_LIGHTRED, string);
	}
	return 1;
}






LEANCMD:(thaw)
{
	new
	    id,
		string[83];

	if(sscanf(params,"u", id)) return SCM(playerid, COLOR_GREY,"USAGE: /unfreeze [playerid/partofname]");
	if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG
 	if(PlayerInfo[playerid][GroupID] == 5 && PlayerInfo[id][Rank] == 1 && PlayerInfo[playerid][GroupID] != 4)
    {
	     	TogglePlayerControllable(id, 1);
		  	format(string, sizeof(string), "AdmCmd: %s has thawed recruit %s", GetName(playerid), GetName(id));
			SendAdminMessage(COLOR_YELLOW,string);
	        return 1;
	}

	if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
 	TogglePlayerControllable(id, 1);
  	format(string, sizeof(string), "AdmCmd: %s has thawed %s", GetName(playerid), GetName(id));
	SendAdminMessage(COLOR_YELLOW,string);
 	format(string,sizeof(string),"AdmCmd: %s has thawed %s",GetName(playerid), GetName(id));
  	WriteLog("Athaw", string);
	format(string, sizeof(string),"You have been thawed by admin %s", GetName(playerid));
	SendClientMessage(id, COLOR_LIGHTRED, string);
	return 1;
}


LEANCMD:(setarmor)
{
	new
	    id,
		hp,
		string[128];

	if(!(PlayerInfo[playerid][pAdmin] >= 1))
	{
	        if(PlayerInfo[playerid][Rank] == 1) return SCM(playerid, COLOR_LIGHTRED, "[ ! ] "COL_WHITE" This command is not available for recruits.");
	    	if(sscanf(params,"i",  hp)) return SCM(playerid, COLOR_GREY,"USAGE: /setarmor [amount]");
     		SetPlayerArmour(playerid, hp);
		  	format(string, sizeof(string),"AdmWarn(%i): %s has set their armor to %d.",PlayerInfo[playerid][pAdmin], GetName(playerid), hp);
		   	SendAdminMessage(COLOR_YELLOW, string);
		   	WriteLog("Psetarmor", string);
		    format(string, sizeof(string),"You've set your armor to %d.", hp);
		    SendClientMessage(playerid, COLOR_YELLOW, string);
		    
		    return 1;
	}
	else
	{

		if(sscanf(params,"ui", id, hp)) return SCM(playerid, COLOR_GREY,"USAGE: /setarmor [playerid/partofname] [amount]");
		if(id == INVALID_PLAYER_ID) return INVALID_PLAYERMSG

	 	SetPlayerArmour(id, hp);
	  	format(string, sizeof(string),"AdmWarn(%i): %s has set %s's armour to %d",PlayerInfo[playerid][pAdmin], GetName(playerid), GetName(id), hp);
	   	SendAdminMessage(COLOR_YELLOW, string);
	    Log("/logs/AdmCmd.txt",string);
	    format(string, sizeof(string),"Admin %s has set your armour to %d", GetName(playerid), hp);
	    SendClientMessage(id,COLOR_YELLOW, string);
	    format(string,sizeof(string),"AdmWarn: Admin[%i] admin %s has set %s's armour to %i",PlayerInfo[playerid][pAdmin], GetName(playerid), GetName(id), hp);
	    WriteLog("Asetarmor", string);
	}
	return 1;
}


LEANCMD:(disarm)
{
    if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED

   	new
       id,
	   string[91];

   	if(sscanf(params,"u", id)) return SCM(playerid, COLOR_GREY,"USAGE: /disarm [Playerid]");
	ResetWeapons(id);
	format(string, sizeof(string),"AdmWarn(%i): %s has disarmed %s",PlayerInfo[playerid][pAdmin], GetName(playerid), GetName(id));
	SendAdminMessage(COLOR_YELLOW, string);
	return 1;

}

LEANCMD:(ao)
{
    if(!(PlayerInfo[playerid][pAdmin] >= 3)) return ADMIN_UNAUTHORIZED

	new
	     string[128];

	if(sscanf(params, "s[128]", params)) return SCM(playerid, COLOR_GREY,"USAGE: /ao [message]");
	if (PlayerInfo[playerid][pAdmin] < 1)
	{
		SendClientMessage(playerid, COLOR_GRAD2, "You are not authorized to use this command.");
		return 1;
	}
	format(string, sizeof(string), "[AOOC] %s: %s ", GetName(playerid), params);
    SendClientMessageToAll(COLOR_AO,string);
   	format(string, sizeof(string),"04[OOC]07 [AOOC] %s: %s", GetName(playerid), params);
 	IRC_GroupSayEx(string);
    format(string, sizeof(string), "[AOOC] %s: %s ",GetDay(),GetName(playerid), params);
    WriteLog("AO", string);
	return 1;
}



LEANCMD:(ann)
{
    if(PlayerInfo[playerid][pAdmin] < 3) return ADMIN_UNAUTHORIZED

    new String[96], string[128];

    if(sscanf(params, "s[126]", String)) return SendClientMessage(playerid, -1, "USAGE: /ann(ouncment)");
    else
    {
        format(String,sizeof(String),"~r~%s", String);
        GameTextForAll(String, 4000, 3);
        format(string, sizeof(string), "AdmWarn(%d): last announcment was placed by %s",PlayerInfo[playerid][pAdmin],GetName(playerid));
        SendLeadMessage(COLOR_YELLOW, string);
        format(string,sizeof(string),"[ANNOUNCMENT] %s: %s ",GetName(playerid), String);
        WriteLog("Announcment", string);
        EachPlayer(i)
        {
        	PlayerPlaySound(i, 5201, 0.0, 0.0, 0.0);
        }
    }
    return 1;
}


LEANCMD:(healall)
{

		#if defined TRAINING_SASD
	    if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
	    #endif
	    #if defined TRAINING_METRO
	    if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
	    #endif
    	new
			string[70];
	    
 		format(string, sizeof(string), "AdmCmd: %s has healed everyone.", GetName(playerid));
 		SendClientMessageToAll(COLOR_LIGHTRED, string);
  		format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s has healed everyone.", GetName(playerid));
  		IRC_GroupSayEx(string);
		EachPlayer(i)
		{
				SetPlayerHealth(i,SPAWNHEALTH);
				LEGRESET(i);
				SetTimerEx("HealthCheck",2000,false,"i",i);
		}
		return 1;
}



LEANCMD:(getallhere)
{

	#if defined TRAINING_SASD
    if(PlayerInfo[playerid][pAdmin] < 1) return ADMIN_UNAUTHORIZED
    #endif
    #if defined TRAINING_METRO
    if(PlayerInfo[playerid][pAdmin] < 2) return ADMIN_UNAUTHORIZED
    #endif

	new
		 string[80],
		 Interior = GetPlayerInterior(playerid);

 	format(string, sizeof(string), "AdmCmd: %s has teleported everyone to himself.",GetName(playerid));
 	SendClientMessageToAll(COLOR_LIGHTRED, string);
	format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s has teleported everyone to himself.",GetName(playerid));
	IRC_GroupSayEx(string);
    format(string,sizeof(string),"AdmCmd: %s has teleported everyone to himself.",GetName(playerid));
    WriteLog("TPAll", string);
    new Float:x, Float:y, Float:z;
    GetPlayerPos(playerid, x, y, z);
 	EachPlayer(i)
 	{
       if(AdminDuty[i] == false && i != playerid)
       {
            XTP[i] = x, YTP[i] = y, ZTP[i] = z;
 	      	SetPlayerInterior(i, Interior);
        	new rand;rand=random(3);
     		SetPlayerPosEx(i, x+rand, y+rand, z+1);
	      	SetPlayerVirtualWorld(i, GetPlayerVirtualWorld(playerid));
	      	WORLD[i] = WORLD[playerid];
	   }
	}
	return 1;
}

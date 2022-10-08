

#if defined TRAINING_SASD


// Name that everyone will see (main)
#define BOT_1_MAIN_NICKNAME "Leutrim_Bot"
// Name that everyone will see (alternate)
#define BOT_1_ALTERNATE_NICKNAME "Lean_Bot_1"
// Name that will only be visible in a whois
#define BOT_1_REALNAME "SED_Training_Server"
// Name that will be in front of the hostname (username@hostname)
#define BOT_1_USERNAME "SED_Training_Server"

#define BOT_2_MAIN_NICKNAME "Leutrim_Bot1"
#define BOT_2_ALTERNATE_NICKNAME "Lean_Bot_2"
#define BOT_2_REALNAME "Bot-Lean"
#define BOT_2_USERNAME "SED_Training_Server"

#define IRC_SERVER "foco.ca.irc.tl"
#define IRC_PORT (6667)
#define IRC_CHANNELWITH_PW "#RaptorServer lolfuckoff123"
#define IRC_CHANNEL "#RaptorServer"


#endif



#if defined TRAINING_METRO
// Name that everyone will see (main)
#define BOT_1_MAIN_NICKNAME "Raptor_Bot"
// Name that everyone will see (alternate)
#define BOT_1_ALTERNATE_NICKNAME "Lean_Bot_1_"
// Name that will only be visible in a whois
#define BOT_1_REALNAME "Raptor_Server"
// Name that will be in front of the hostname (username@hostname)
#define BOT_1_USERNAME "Raptor_Server"

#define BOT_2_MAIN_NICKNAME "Raptor_Bot2"
#define BOT_2_ALTERNATE_NICKNAME "Raptor_Bot_2_"
#define BOT_2_REALNAME "Bot-Raptor"
#define BOT_2_USERNAME "Raptor_Server"

#define IRC_SERVER "foco.ca.irc.tl"
#define IRC_PORT (6667)
#define IRC_CHANNELWITH_PW "#RaptorServer lolfuckoff123"
#define IRC_CHANNEL "#RaptorServer"

#endif
// Maximum number of bots
#define MAX_BOTS (2)

#define PLUGIN_VERSION "1.4.5"


new botIDs[MAX_BOTS], groupID;




public IRC_OnConnect(botid, ip[], port)
{
	IRC_JoinChannel(botid, IRC_CHANNELWITH_PW);
	IRC_AddToGroup(groupID, botid);
	return 1;
}



public IRC_OnDisconnect(botid, ip[], port, reason[])
{
	IRC_RemoveFromGroup(groupID, botid);
	return 1;
}


public IRC_OnConnectAttempt(botid, ip[], port)
{
	return 1;
}



public IRC_OnConnectAttemptFail(botid, ip[], port, reason[])
{
	printf("botid %d failed to connect, %s reason",botid,reason);
	return 1;
}



public IRC_OnJoinChannel(botid, channel[])
{
	return 1;
}



public IRC_OnLeaveChannel(botid, channel[], message[])
{
	return 1;
}


public IRC_OnInvitedToChannel(botid, channel[], invitinguser[], invitinghost[])
{
	return 1;
}


public IRC_OnKickedFromChannel(botid, channel[], oppeduser[], oppedhost[], message[])
{
	IRC_JoinChannel(botid, channel);
	return 1;
}

public IRC_OnUserDisconnect(botid, user[], host[], message[])
{
	return 1;
}

public IRC_OnUserJoinChannel(botid, channel[], user[], host[])
{
	return 1;
}

public IRC_OnUserLeaveChannel(botid, channel[], user[], host[], message[])
{
	return 1;
}

public IRC_OnUserKickedFromChannel(botid, channel[], kickeduser[], oppeduser[], oppedhost[], message[])
{
}

public IRC_OnUserNickChange(botid, oldnick[], newnick[], host[])
{
	return 1;
}

public IRC_OnUserSetChannelMode(botid, channel[], user[], host[], mode[])
{
	return 1;
}

public IRC_OnUserSetChannelTopic(botid, channel[], user[], host[], topic[])
{
	return 1;
}

new RandomMSG[][] =
{
    "Interesting Fact: Fishes can swim.",
	"Interesting Fact: Fishes live in water their whole life.",
	"Interesting Fact: A giraffe's heart weighs an incredible 24 pounds.",
	"Interesting Fact: Between 1902 and 1907, the same tiger killed 434 people in India.",
	"Interesting Fact: More people are kill by falling coconuts every year then sharks attack.",
	"Interesting Fact: A giraffe can go without water longer than a camel.",
    "Interesting Fact: Fishes take the bait very easy most of the times."
};

public IRC_OnUserSay(botid, recipient[], user[], host[], message[])
{
	// Someone sent the bot a private message
	if (!strcmp(recipient, BOT_1_MAIN_NICKNAME) || !strcmp(recipient, BOT_2_MAIN_NICKNAME))
	{
		
		new randMSG = random(sizeof(RandomMSG)); //calculates the size of RandomMSG (which is 3)
  		IRC_Say(botid, user, RandomMSG[randMSG]);
	}
	return 1;
}

public IRC_OnUserNotice(botid, recipient[], user[], host[], message[])
{
	if (!strcmp(recipient, BOT_1_MAIN_NICKNAME) || !strcmp(recipient, BOT_2_MAIN_NICKNAME))
	{
		IRC_Notice(botid, user, "Hi!");
	}
	return 1;
}

public IRC_OnUserRequestCTCP(botid, user[], host[], message[])
{
	// Someone sent a CTCP VERSION request
	if (!strcmp(message, "VERSION"))
	{
		IRC_ReplyCTCP(botid, user, "VERSION "#METROVERSION"");
	}
	return 1;
}

public IRC_OnUserReplyCTCP(botid, user[], host[], message[])
{
	return 1;
}

public IRC_OnReceiveNumeric(botid, numeric, message[])
{
	// Check if the numeric is an error defined by RFC 1459/2812
	if (numeric >= 400 && numeric <= 599)
	{
		const ERR_NICKNAMEINUSE = 433;
		if (numeric == ERR_NICKNAMEINUSE)
		{
			// Check if the nickname is already in use
			if (botid == botIDs[0])
			{
				IRC_ChangeNick(botid, BOT_1_ALTERNATE_NICKNAME);
			}
			else if (botid == botIDs[1])
			{
				IRC_ChangeNick(botid, BOT_2_ALTERNATE_NICKNAME);
			}
		}
	}
	return 1;
}


public IRC_OnReceiveRaw(botid, message[])
{
	new string[7];
	format(string, sizeof(string),"Bot%d",botid);
	WriteLog(string, message);
	return 1;
}





IRC_GroupSayEx(string[])
{
    IRC_GroupSay(groupID, IRC_CHANNEL, string);
    return 1;
}


IRCCMD:mysqlstats(botid, channel[], user[], host[], params[])
{
	new stats[150]; 
	mysql_stat(stats); 
	
	IRC_GroupSayEx(stats);
    return 1;
}




IRCCMD:renameacc(botid, channel[], user[], host[], params[])
{
    new
	    oldName[MAX_PLAYER_NAME],
		newName[MAX_PLAYER_NAME],
		leanquery[50+MAX_PLAYER_NAME];

    if(sscanf(params, "s[24]s[24]", oldName,newName ))
	{
		IRC_GroupSayEx("USAGE: /renameaccount [OldName][New name]");
		return 1;
	}

    if(strlen(oldName) < 3 || strlen(oldName) > MAX_PLAYER_NAME)
   	{
		IRC_GroupSayEx("[ ! ] Invalid name!");
		return 1;
	}
    mysql_format(mysql, leanquery, sizeof(leanquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", oldName);
	mysql_tquery(mysql, leanquery, "OnAccountIRCNameChange", "");
	accNname = newName;
	accOname = oldName;
    return 1;
}





IRCCMD:kickplayer(botid, channel[], user[], host[], params[])
{
	new 
		id;
	if(sscanf(params, "uS[128]",id, params))
	{
		IRC_GroupSayEx("USAGE: /kick [playerid] [reason]");
		return 1;
	}
	if(id == INVALID_PLAYER_ID) 
	{
		IRC_GroupSayEx("04 Invalid playerid.");
		return 1;
	}
	new string[128];
	format(string, sizeof(string),"AdmCmd: %s was kicked by %s, reason: %s",GetName(id),user, params);
	SendClientMessageToAll(COLOR_LIGHTRED,string);
	WriteLog("PlayerKicks", string);
	format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s was kicked by %s, reason: %s",GetName(id),user,params);
    IRC_GroupSayEx(string);

    TogglePlayerControllable(id,0);
    SetTimerEx("Kicku", 500, false, "i", id); 
	
	return 1;
	
}

IRCCMD:banplayer(botid, channel[], user[], host[], params[])
{
	new 
		id;
	if(sscanf(params, "uS[128]",id, params))
	{
		IRC_GroupSayEx("USAGE: /kick [playerid] [reason]");
		return 1;
	}
	if(id == INVALID_PLAYER_ID) 
	{
		IRC_GroupSayEx("04 Invalid playerid.");
		return 1;
	}
	new string[128];
	format(string, sizeof(string), "AdmCmd: %s was banned by %s, reason: %s",GetName(id), user, params);
 	SendClientMessageToAll(COLOR_LIGHTRED, string);
	WriteLog("PlayerBans", string);
   	format(string, sizeof(string),"04[WARNING]01 AdmCmd: %s was banned by %s, reason: %s",GetName(id),user,params);
    IRC_GroupSayEx(string);

	PlayerInfo[id][pBanned] = 1;
	format(PlayerInfo[id][pBannedr], 94, params);
	SetTimerEx("Kicku", 500, false, "i", id); //Waits a half second before kicking.

	return 1;
	
}



forward OnAccountIRCNameChange();
public OnAccountIRCNameChange()
{
    new leanquery[120], string[128], rows = cache_num_rows();

	if(rows > 0)
	{
		mysql_format(mysql, leanquery, sizeof(leanquery), "UPDATE `seb-users` SET `Username` = '%s' WHERE `Username` = '%s'", accNname, accOname);
		mysql_tquery(mysql, leanquery, "", "");
  		format(string, sizeof(string), "Account %s has been renamed to %s.", accOname, accNname);
     	IRC_GroupSayEx(string);

		new id = GetPlayerID(accOname);
	    if(IsPlayerConnected(id))
	    {
	        SetPlayerName(id, accNname);
			format(string,sizeof(string), "Your name has been changed to %s.",accNname);
			SCM(id, COLOR_WHITE,string);
			PlayerInfo[id][Username] = accNname;
		}
	}

	else
	{
	    IRC_GroupSayEx("[ ! ] That account does not exist!");
	}

	return 1;
}

IRCCMD:resetpw(botid, channel[], user[], host[], params[])
{
    new
	    sP[MAX_PLAYER_NAME],
		ottquery[80];

    if(sscanf(params, "s[24]", sP))
   	{
		IRC_GroupSayEx("USAGE: !resetpw [acc name] [Groupid]");
		return 1;
	}
    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", sP);
	mysql_tquery(mysql, ottquery, "OnAccountPasswordReset", "");
	ACCDISABLE = sP;
    return 1;
}

forward OnAccountPasswordReset();
public OnAccountPasswordReset()
{
    new ottquery[130+MAX_PLAYER_NAME], string[128], rows = cache_num_rows();

	if(rows > 0)
	{
		new hashpass[129];
		WP_Hash(hashpass,sizeof(hashpass),"changeit");
		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `Password` = '%s', `Pw` = '0' WHERE `Username` = '%s'", hashpass, ACCDISABLE);
		mysql_tquery(mysql, ottquery, "", "");
  		format(string, sizeof(string), "Password of account %s has been reset to changeit." , ACCDISABLE);
     	IRC_GroupSayEx(string);
	}

	else
	{
	    IRC_GroupSayEx("That name does not exist.");
	}

	return 1;
}

IRCCMD:setaccgroup(botid, channel[], user[], host[], params[])
{
    new
	    sP[MAX_PLAYER_NAME],
	    groupid,
		ottquery[80];

    if(sscanf(params, "s[24]d", sP,groupid))
   	{
		IRC_GroupSayEx("USAGE: !setaccgroup [acc name] [Groupid]");
		return 1;
	}
    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", sP);
	mysql_tquery(mysql, ottquery, "OnAccountIRCGroupSet", "d", groupid);
	ACCDISABLE = sP;
    return 1;
}

forward OnAccountIRCGroupSet(id);
public OnAccountIRCGroupSet(id)
{
    new ottquery[130+MAX_PLAYER_NAME], string[128], rows = cache_num_rows();

	if(rows > 0)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `GroupID` = '%d' WHERE `Username` = '%s'",id, ACCDISABLE);
		mysql_tquery(mysql, ottquery, "", "");
  		format(string, sizeof(string), "Group of account %s has been changed to %d (%s)." , ACCDISABLE, id,GroupInfo[id][GroupName]);
     	IRC_GroupSayEx(string);
	}

	else
	{
	    IRC_GroupSayEx("That name does not exist.");
	}

	return 1;
}


IRCCMD:deleteacc(botid, channel[], user[], host[], params[])
{
    new
	    sP[MAX_PLAYER_NAME],
		ottquery[80];

    if(sscanf(params, "s[24]", sP))
   	{
		IRC_GroupSayEx("USAGE: !deleteacc [acc name]");
		return 1;
	}
    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", sP);
	mysql_tquery(mysql, ottquery, "OnAccountDelete", "");
	ACCDISABLE = sP;
    return 1;
}

forward OnAccountDelete();
public OnAccountDelete()
{
    new ottquery[130+MAX_PLAYER_NAME], string[128], rows = cache_num_rows();

	if(rows > 0)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "DELETE FROM `seb-users` WHERE `Username` = '%s'", ACCDISABLE);
		mysql_tquery(mysql, ottquery, "", "");
  		format(string, sizeof(string), "Account %s has been deleted permanently." , ACCDISABLE);
     	IRC_GroupSayEx(string);
	}

	else
	{
	    IRC_GroupSayEx("That name does not exist.");
	}

	return 1;
}



IRCCMD:setaccrank(botid, channel[], user[], host[], params[])
{
    new
	    sP[MAX_PLAYER_NAME],
	    groupid,
		ottquery[80];

    if(sscanf(params, "s[24]d", sP,groupid))
   	{
		IRC_GroupSayEx("USAGE: !setaccrank [player name] [group id]");
		return 1;
	}
    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", sP);
	mysql_tquery(mysql, ottquery, "OnAccountIRCRankSet", "d", groupid);
	ACCDISABLE = sP;
    return 1;
}


forward OnAccountIRCRankSet(id);
public OnAccountIRCRankSet(id)
{
    new ottquery[130+MAX_PLAYER_NAME], string[128], rows = cache_num_rows();

	if(rows > 0)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `Rank` = '%d' WHERE `Username` = '%s'",id, ACCDISABLE);
		mysql_tquery(mysql, ottquery, "", "");
  		format(string, sizeof(string), "Rank of acc %s has been set to %d (%s).", ACCDISABLE, id,RANKINFO[id][RankName]);
     	IRC_GroupSayEx(string);
	}

	else
	{
	    IRC_GroupSayEx("That name does not exist.");
	}

	return 1;
}


IRCCMD:setaccadmin(botid, channel[], user[], host[], params[])
{
    new
	    sP[MAX_PLAYER_NAME],
	    groupid,
		ottquery[80];

    if(sscanf(params, "s[24]d", sP,groupid))
   	{
		IRC_GroupSayEx("USAGE: !setaccadmin [player name] [admin lvl]");
		return 1;
	}
    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", sP);
	mysql_tquery(mysql, ottquery, "OnAccountIRCAdminSet", "d", groupid);
	ACCDISABLE = sP;
    return 1;
}

forward OnAccountIRCAdminSet(id);
public OnAccountIRCAdminSet(id)
{
    new ottquery[130+MAX_PLAYER_NAME], string[128], rows = cache_num_rows();

	if(rows > 0)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `Admin` = '%d' WHERE `Username` = '%s'",id, ACCDISABLE);
		mysql_tquery(mysql, ottquery, "", "");
  		format(string, sizeof(string), " %s admin level has been set to %d." , ACCDISABLE, id);
     	IRC_GroupSayEx(string);
	}

	else
	{
	    IRC_GroupSayEx("That name does not exist.");
	}

	return 1;
}





IRCCMD:createacc(botid, channel[], user[], host[], params[])
{
	new dName[MAX_PLAYER_NAME];
	if(sscanf(params, "s[24]", dName))
	{
		IRC_GroupSayEx("USAGE: !createacc [player name]");
		return 1;
	}

	if(IsARolePlayName(dName) == 0)
	{
	 	IRC_GroupSayEx("ERROR: "COL_WHITE"Not a valid name.");
	 	return 1;
	}

    MakeaAcc(INVALID_PLAYER_ID, dName);

    newAcc = dName;

	return 1;
}

IRCCMD:nopasswords(botid, channel[], user[], host[], params[])
{
    IRC_GroupSayEx("Listing users whom have not changed their passwords.");
    LoadNoPasswords();
    return 1;
}




forward LoadNoPasswords();
public LoadNoPasswords()
{
	new ottquery[52];
	for(new x = 1; x < MAX_ACCOUNTS; x++)
	{
	    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `ID` = %d", x);
		mysql_tquery(mysql, ottquery, "DoesNoPasswordExist", "i", x);
	}
}

forward DoesNoPasswordExist(userID);
public DoesNoPasswordExist(userID)
{
	new rows, fields, ottquery[50];
	cache_get_data(rows, fields, mysql);
	if(rows)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `ID` = %d", userID);
		mysql_tquery(mysql, ottquery, "DisplayPasswordUser", "i", userID);
	    return 1;
	}
	return 0;
}

forward DisplayPasswordUser(userID);
public DisplayPasswordUser(userID)
{
	new name[MAX_PLAYER_NAME], pw,bn, string[MAX_PLAYER_NAME+10];
	cache_get_row(0, 1, name, mysql);
	pw = cache_get_row_int(0, 12, mysql);
	bn = cache_get_row_int(0, 10, mysql);
  	if(pw == 0 && bn == 0)
   	{
  			format(string, sizeof(string), "%s - (%d)" ,name, userID);
      		IRC_GroupSayEx(string);
	}
	return 1;
}


IRCCMD:laston(botid, channel[], user[], host[], params[])
{

    new
	    sP[MAX_PLAYER_NAME],
		ottquery[80];

    if(sscanf(params, "s[24]", sP))
   	{
		IRC_GroupSayEx("USAGE: !laston [player name]");
		return 1;
	}
    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", sP);
	mysql_tquery(mysql, ottquery, "LastOnCheckIRC", "");
	ACCDISABLE = sP;
    return 1;
}


forward LastOnCheckIRC(playerid);
public LastOnCheckIRC(playerid)
{
    new string[128], rows = cache_num_rows();

	if(rows > 0)
	{
		new ontime[64];
        cache_get_row(0, 42, ontime, mysql);
  		format(string, sizeof(string), "[Last On] %s %s",ACCDISABLE, ontime);
    	IRC_GroupSayEx(string);
	}

	else
	{
	    SCM(playerid, COLOR_LIGHTRED, "[ ! ]"COL_WHITE" That account does not exist!");
	}

	return 1;
}


IRCCMD:bannedlist(botid, channel[], user[], host[], params[])
{
    IRC_GroupSayEx("Listing banned users.");
    LoadBannedUsers();
    return 1;
}




forward LoadBannedUsers();
public LoadBannedUsers()
{
	new ottquery[52];
	for(new x = 1; x < MAX_ACCOUNTS; x++)
	{
	    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `ID` = %d", x);
		mysql_tquery(mysql, ottquery, "DoesBannedUserExist", "i", x);
	}
}

forward DoesBannedUserExist(userID);
public DoesBannedUserExist(userID)
{
	new rows, fields, ottquery[50];
	cache_get_data(rows, fields, mysql);
	if(rows)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `ID` = %d", userID);
		mysql_tquery(mysql, ottquery, "DisplayBannedUser", "i", userID);
	    return 1;
	}
	return 0;
}

forward DisplayBannedUser(userID);
public DisplayBannedUser(userID)
{
	new name[MAX_PLAYER_NAME], bn, string[MAX_PLAYER_NAME+100], bannedr[96];
	cache_get_row(0, 1, name, mysql);
	bn = cache_get_row_int(0, 10, mysql);
	cache_get_row(0, 18, bannedr, mysql);
  	if(bn == 1)
   	{
  			format(string, sizeof(string), "%s (%d) - %s" ,name, userID, bannedr);
      		IRC_GroupSayEx(string);
	}
	return 1;
}



// ADmin list

IRCCMD:adminlist(botid, channel[], user[], host[], params[])
{
    IRC_GroupSayEx("Listing admin accounts.");
    LoadAdminUsers();
    return 1;
}





IRCCMD:cmds(botid, channel[], user[], host[], params[])
{
	IRC_GroupSayEx("7 !ooc(o) (OOC CHAT)4|7 !a (Admin Chat)");
    IRC_GroupSayEx("7 !kickplayer <name> <reason> 4|7 !banplayer <name> <reason>");
	IRC_GroupSayEx("7 !createacc <name>4|7!resetpw <name> 4|7 !setaccadmin <name> <level>4|7 !renameacc <current name> <oldname> 4|7 !deleteacc <name>");
	IRC_GroupSayEx("7 !setaccrank <name> <rankid> 4|7 !enableacc <name> 4|7 !disableacc <name> 4|7 !deleteacc <name> 4|7 !setaccgroup <name> <groupid>");
	IRC_GroupSayEx("7 !laston <name> 4|7 !adminlist 4|7 !bannedlist");
	IRC_GroupSayEx("7 !players 4|7 !admins");
    return 1;
}
forward LoadAdminUsers();
public LoadAdminUsers()
{
	new ottquery[52];
	for(new x = 1; x < MAX_ACCOUNTS; x++)
	{
	    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `ID` = %d", x);
		mysql_tquery(mysql, ottquery, "DoesAdminUserExist", "i", x);
	}
}

forward DoesAdminUserExist(userID);
public DoesAdminUserExist(userID)
{
	new rows, fields, ottquery[50];
	cache_get_data(rows, fields, mysql);
	if(rows)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `ID` = %d", userID);
		mysql_tquery(mysql, ottquery, "DisplayAdminUser", "i", userID);
	    return 1;
	}
	return 0;
}

forward DisplayAdminUser(userID);
public DisplayAdminUser(userID)
{
	new name[MAX_PLAYER_NAME], bn, string[MAX_PLAYER_NAME+40];
	cache_get_row(0, 1, name, mysql);
	bn = cache_get_row_int(0, 4, mysql);
  	if(bn > 0)
   	{
  			format(string, sizeof(string), "%s (%d) - ADMIN LEVEL: 11%d" ,name, userID, bn);
      		IRC_GroupSayEx(string);
	}
	return 1;
}


IRCCMD:recruitlist(botid, channel[], user[], host[], params[])
{
    IRC_GroupSayEx("Listing accounts with rank id 1");
    LoadRecruits();
    return 1;
}




forward LoadRecruits();
public LoadRecruits()
{
	new ottquery[52];
	for(new x = 1; x < MAX_ACCOUNTS; x++)
	{
	    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `ID` = %d", x);
		mysql_tquery(mysql, ottquery, "DoesRecruitExist", "i", x);
	}
}

forward DoesRecruitExist(userID);
public DoesRecruitExist(userID)
{
	new rows, fields, ottquery[50];
	cache_get_data(rows, fields, mysql);
	if(rows)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `ID` = %d", userID);
		mysql_tquery(mysql, ottquery, "DisplayRecruitUser", "i", userID);
	    return 1;
	}
	return 0;
}

forward DisplayRecruitUser(userID);
public DisplayRecruitUser(userID)
{
	new rankid, name[MAX_PLAYER_NAME], pw,bn, string[MAX_PLAYER_NAME+10];
	cache_get_row(0, 1, name, mysql);
	pw = cache_get_row_int(0, 12, mysql);
 	rankid = cache_get_row_int(0, 15, mysql);
 	bn = cache_get_row_int(0, 10, mysql);
  	if(rankid == 1 && pw != 0 && bn == 0)
   	{
  			format(string, sizeof(string), "%s - (%d)" ,name, userID);
      		IRC_GroupSayEx(string);
	}
	return 1;
}



IRCCMD:gmx(botid, channel[], user[], host[], params[])
{
		gmx();
		GameTextForAll("Server Restart.",5000,1);
		return 1;
}


IRCCMD:enableacc(botid, channel[], user[], host[], params[])
{
	    new
		    sP[MAX_PLAYER_NAME],
			ottquery[128];


	    if(sscanf(params,"s[24]", sP))
	    {
	        IRC_GroupSayEx("!enableacc [username]");
	        return 1;
		}

    	mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", sP);
		mysql_tquery(mysql, ottquery, "OnAccountEnableIRC", "");
		ACCDISABLE = sP;
    	return 1;
}

IRCCMD:ooc(botid, channel[], user[], host[], params[])
{

	    if(sscanf(params,"s[128]", params))
	    {
	        IRC_GroupSayEx("!ooc [message]");
	        return 0;
		}
		else
		{
			new string[145];
			format(string,sizeof(string),"[OOC] %s: %s", user, params);
			SendOOCMessage(COLOR_OOC, string);
			format(string,sizeof(string),"[OOC]: %s",  params);
			IRC_GroupSayEx(string);
		}
    	return 1;
}

IRCCMD:o(botid, channel[], user[], host[], params[])
{

	    if(sscanf(params,"s[128]", params))
	    {
	        IRC_GroupSayEx("!o [message]");
	        return 0;
		}
		else
		{
			new string[145];
			format(string,sizeof(string),"[OOC] %s: %s", user, params);
			SendOOCMessage(COLOR_OOC, string);
			format(string,sizeof(string),"[OOC]: %s",  params);
			IRC_GroupSayEx(string);
		}
    	return 1;
}

IRCCMD:a(botid, channel[], user[], host[], params[])
{

	    if(sscanf(params,"s[128]", params))
	    {
	        IRC_GroupSayEx("!a [message]");
	        return 0;
		}
		else
		{
			new string[145];
	    	format(string,sizeof(string),"*Admin[IRC] %s: %s",user,params);
	    	SendAMessage(COLOR_YELLOW, string);
		}
    	return 1;
}


forward OnAccountEnableIRC(playerid);
public OnAccountEnableIRC(playerid)
{
    new ottquery[160+MAX_PLAYER_NAME], string[128], rows = cache_num_rows();

	if(rows > 0)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `Banned` = '0', `BannedR` = 'NULL' WHERE `Username` = '%s'", ACCDISABLE);
		mysql_tquery(mysql, ottquery, "", "");
  		format(string, sizeof(string), "AdmWarn(IRC): enabled the account %s." , ACCDISABLE);
    	SendAdminMessage(COLOR_YELLOW, string);
	}

	else
	{
 		IRC_GroupSayEx("Account does not exist.");
   		return 1;
	}

	return 1;
}



IRCCMD:disableacc(botid, channel[], user[], host[], params[])
{
	    new
		    sP[MAX_PLAYER_NAME],
			ottquery[80];


	    if(sscanf(params,"s[24]", sP))
	    {
	        IRC_GroupSayEx("!disableacc [username]");
	        return 1;
		}

    	mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `Username` = '%s'", sP);
		mysql_tquery(mysql, ottquery, "OnAccountDisableIRC", "");
		ACCDISABLE = sP;
    	return 1;
}

forward OnAccountDisableIRC(playerid);
public OnAccountDisableIRC(playerid)
{
    new ottquery[130+MAX_PLAYER_NAME], string[128], rows = cache_num_rows();

	if(rows > 0)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "UPDATE `seb-users` SET `Banned` = '1', `BannedR` = 'Your account has been deactivated by an Administrator' WHERE `Username` = '%s'", ACCDISABLE);
		mysql_tquery(mysql, ottquery, "", "");
  		format(string, sizeof(string), "AdmWarn(IRC):disabled the account %s." ,ACCDISABLE);
    	SendAdminMessage(COLOR_YELLOW, string);
	}

	else
	{
 		IRC_GroupSayEx("Account does not exist.");
   		return 1;
	}

	return 1;
}






IRCCMD:players(botid, channel[], user[], host[], params[])
{
		new players, string[500], zstring[500];
		EachPlayer( i)
		{
		    players++;
		    if(AdminDuty[i] == true)
		    {
			    	format(zstring, sizeof(zstring), "3%s(%d) ", GetName(i),i);
			    	strcat(string, zstring);
			}
			else
			{
				    format(zstring, sizeof(zstring), "0%s(%d) ", GetName(i),i);
				    strcat(string, zstring);
			}
		}
	 	format(zstring, sizeof(zstring),"14Total Players(01%d/%d): %s",players, MAX_PLAYERS, string);
	  	IRC_GroupSayEx(zstring);
		return 1;
}

IRCCMD:admins(botid, channel[], user[], host[], params[])
{
		new string[500], zstring[500];
		EachPlayer( i)
		{
		    if(PlayerInfo[i][pAdmin] > 0)
		    {
			    if(AdminDuty[i] == true)
			    {
			    	format(zstring, sizeof(zstring), "3%s (Level: %d)", GetName(i),PlayerInfo[i][pAdmin] );
			    	strcat(string, zstring);
				}
				else
				{
				    format(zstring, sizeof(zstring), "0%s (Level: %d)", GetName(i),PlayerInfo[i][pAdmin] );
				    strcat(string, zstring);
				}
			}

		}
	 	format(zstring, sizeof(zstring),"Admins ingame: %s",string);
	  	IRC_GroupSayEx(zstring);
		return 1;
}
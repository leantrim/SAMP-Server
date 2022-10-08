
#define MAX_GROUPS 20



#define MAX_GROUP_STRING 28



enum GRInfo
{
	GroupName[MAX_GROUP_STRING],
	GroupExist
};
new GroupInfo[MAX_GROUPS][GRInfo];



forward LoadGroups();
public LoadGroups()
{
	new ottquery[52];
	for(new x = 1; x < MAX_GROUPS; x++)
	{
	    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-groups` WHERE `gID` = %d", x);
		mysql_tquery(mysql, ottquery, "DoesGroupExist", "i", x);
	}
}

forward DoesGroupExist(gID);
public DoesGroupExist(gID)
{
	new rows, fields, ottquery[50];
	cache_get_data(rows, fields, mysql);
	if(rows)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-groups` WHERE `gID` = %d", gID);
		mysql_tquery(mysql, ottquery, "LoadGroup", "i", gID);
	    return 1;
	}
	else
	{
		GroupInfo[gID][GroupExist] = 0;
	}

	return 0;
}

forward LoadGroup(gID);
public LoadGroup(gID)
{
	new gName[MAX_GROUP_STRING];
 	cache_get_row(0, 1, gName);

  	GroupInfo[gID][GroupName] = gName;
  	GroupInfo[gID][GroupExist] = 1;

	return 1;
}



stock GetNextGroupID()
{
	for(new x = 1; x < MAX_GROUPS; x++)
	{
	    if(GroupInfo[x][GroupExist] == 0)
	    {
	        return x;
	    }
	}
	return 1;
}


LEANCMD:(listengroupas)
{
	if(PlayerInfo[playerid][pAdmin] <= 4) return 0;
	listening[playerid] = !listening[playerid];
	SCM(playerid,COLOR_GREY,listening[playerid] ? ("you are now listening to all groups.") : "You are no longer listening to any groups.");
	return 1;
}


LEANCMD:(g)
{
	new
		input[128],
		string[MAX_PLAYER_NAME + MAX_PLAYER_NAME + 128],
		rid = PlayerInfo[playerid][GroupID];

	if(PlayerInfo[playerid][GroupID] == 0) return SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"You are not in a group.");
	if(sscanf(params,"s[128]",input)) return SCM(playerid, COLOR_LIGHTRED,"USAGE: "COL_WHITE"/g [Text]");
	format(string,sizeof(string),"[%s]{33CCFF} %s: %s",GroupInfo[rid][GroupName],GetICName(playerid),input);
	if(PlayerInfo[playerid][GroupID] == 4 || PlayerInfo[playerid][GroupID] == 5)
	{
		EachPlayer( i)
		{
		    	if(PlayerInfo[i][GroupID] == 4 || PlayerInfo[i][GroupID] == 5 || listening[i] == 1)
		    	{
		        	SendGroupessage(i, COLOR_TESTER, string);
	 			}
		}
	}
	else
	{
		EachPlayer( i)
		{
		    	if(PlayerInfo[i][GroupID] == PlayerInfo[playerid][GroupID] || listening[i] == 1)
		    	{
		        	SendGroupessage(i,COLOR_TESTER,string);
	 			}
		}
	}
	new	logformat[MAX_PLAYER_NAME+19];
  	format(logformat, sizeof(logformat),"/logs/Groups/%s.txt",GetName(playerid));
   	format(string,sizeof(string),"[%s] %s: %s",GroupInfo[rid][GroupName],GetICName(playerid),input);
   	Log(logformat,string);
	new stringz[128];
	format(stringz, sizeof(stringz), "05[Group %d] %s:08 %s",PlayerInfo[playerid][GroupID],GetICName(playerid),input);
    IRC_GroupSayEx(stringz);
	return 1;
}

LEANCMD:(gmembers)
{
	new string[MAX_PLAYER_NAME+30];
	new string2[64];
	if(PlayerInfo[playerid][GroupID] == 0) return SCM(playerid,COLOR_GREY,"You are not in a group..");
	format(string2,sizeof(string2),"Current Group: %s [ID: %d]",GroupInfo[PlayerInfo[playerid][GroupID]][GroupName],PlayerInfo[playerid][GroupID]);
	SCM(playerid,COLOR_TESTER,string2);
	EachPlayer( i)
	{
	    	if(PlayerInfo[playerid][GroupID] == PlayerInfo[i][GroupID])
	    	{
	        	format(string,sizeof(string),"[G%d]"COL_ORANGE" %s (ID: %d)",PlayerInfo[i][GroupID],GetName(i),i);
	        	SCM(playerid,COLOR_TESTER,string);
 			}
	}
	return 1;
}
new groupA[MAX_PLAYERS];
new BeingRun;
LEANCMD:(ginfo)
{
	new
		string[128],
		gid;

	if(PlayerInfo[playerid][pAdmin] < 4) return ADMIN_UNAUTHORIZED
	if(sscanf(params,"d",gid)) return SCM(playerid,COLOR_GREY,"USAGE: /ginfo [GroupID]");
	if(gid == 0 || GroupInfo[gid][GroupExist] == 0) return SCM(playerid,COLOR_GREY,"Invalid groupid.");
	BeingRun = playerid;
	format(string,sizeof(string),"Listing members of group: %s [ID: %d] ("COL_GREEN"Online"COL_WHITE" || "COL_GREY"Offline"COL_WHITE")",GroupInfo[gid][GroupName],gid);
	SCM(playerid, COLOR_WHITE, string);

	groupA[playerid] = gid;
	LoadGroupInfo();
	return 1;
}

forward LoadGroupInfo();
public LoadGroupInfo()
{
	new ottquery[52];
	for(new x = 1; x < MAX_ACCOUNTS; x++)
	{
	    mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `ID` = %d", x);
		mysql_tquery(mysql, ottquery, "DoesGroupUserExist", "i", x);
	}
}

forward DoesGroupUserExist(userID);
public DoesGroupUserExist(userID)
{
	new rows, fields, ottquery[50];
	cache_get_data(rows, fields, mysql);
	if(rows)
	{
		mysql_format(mysql, ottquery, sizeof(ottquery), "SELECT * FROM `seb-users` WHERE `ID` = %d", userID);
		mysql_tquery(mysql, ottquery, "DisplayGroupUser", "i", userID);
	    return 1;
	}
	return 0;
}

forward DisplayGroupUser(userID);
public DisplayGroupUser(userID)
{
	new name[MAX_PLAYER_NAME], pw, string[MAX_PLAYER_NAME+20], loggedg;
	cache_get_row(0, 1, name, mysql);
	pw = cache_get_row_int(0, 20, mysql);
	loggedg = cache_get_row_int(0, 37, mysql);
  	if(pw == groupA[BeingRun])
   	{
   	        if(loggedg)
   	        {
  				format(string, sizeof(string), "%s - (DBID: %d)" ,name, userID);
    			SCM(BeingRun, COLOR_GREEN, string);
			}
			if(loggedg == 0)
			{
				format(string, sizeof(string), "%s - (DBID: %d)" ,name, userID);
    			SCM(BeingRun, COLOR_GREY, string);
			}
	}
	return 1;
}

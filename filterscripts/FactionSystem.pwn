/*
						 ******FACTION SYSTEM BY LEAN*******



*/

//****START OF SCRIPT*****//

//****INCLUDES*****//
#include <a_samp>
#include <dini>
#include <zcmd>
#include <sscanf2>
#include <foreach>

//****END OF INCLUDES*****//

//****DEFINES*****//
#define COLOR_YELLOW 0xFFFF00AA
#define COLOR_GREEN 0x33AA33AA
#define COLOR_WHITE -1

#define MAXFACTIONS 25
#define Folder "/Factions/%d.ini"
#define SCM SendClientMessage


#define LEANCMD:(%1) CMD:%1(playerid, params[])

//****END OF DEFINES*****//

//***ENUMS*****//

enum FInfo
{
	FactionName[64],Rank1[32],Rank2[32],Rank3[32],Rank4[32],Rank5[32],Rank6[32],Rank7[32],Rank8[32],Rank9[32],Rank10[32],FactionSkin,Float:spawnX,Float:spawnY,Float:spawnZ,Float:spawnhqX,Float:spawnhqY,Float:spawnhqZ,HQInterior
};
new FactionInfo[MAXFACTIONS][FInfo];

enum PFInfo
{
	Faction,FactionRank
};
new PlayerFaction[MAX_PLAYERS][PFInfo];

//***END OF ENUMS*****//

//****STOCKS****//

stock NextFaction()
{
	new ID[64]; for(new h = 0; h <= 200; h++){
	format(ID, sizeof(ID), Folder, h);if(!dini_Exists(ID)) return h; }return true;
}


stock SaveFactions()
{
	new DateiString[50];
 	for(new ID = 0; ID < sizeof(FactionInfo); ID++)
	{
	    format(DateiString, sizeof(DateiString), Folder, ID);
	    if(dini_Exists(DateiString))
	    {
		    dini_Set(DateiString,"FactionName",FactionInfo[ID][FactionName]);
		    dini_Set(DateiString,"Rank1", FactionInfo[ID][Rank1]);
		    dini_Set(DateiString,"Rank2", FactionInfo[ID][Rank2]);
		    dini_Set(DateiString,"Rank3", FactionInfo[ID][Rank3]);
		    dini_Set(DateiString,"Rank4", FactionInfo[ID][Rank4]);
		    dini_Set(DateiString,"Rank5", FactionInfo[ID][Rank5]);
		    dini_Set(DateiString,"Rank6", FactionInfo[ID][Rank6]);
		    dini_Set(DateiString,"Rank7", FactionInfo[ID][Rank7]);
		    dini_Set(DateiString,"Rank8", FactionInfo[ID][Rank8]);
		    dini_Set(DateiString,"Rank9", FactionInfo[ID][Rank9]);
		    dini_Set(DateiString,"Rank10", FactionInfo[ID][Rank10]);
		    dini_IntSet(DateiString,"FactionSkin", FactionInfo[ID][FactionSkin]);
		    dini_IntSet(DateiString,"HQInterior", FactionInfo[ID][HQInterior]);
		    dini_FloatSet(DateiString,"spawnX", FactionInfo[ID][spawnX]);
		    dini_FloatSet(DateiString,"spawnY", FactionInfo[ID][spawnY]);
		    dini_FloatSet(DateiString,"spawnZ", FactionInfo[ID][spawnZ]);
		    dini_FloatSet(DateiString,"spawnhqX", FactionInfo[ID][spawnhqX]);
		    dini_FloatSet(DateiString,"spawnhqY", FactionInfo[ID][spawnhqY]);
		    dini_FloatSet(DateiString,"spawnhqZ", FactionInfo[ID][spawnhqZ]);
	    }
    }
	return 1;
}





stock LoadFactions()
{
	new DateiString[70];
    for(new ID = 0; ID < sizeof(FactionInfo); ID++)
	{
		format(DateiString, sizeof(DateiString), Folder, ID);
	    if(dini_Exists(DateiString))
		{
		    strmid(FactionInfo[ID][FactionName],dini_Get(DateiString,"FactionName"),0,64,64);
			strmid(FactionInfo[ID][Rank1],dini_Get(DateiString,"Rank1"),0,MAX_PLAYER_NAME,MAX_PLAYER_NAME);
			strmid(FactionInfo[ID][Rank2],dini_Get(DateiString,"Rank2"),0,MAX_PLAYER_NAME,MAX_PLAYER_NAME);
			strmid(FactionInfo[ID][Rank3],dini_Get(DateiString,"Rank3"),0,MAX_PLAYER_NAME,MAX_PLAYER_NAME);
			strmid(FactionInfo[ID][Rank4],dini_Get(DateiString,"Rank4"),0,MAX_PLAYER_NAME,MAX_PLAYER_NAME);
			strmid(FactionInfo[ID][Rank5],dini_Get(DateiString,"Rank5"),0,MAX_PLAYER_NAME,MAX_PLAYER_NAME);
			strmid(FactionInfo[ID][Rank6],dini_Get(DateiString,"Rank6"),0,MAX_PLAYER_NAME,MAX_PLAYER_NAME);
			strmid(FactionInfo[ID][Rank7],dini_Get(DateiString,"Rank7"),0,MAX_PLAYER_NAME,MAX_PLAYER_NAME);
			strmid(FactionInfo[ID][Rank8],dini_Get(DateiString,"Rank8"),0,MAX_PLAYER_NAME,MAX_PLAYER_NAME);
			strmid(FactionInfo[ID][Rank9],dini_Get(DateiString,"Rank9"),0,MAX_PLAYER_NAME,MAX_PLAYER_NAME);
			strmid(FactionInfo[ID][Rank10],dini_Get(DateiString,"Rank10"),0,MAX_PLAYER_NAME,MAX_PLAYER_NAME);
		    FactionInfo[ID][spawnX] =  dini_Int(DateiString, "spawnX");
		    FactionInfo[ID][spawnY] =  dini_Int(DateiString, "spawnY");
		    FactionInfo[ID][spawnZ] =  dini_Int(DateiString, "spawnZ");
		    FactionInfo[ID][spawnhqX] =  dini_Int(DateiString, "spawnhqX");
		    FactionInfo[ID][spawnhqY] =  dini_Int(DateiString, "spawnhqY");
		    FactionInfo[ID][spawnhqZ] =  dini_Int(DateiString, "spawnhqZ");
		    FactionInfo[ID][FactionSkin] = dini_Int(DateiString, "FactionSkin");
	  		FactionInfo[ID][HQInterior] = dini_Int(DateiString, "HQInterior");
   		}
	}
	return 1;
}


stock GetName(playerid)
{
	new name[MAX_PLAYER_NAME];
 	GetPlayerName(playerid,name,sizeof(name));
	return name;
}


stock FAID(playerid)
{
	new FactionID = PlayerFaction[playerid][Faction];
	return FactionID;
}

stock RankID(playerid)
{
	new RID = PlayerFaction[playerid][FactionRank];
	return RID;
}

LEANCMD:(asd)
{
	new string[128];
	format(string, sizeof(string),"Current Faction Rank %s faction id %d",Rank(playerid),FAID(playerid));
	SCM(playerid, COLOR_YELLOW,string);
	return 1;
}

stock Rank(playerid)
{
	new rank = RankID(playerid);
	new rname[MAX_PLAYER_NAME];
	switch(rank)
	{
 		case 1:
	    {
			format(rname, sizeof(rname),"%s",FactionInfo[FAID(playerid)][Rank1]);
		}
  		case 2:
	    {
			format(rname, sizeof(rname),"%s",FactionInfo[FAID(playerid)][Rank2]);
		}
  		case 3:
	    {
			format(rname, sizeof(rname),"%s",FactionInfo[FAID(playerid)][Rank3]);
		}
  		case 4:
	    {
			format(rname, sizeof(rname),"%s",FactionInfo[FAID(playerid)][Rank4]);
		}
		case 5:
	    {
			format(rname, sizeof(rname),"%s",FactionInfo[FAID(playerid)][Rank5]);
		}
		case 6:
	    {
			format(rname, sizeof(rname),"%s",FactionInfo[FAID(playerid)][Rank6]);
		}
  		case 7:
	    {
			format(rname, sizeof(rname),"%s",FactionInfo[FAID(playerid)][Rank7]);
		}
  		case 8:
	    {
			format(rname, sizeof(rname),"%s",FactionInfo[FAID(playerid)][Rank8]);
		}
  		case 9:
	    {
			format(rname, sizeof(rname),"%s",FactionInfo[FAID(playerid)][Rank9]);
		}
  		case 10:
	    {
			format(rname, sizeof(rname),"%s",FactionInfo[FAID(playerid)][Rank10]);
		}
		
	}
	return rname;

}
	
	
//****END OF STOCKS****//


//*****PUBLICS****//

public OnFilterScriptInit()
{
    SendClientMessageToAll(-1,"Leans Faction System Loaded");
    LoadFactions();
	return 1;
}

public OnFilterScriptExit()
{
	print("Graffiti System By Lean unloaded");
	return 1;
}


//*****END OF PUBLICS****//


//****COMMANDS*****//

LEANCMD:(factions)
{
	new DynamicString[ 1000 ];
	new PickupD = NextFaction();
	for(new ID = 0; ID < PickupD; ID++)
	{format(DynamicString, sizeof(DynamicString), "%s\n%s [ID: %d] \n",DynamicString,FactionInfo[ID][FactionName],ID);}
	ShowPlayerDialog(playerid,1994,DIALOG_STYLE_LIST,"Faction List By Lean",DynamicString,"Select","Cancel");
	return 1;
}

LEANCMD:(hqenter)
{
	if(PlayerFaction[playerid][Faction] == 0) return SCM(playerid, COLOR_WHITE,"You are not in a current faction");
	new Float:X[3], FID = PlayerFaction[playerid][Faction];
	GetPlayerPos(playerid,X[0],X[1],X[2]);
	
    for(new ID = 0; ID < MAXFACTIONS; ID++)
    {
    
        if(IsPlayerInRangeOfPoint(playerid, 5.0, FactionInfo[ID][spawnX], FactionInfo[ID][spawnY], FactionInfo[ID][spawnZ]))
        {
            if(PlayerFaction[playerid][Faction] == ID)
			{
				SetPlayerPos(playerid, FactionInfo[FID][spawnhqX],FactionInfo[FID][spawnhqY],FactionInfo[FID][spawnhqZ]);
				return 1;
			}
			else return SCM(playerid, COLOR_YELLOW, "You are near a faction HQ but you are not authorized to enter.");
		}
		else return SCM(playerid, COLOR_YELLOW, "ERROR: Not near any doors.");
	}
	return 1;
}


LEANCMD:(hqexit)
{
	if(PlayerFaction[playerid][Faction] == 0) return SCM(playerid, COLOR_WHITE,"You are not in a current faction");
	new Float:X[3], FID = PlayerFaction[playerid][Faction];
	GetPlayerPos(playerid,X[0],X[1],X[2]);

    for(new ID = 0; ID < MAXFACTIONS; ID++)
    {

        if(IsPlayerInRangeOfPoint(playerid, 5.0, FactionInfo[ID][spawnhqX], FactionInfo[ID][spawnhqY], FactionInfo[ID][spawnhqZ]))
        {
            if(PlayerFaction[playerid][Faction] == ID)
			{
				SetPlayerPos(playerid, FactionInfo[FID][spawnX],FactionInfo[FID][spawnY],FactionInfo[FID][spawnZ]);
				return 1;
			}
			else return SCM(playerid, COLOR_YELLOW, "You are near a faction HQ but you are not authorized to enter.");
		}
		else return SCM(playerid, COLOR_YELLOW, "ERROR: Not near any doors.");
	}
	return 1;
}


LEANCMD:(createfaction)
{
		new input[32], string[126],skin;
        if(sscanf(params,"ds[32]",skin,input)) return SendClientMessage(playerid,-1, "USAGE: /createfaction [SkinID] [FactionName]");
   		format(string, sizeof(string), "%s", (input));
		new Float:X,Float:Y,Float:Z;
		GetPlayerPos(playerid,X,Y,Z);
		new id = NextFaction();
		format(string, sizeof(string),Folder, id);
		dini_Create(string);
		strmid(FactionInfo[id][FactionName] , input, 0, strlen(input), 32);
		SendClientMessage(playerid,COLOR_GREEN,"Faction Created");
		format(string, sizeof(string), "AdmWarn: %s has created a faction with the name %s, FactionID %d SKINID: %d",GetName(playerid),input, id, skin);
		SendClientMessageToAll(COLOR_YELLOW, string);
 		GetPlayerPos(playerid, X, Y, Z);
  		FactionInfo[id][spawnX] = X;
  		FactionInfo[id][spawnY] = Y;
  		FactionInfo[id][spawnZ] = Z;
  		FactionInfo[id][FactionSkin] = skin;
		SaveFactions();
        return 1;
}

LEANCMD:(factionhq)
{
  	new Float:X, Float:Z, Float:Y, string[128], cmd[64],
	FID = PlayerFaction[playerid][Faction];
  	
	if (sscanf(params,"s", cmd))
	{
   			return SCM(playerid, COLOR_YELLOW,"ERROR: /factionhq [HQINT / HQEXT] [CASE SENSETIVE!]");
	}
  	if (strcmp("HQINT", cmd, true, 5) == 0)
  	{

      	GetPlayerPos(playerid, X, Y, Z);
  		FactionInfo[FID][spawnhqX] = X;
  		FactionInfo[FID][spawnhqY] = Y;
  		FactionInfo[FID][spawnhqZ] = Z;
  		FactionInfo[FID][HQInterior] = GetPlayerInterior(playerid);
  		format(string, sizeof(string),"NOTICE: %s set HQ position to his current position. (INTERIOR)",GetName(playerid));

	}
	
	else if (strcmp("HQEXT", cmd, true, 6) == 0)
  	{

      	GetPlayerPos(playerid, X, Y, Z);
  		FactionInfo[FID][spawnX] = X;
  		FactionInfo[FID][spawnY] = Y;
  		FactionInfo[FID][spawnZ] = Z;
  		format(string, sizeof(string),"NOTICE: %s set HQ position to his current position. (EXTERIOR)",GetName(playerid));

	}
	else return SCM(playerid, COLOR_YELLOW,"ERROR: /factionhq [HQINT / HQEXT] [CASE SENSETIVE!]");
	
  	SaveFactions();
  	SendClientMessageToAll(COLOR_YELLOW, string);
  	return 1;
}


LEANCMD:(ainvite)
{
  new id,targetid, string[126];
  if(IsPlayerAdmin(playerid))
  {
  	if(sscanf(params,"dd",targetid,id)) return SendClientMessage(playerid, -1, "USAGE: /ainvite [PlayerID/PartOfName] [FACTION ID]");
  	format(string,sizeof(string),"FACTION: You have been invited to %s by Admin %s",FactionInfo[id][FactionName],GetName(playerid));
  	SCM(playerid, COLOR_YELLOW, string);
  	SCM(targetid, COLOR_YELLOW, string);
  	PlayerFaction[targetid][Faction] = id;
  	PlayerFaction[targetid][FactionRank] = 1;
  	SetPlayerSkin(playerid, FactionInfo[FAID(playerid)][FactionSkin]);
  }
  else return SCM(playerid, COLOR_GREEN, "you are not authorized to use this cmd");
  return 1;
}

LEANCMD:(makeleader)
{
	if(IsPlayerAdmin(playerid))
	{
	    new targetid, string[128];
	    if(sscanf(params,"d",targetid)) return SCM(playerid, COLOR_YELLOW, "USAGE: /makeleader [Playerid]");
	    if(!IsPlayerConnected(targetid)) return SCM(playerid, COLOR_YELLOW, "FACTION: Invalid playerID");
	    if(PlayerFaction[targetid][Faction] == 0) return SCM(playerid, COLOR_YELLOW,"FACTION: This player is not apart of a faction.");
	    PlayerFaction[targetid][FactionRank] = 10;
	    format(string, sizeof(string),"FACTION: You have been set as leader for %s by admin %s",FactionInfo[FAID(targetid)][FactionName],GetName(playerid));
	    SCM(targetid, COLOR_YELLOW, string);
	    format(string, sizeof(string),"FACTION: You have set a new leader for %s, leader %s",FactionInfo[FAID(targetid)][FactionName],GetName(targetid));
	    SCM(playerid, COLOR_YELLOW, string);
	    return 1;
	}
	else return SCM(playerid, COLOR_YELLOW,"ERROR: Not authorized to use this cmd.");
}


LEANCMD:(promote)
{
	new targetid,rankid, string[128];
	if(sscanf(params,"dd",targetid,rankid)) return SendClientMessage(playerid, COLOR_WHITE, "USAGE: /promote [Playerid] [RANK 1-10] ");
	if(!IsPlayerConnected(targetid)) return SCM(playerid, COLOR_YELLOW,"FACTION: player is not connected");
	if(!(FAID(targetid) == FAID(playerid))) return SCM(playerid, COLOR_YELLOW,"FACTION: This user is not in your faction.");
	if(RankID(playerid) < 7) return SCM(playerid, COLOR_YELLOW,"FACTION: You are not a faction leader.");
	if(PlayerFaction[targetid][Faction] == 0) return SCM(playerid,COLOR_YELLOW, "FACTION: This user is not apart of a faction");
	PlayerFaction[targetid][FactionRank] = rankid;
	format(string, sizeof(string), "You have been promoted to %s",Rank(targetid));
	SCM(playerid, COLOR_GREEN, string);
	return 1;
}











LEANCMD:(rank)
{
	new input[32], id,rankid, string[128];
	if(sscanf(params,"dds[32]",rankid,id,input))
	{
			SendClientMessage(playerid, COLOR_WHITE, "USAGE: /rank [RANK ID 1-10] [FACTION ID][RankName]");
			return 1;
	}
	switch(rankid)
	{
	    case 1:
	    {
			strmid(FactionInfo[id][Rank1] , input, 0, strlen(input), 32);
			SaveFactions();
		}
  		case 2:
	    {
			strmid(FactionInfo[id][Rank2] , input, 0, strlen(input), 32);
			SaveFactions();
		}
  		case 3:
	    {
			strmid(FactionInfo[id][Rank3] , input, 0, strlen(input), 32);
			SaveFactions();
		}
  		case 4:
	    {
			strmid(FactionInfo[id][Rank4] , input, 0, strlen(input), 32);
			SaveFactions();
		}
		case 5:
	    {
			strmid(FactionInfo[id][Rank5] , input, 0, strlen(input), 32);
			SaveFactions();
		}
		case 6:
	    {
			strmid(FactionInfo[id][Rank6] , input, 0, strlen(input), 32);
			SaveFactions();
		}
  		case 7:
	    {
			strmid(FactionInfo[id][Rank7] , input, 0, strlen(input), 32);
			SaveFactions();

		}
  		case 8:
	    {
			strmid(FactionInfo[id][Rank8] , input, 0, strlen(input), 32);
			SaveFactions();
		}
  		case 9:
	    {
			strmid(FactionInfo[id][Rank9] , input, 0, strlen(input), 32);
			SaveFactions();
		}
  		case 10:
	    {
			strmid(FactionInfo[id][Rank10] , input, 0, strlen(input), 32);
			SaveFactions();
		}
		default:
		{
		SendClientMessage(playerid, COLOR_WHITE, "USAGE: /rank [RANK ID 1-10] [FACTION ID][RankName]");
		}
		
	}
	format(string, sizeof(string), "Rank %d set to %s for Faction: %s (%d) by %s",rankid,input,FactionInfo[id][FactionName],id,GetName(playerid));
	SCM(playerid, COLOR_GREEN, string);
	return 1;
}

//****END OF COMMANDS COMMANDS*****//


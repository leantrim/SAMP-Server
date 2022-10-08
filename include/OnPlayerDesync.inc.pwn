// This is a comment
// uncomment the line below if you want to write a filterscript
#define FILTERSCRIPT

#include <a_samp>


public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" Blank Filterscript by your name here");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}


public OnPlayerUpdate(playerid)
{

	if(GetPlayerDrunkLevel(playerid) == 0)
	{
	OnPlayerDesync(playerid);
	return 1;
	}
	return 1;
}


new isstarted[MAX_PLAYERS];

forward OnPlayerDesync(playerid);
public OnPlayerDesync(playerid)
{

return 1;
}


forward DesyncCheck(playerid);
public DesyncCheck(playerid)
{
SetPlayerDrunkLevel(playerid, 2000);
return 1;
}

forward DesyncStart(playerid);
public DesyncStart(playerid)
{
SetTimerEx("DesyncCheck",1000,true,"i",playerid);
isstarted[playerid] = 1;
return 1;
}


public OnPlayerSpawn(playerid)
{

   if(isstarted[playerid] == 0)
   {
   SetTimerEx("DesyncStart",3000,false,"i",playerid);
   }
   return 1;
}
   

public OnPlayerDisconnect(playerid, reason)
{
isstarted[playerid] = 0;
return 1;
}

   
   
   

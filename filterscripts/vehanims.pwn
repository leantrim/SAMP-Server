#include <a_samp>
#include <zcmd>

#define LEANCMD:(%1) CMD:%1(playerid, params[])


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

LEANCMD:(carchat)
{
	ApplyAnimation(playerid,"CAR","Tyd2car_high",4.1,0,1,1,1,1,1);
	return 1;
}

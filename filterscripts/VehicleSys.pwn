// DEFINES NOT TO BE INCLUDED!
#include <a_samp>
#include <sscanf2>
#include <zcmd>
#include <a_mysql>
#include <GetVehicleColor>
#define COLOR_WHITE 0xFFFFFFAA
#define COL_WHITE "{FFFFFF}"
#define COLOR_LIGHTRED 0xFF6347AA
#define COLOR_GREY 0xAFAFAFAA


#define LEANCMD:(%1) CMD:%1(playerid, params[])

new mysql;

// Defines TO BE INCLUDED!!!!
#define MAX_SERVER_VEHICLES 200
#define MAX_PLATE_NAME 12




enum VehicleVars
{
	vID,
	VehicleID,
	Float:vX,
	Float:vY,
	Float:vZ,
	Float:vAngle,
	vModel,
	vColor1,
	vColor2,
	Float:vHealth,
	vPlate[MAX_PLATE_NAME],
	vType,
	vExist
}

// News

new Vehicle[MAX_SERVER_VEHICLES][VehicleVars];

// Forwards.
forward CreateVehicleEx(playerid, Model, Float:X, Float:Y, Float:Z, Float:angle, Color1, Color2);
forward LoadVehiclesEx();



// Publics

//This callback will go into ongamemodeinit.
public LoadVehiclesEx()
{
	new leanquery[52];
	for(new x = 1; x < MAX_SERVER_VEHICLES; x++)
	{
	    mysql_format(mysql, leanquery, sizeof(leanquery), "SELECT * FROM `seb-vehicles` WHERE `vID` = %d", x);
		mysql_tquery(mysql, leanquery, "DoesVehicleExist", "i", x);
	}
}

forward DoesVehicleExist(vehID);
public DoesVehicleExist(vehID)
{
	new rows, fields, leanquery[50];
	cache_get_data(rows, fields, mysql);
	if(rows)
	{
		mysql_format(mysql, leanquery, sizeof(leanquery), "SELECT * FROM `seb-vehicles` WHERE `vID` = %d", vehID);
		mysql_tquery(mysql, leanquery, "LoadVehs", "i", vehID);
	    return 1;
	}
	return 0;
}

forward LoadVehs(vehID);
public LoadVehs(vehID)
{
	new PlateName[MAX_PLATE_NAME];
  	
	Vehicle[vehID][vX] = cache_get_row_float(0, 3);
 	Vehicle[vehID][vY] = cache_get_row_float(0, 4);
  	Vehicle[vehID][vZ] = cache_get_row_float(0, 5);
  	Vehicle[vehID][vModel] = cache_get_row_int(0, 6);
   	Vehicle[vehID][vAngle] = cache_get_row_float(0, 7);
    Vehicle[vehID][vColor1] = cache_get_row_int(0, 8);
    Vehicle[vehID][vColor2] = cache_get_row_int(0, 9);
	Vehicle[vehID][vHealth] = cache_get_row_float(0, 10);
	cache_get_row(0, 11, PlateName);
	Vehicle[vehID][vType] = cache_get_row_int(0, 12);
	
    Vehicle[vehID][vPlate] = PlateName;
    
    if(Vehicle[vehID][vType] == 1)
    {
    	Vehicle[vehID][VehicleID] = CreateVehicle(Vehicle[vehID][vModel], Vehicle[vehID][vX], Vehicle[vehID][vY], Vehicle[vehID][vZ], Vehicle[vehID][vAngle], Vehicle[vehID][vColor1], Vehicle[vehID][vColor2], -1);
	}
	else if(Vehicle[vehID][vType] == 2)
	{
	    Vehicle[vehID][VehicleID] = CreateVehicle(Vehicle[vehID][vModel], Vehicle[vehID][vX], Vehicle[vehID][vY], Vehicle[vehID][vZ], Vehicle[vehID][vAngle], Vehicle[vehID][vColor1], Vehicle[vehID][vColor2], -1);
	}

	SetVehicleNumberPlate(Vehicle[vehID][VehicleID], Vehicle[vehID][vPlate]);

	SetVehicleToRespawn(Vehicle[vehID][VehicleID]);
	
	SetVehicleHealth(Vehicle[vehID][VehicleID], Vehicle[vehID][vHealth]);
	
	Vehicle[vehID][vExist] = 1;
	return 1;
}

public CreateVehicleEx(playerid, Model, Float:X, Float:Y, Float:Z, Float:angle, Color1, Color2)
{

 	new vehID = GetNextVehicleID(), leanquery[500];

	Vehicle[vehID][vX] = X;
 	Vehicle[vehID][vY] = Y;
  	Vehicle[vehID][vZ] = Z;
   	Vehicle[vehID][vAngle] = angle;
    Vehicle[vehID][vColor1] = Color1;
    Vehicle[vehID][vColor2] = Color2;
    
	mysql_format(mysql, leanquery, sizeof(leanquery), "INSERT INTO `seb-vehicles` (`vID`, `vX`, `vY`, `vZ`, `vAngle`, `vColor1`, `vColor2`) VALUES ('%d', '%f', '%f', '%f', '%f', '%d', '%d')", vehID, Vehicle[vehID][vX], Vehicle[vehID][vY], Vehicle[vehID][vZ], Vehicle[vehID][vAngle], Vehicle[vehID][vColor1], Vehicle[vehID][vColor2]);
 	mysql_tquery(mysql, leanquery, "", "");
 	
	return 1;
}

// Stocks
stock GetNextVehicleID()
{
	for(new x = 1; x < MAX_SERVER_VEHICLES; x++)
	{
	    if(Vehicle[x][vExist] == 0)
	    {
	        return x;
	    }
	}
	return -1;
}




//Commands.
new adm = 1;

LEANCMD:(vehicle)
{
	new
	    cmd[128], string[128];
	if (adm == 1)
	{
		if (sscanf(params,"s[128]", cmd))
		{
   			return SendClientMessage(playerid, COLOR_WHITE, "USAGE: /vehicle <create | delete | park | count | respawn | plate | type");
		}
		
	 	if (strcmp("create", cmd, true, 6) == 0)
		{
			    if(IsPlayerInAnyVehicle(playerid))
			    {
				    new
						Float:posx[4],
						color1,
						color2,
				    	vehd = GetPlayerVehicleID(playerid),
						model = GetVehicleModel(vehd);
						
				    GetVehicleColor(vehd, color1, color2);
				    
				    GetVehiclePos(vehd, posx[0], posx[1], posx[2]);
				    
				    GetVehicleZAngle(vehd, posx[3]);
				    
				    CreateVehicleEx(playerid, model, posx[0], posx[1], posx[2], posx[3], color1, color2);
				    
				    DestroyVehicle(vehd);
		            return 1;
	            }
				else return SendClientMessage(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"You are not in any vehicle. ");
		}
		
		
		else if (strcmp("delete", cmd, true, 6) == 0)
		{
			if(!IsPlayerInAnyVehicle(playerid))
			{
			    new vehicleid;
				if (!sscanf(params, "s[128]d", cmd, vehicleid))
				{


				}
				else return SendClientMessage(playerid, COLOR_GREY, "USAGE: /vehicle <delete> <vehicleid>");
			}
			else
			{

			}
		}
		
		
		else if (strcmp("park", cmd, true, 4) == 0)
		{
			if(IsPlayerInAnyVehicle(playerid))
			{

			}
			else return SendClientMessage(playerid, COLOR_WHITE, "ERROR: You are not in a vehicle!");
		}
		

		
		else if (strcmp("respawn", cmd, true, 7) == 0)
		{
 			for(new i=0; i <= GetVehiclePoolSize(); i++)
    		{
        		if(Vehicle[i][vID] != INVALID_VEHICLE_ID)
        		{
            		DestroyVehicle(Vehicle[i][vID]);
        		}
			}
	    	for(new i=0; i <= GetVehiclePoolSize(); i++)
        	{

        	}
         	format(string,sizeof(string),"AdmCmd: %s has respawned all static vehicles.", GetName(playerid));
	    	SendClientMessageToAll(COLOR_LIGHTRED, string);
	    	return 1;
		}
		else return SendClientMessage(playerid, COLOR_GREY, "You didn't enter a valid command.");
	}
	
	return 1;
}


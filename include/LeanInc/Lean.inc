#include <a_samp>
#include <a_mysql>
#include <streamer>
#include <zcmd>
#include <sscanf2>
#include <a_cars>
#include <a_zones>
#include <GetVehicleColor>
#include <easydialog>
#include <irc>

#define MAX_STATIONS 40

#define INVALID_SEAT_ID                 -1

#define GetVehicleSeats(%0) \
        (GetVehicleModelSeats(GetVehicleModel(%0)))

		
#define KEY_AIM KEY_HANDBRAKE

stock GetVehicleModelSeats(modelid)
{
    static const s_VehicleSeats[] =
	{
		4, 2, 2, 2, 4, 4, 1, 2, 2, 4, 2, 2, 2, 4, 2, 2, 4, 2, 4, 2, 4, 4, 2, 2, 2, 1, 4, 4, 4, 2,
		1, 7, 1, 2, 2, 0, 2, 7, 4, 2, 4, 1, 2, 2, 2, 4, 1, 2, 1, 0, 0, 2, 1, 1, 1, 2, 2, 2, 4,
		4, 2, 2, 2, 2, 1, 1, 4, 4, 2, 2, 4, 2, 1, 1, 2, 2, 1, 2, 2, 4, 2, 1, 4, 3, 1, 1, 1, 4, 2,
		2, 4, 2, 4, 1, 2, 2, 2, 4, 4, 2, 2, 1, 2, 2, 2, 2, 2, 4, 2, 1, 1, 2, 1, 1, 2, 2, 4, 2, 2,
		1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 4, 1, 1, 1, 2, 2, 2, 2, 7, 7, 1, 4, 2, 2, 2, 2, 2, 4, 4,
		2, 2, 4, 4, 2, 1, 2, 2, 2, 2, 2, 2, 4, 4, 2, 2, 1, 2, 4, 4, 1, 0, 0, 1, 1, 2, 1, 2, 2, 1, 2,
		4, 4, 2, 4, 1, 0, 4, 2, 2, 2, 2, 0, 0, 7, 2, 2, 1, 4, 4, 4, 2, 2, 2, 2, 2, 4, 2, 0, 0, 0,
		4, 0, 0
	};
	return (modelid < 400 || modelid > 611) ? (0) : (s_VehicleSeats[(modelid - 400)]);
}

stock mktime(hour,minute,second,day,month,year) {
	new timestamp2;

	timestamp2 = second + (minute * 60) + (hour * 3600);

	new days_of_month[12];

	if ( ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0) ) {
	days_of_month = {31,29,31,30,31,30,31,31,30,31,30,31}; // Schaltjahr
	} else {
	days_of_month = {31,28,31,30,31,30,31,31,30,31,30,31}; // keins
	}
	new days_this_year = 0;
	days_this_year = day;
	if(month > 1) { // No January Calculation, because its always the 0 past months
	for(new i=0; i<month-1;i++) {
	days_this_year += days_of_month[i];
	}
	}
	timestamp2 += days_this_year * 86400;

	for(new j=1970;j<year;j++) 
	{
		timestamp2 += 31536000;
		if ( ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0) ) timestamp2 += 86400; 
	}

	return timestamp2;
}


forward GetUnixTime();
public GetUnixTime() 
{
	new Year, Month, Day,Hour,Minute,Second;
	getdate(Year, Month, Day);
	gettime(Hour,Minute,Second);
	return mktime(Hour,Minute,Second,Day,Month,Year);
}


stock IsVehicleSeatOccupied(vehicleid, seatid)
{
        if (!GetVehicleModel(vehicleid))
        {
                return 0;
        }
        else
        {
                for (new i = 0; i < MAX_PLAYERS; i ++)
                {
                		if (IsPlayerInVehicle(i, vehicleid) && GetPlayerVehicleSeat(i) == seatid)
                        {
                                return 1;
                        }
                }
        }
        return 0;
}


stock GetVehicleNextSeat(vehicleid, passenger = 1)
{
        new
            seats = GetVehicleSeats(vehicleid);

        if (seats > 1)
        {
            for (new i = passenger; i < seats; i ++)
                {
                    if (!IsVehicleSeatOccupied(vehicleid, i))
                        {
                                return i;
                        }
                }
        }
        return INVALID_SEAT_ID;
}




//#define TRAINING_SASD
#define TRAINING_METRO
//**********



#undef MAX_PLAYERS

#define MAX_PLAYERS 50


#define EachPlayer(%0) for(new %0 = 0; %0 <= GetPlayerPoolSize(); %0++)





// Define's
#define LEANCMD:(%1) CMD:%1(playerid, params[])
#define DIALOG_REGISTER 1
#define DIALOG_LOGIN 2
#define DIALOG_SUCCESS_1 3
#define DIALOG_SUCCESS_2 4
#define SCM SendClientMessage
#define ALEVEL PlayerInfo[playerid][pAdmin]


// Whenever a player goes under 20.0 health his skills are set to minimum
#define CRITICALHEALTH 20.0
// Same as above but 40.0 and medium skills.
#define MINIMUMHEALTH 60.0
// How much health /duty's give
#define COP_DUTYHEALTH 150.0
// If player is not connected.
#define INVALID_PLAYERMSG SCM(playerid,COLOR_LIGHTRED,"	 Playerid is not an active playerid.");
// If playerid is not high enough alevel for cmd.
#define ADMIN_UNAUTHORIZED SCM(playerid,COLOR_LIGHTRED,"ERROR: "COL_WHITE"You are not authorized to use this command.");
// How much health a player spawns with
#define SPAWNHEALTH 150.0
//For doors, which distance the 3dtexts are available from
#define DNAME_DISTANCE 25.0
// Which skin a player spawns with the first time, standard is 264(CLOWN).
#define DEFAULT_SKIN 264

#define MAX_ACCOUNTS 800


#define CSDPW "purpleswag"
#define ASDPW "asapeno"
#define GENPW "asaplean"


//Native's
native WP_Hash(buffer[], len, const str[]);

// News

new selectedrankid[MAX_PLAYERS];
new selectedplayer[MAX_PLAYERS];

new bool:Law_Duty[MAX_PLAYERS];


new weatherID;

forward SetWeatherEx(weatherid);
public SetWeatherEx(weatherid)
{
	weatherID = weatherid;
	SetWeather(weatherid);
	new string[86];
	format(string, sizeof(string), "SetWeatherEx: Weather has been set to %d.",weatherid);
	WriteLog("Weather", string);
	return 1;
}

	

stock GetWeatherID()
{
	return weatherID;
}


new Float:XTP[MAX_PLAYERS],Float:YTP[MAX_PLAYERS],Float:ZTP[MAX_PLAYERS];
new timertp[MAX_PLAYERS], timers[MAX_PLAYERS];


new bool:listeningR[MAX_PLAYERS];


new bool:noooc = false;

new bool:noic = false;

new bool:DETOG[MAX_PLAYERS];

new bool:ISREQUESTING[MAX_PLAYERS];
new bool:YESSURE[MAX_PLAYERS];
new REQUESTTIMER[MAX_PLAYERS];

new PlayerText:textdraw[MAX_PLAYERS];

new bool:nospec;

new bool:entering[MAX_PLAYERS];

new bool:cuffed[MAX_PLAYERS];

new bool:notp;

new bool:noduty;

new bool:isstarted[MAX_PLAYERS];

new bool:nodm;

new bool:nomask;

new bool:Taser[MAX_PLAYERS];

new bool:Rubber[MAX_PLAYERS];


new WORLD[MAX_PLAYERS];

new bool:ison911c[MAX_PLAYERS];
new bool:clocation[MAX_PLAYERS];
new bool:csituation[MAX_PLAYERS];
new location[MAX_PLAYERS][64];

new SirenObject[MAX_VEHICLES];

new SirenObject2[MAX_VEHICLES];

new bool:Siren2[MAX_VEHICLES];

new bool: Siren[MAX_VEHICLES];


new deathAmount;


new lastcommand[MAX_PLAYERS];

new spamming[MAX_PLAYERS];


new bool:listeningXMR[MAX_PLAYERS];

new bool:nofam;

new serveruptime;

new bool:grantbuild[MAX_PLAYERS];

new PlayerText3D:breachname[MAX_PLAYERS][MAX_PLAYERS];
new bool:created[MAX_PLAYERS][MAX_PLAYERS];

new watchtype[MAX_PLAYERS];

new bool:watchingb[MAX_PLAYERS];


new ghour = 0;
new gminute = 0;
new gsecond = 0;

new idd[MAX_PLAYERS];

new vehplayer[MAX_PLAYERS] = 0; // FOR XMR

new bool:VEHLISTEN[MAX_VEHICLES],
	VEHURL[MAX_VEHICLES][96];

new SyncTimer[MAX_PLAYERS];

new shifthour;
new timeshift = 0;


new bool:iscountactivated; //Creating the variable, to check if someone already started the count down.
new countamount;//Creating the variable, to store how much the count down is.
forward Count();//Forwarding the timer, to check if the count down is activated.
new CountTimer;//So we can disable the timer later on, at the finish of the count down.



new lastcheckTP[MAX_PLAYERS];

#define WEAPON_SLOTS 13
new Weapons[MAX_PLAYERS][WEAPON_SLOTS];

new bool: nofix;

#if defined TRAINING_SASD
new bool:notru;
#endif

new bool:DEAD[MAX_PLAYERS];

new bool:entercarDEAD[MAX_PLAYERS];


new bool:justspawn[MAX_PLAYERS];


new respawntimer[MAX_PLAYERS];
new bool:dmSent[MAX_PLAYERS];

new bool:BWMODE[MAX_PLAYERS];
new bool:executed[MAX_PLAYERS];

new accid;

new totalfs;

new Float:DP[MAX_PLAYERS][3];

new ddmg[MAX_PLAYERS];





new bool:loggedin[MAX_PLAYERS];

new bool:rpd;


new bool:readPMs[MAX_PLAYERS];

new bool:muted[MAX_PLAYERS];

new bool:disableTP[MAX_PLAYERS];

new lockedserver = 0;
new lockedacc[MAX_PLAYERS];

new mysql;
new accNname[MAX_PLAYER_NAME],
	accOname[MAX_PLAYER_NAME];
new newAcc[MAX_PLAYER_NAME];
new ACCDISABLE[MAX_PLAYER_NAME];
new ACCENABLE[MAX_PLAYER_NAME];

new listening[MAX_PLAYERS];

new
    gPlayerCommand[MAX_PLAYERS],
    gPlayerConnectedTime[MAX_PLAYERS];
	
new bool:realchat = true;

native IsValidVehicle(vehicleid);
native gpci (playerid, serial [], len); // this is the native.


new bool:Duty[MAX_PLAYERS];

new bool:Swat[MAX_PLAYERS];

new bool:Criminal[MAX_PLAYERS];

new bool:Civilian[MAX_PLAYERS];

new bool:AdminDuty[MAX_PLAYERS];



#define MAX_RANKSTRINGS 64
#define MAXRANKS 50


enum RAInfo
{
	RankName[MAX_RANKSTRINGS],
	RankExist
};
new RANKINFO[MAXRANKS][RAInfo];



enum pInfo
{
    Username[MAX_PLAYER_NAME],
	userid,
    pPass[129],
    pCash,
    pAdmin,
    pKills,
    pDeaths,
    pSdeath,
    pSkin,
	pLogs,
	pBanned,
	pCrim,
	pPw,
	Exp,
	Freq,
	Rank,
	HudStyle,
	IP[16],
	pBannedr[94],
	RankCrim,
    GroupID,
    fStyle,
    hOn,
    Float:CrashX,
    Float:CrashY,
    Float:CrashZ,
    CrashInt,
    CrashWV,
    CrashType,
	Float:CrashHP,
	Float:CrashARMOR,
	CrashSkin,
	Level,
	LevelUp,
	LevelUpNeeded,
	fChat,
	HWID[50],
	CheatWarnings,
	MessageNotice,
	pDialogID,
	pLastOn[64],
	pAccCreation[64],

}

new PlayerInfo[MAX_PLAYERS][pInfo];



#define LIGHTBLUE "{00CED1}"
#define ALB "{ffffff}"
#define RED "{F81414}"
#define GREEN "{00FF22}"
#define COLOR_DARKPURPLE 0x6A0080FF
#define COLOR_DARKGREEN 0x006400FF
#define COLOR_YEPM 0xFFDC18FF
#define COLOR_SASD 0x00BF80AA
#define COLOR_ORANGE 0xF97804FF
#define COLOR_GREY 0xAFAFAFAA
#define COLOR_SPECTATE 0x0080C0FF
#define COLOR_PURPLE 0xC2A2DAAA
#define COLOR_LIGHTRED 0xFF6347AA
#define COLOR_BLUE 0x2641FEAA
#define COLOR_FADE1 0xE6E6E6E6
#define COLOR_FADE2 0xC8C8C8C8
#define COLOR_FADE3 0xAAAAAAAA
#define COLOR_FADE4 0x8C8C8C8C
#define COLORCYON  "{4E607A}"
#define COLOR_YELLOW3 0xFFFF00FF
#define COLOR_ADMIN 0xFA00FF5C
#define COLOR_FADE5 0x6E6E6E6E
#define COLOR_WHITE 0xFFFFFFAA
#define COLOR_CHAT1 0xF9B7FFAA
#define COLOR_CHAT2 0xE6A9ECAA
#define COLOR_CHAT3 0xC38EC7AA
#define COLOR_CHAT4 0xD2B9D3AA
#define COLOR_CHAT5 0xC6AEC7AA
#define COLOR_GRAD1 0xB4B5B7AA
#define COLOR_GRAD2 0xBFC0C2AA
#define COLOR_GRAD3 0xCBCCCEAA
#define COLOR_GRAD4 0xD8D8D8AA
#define COLOR_GRAD5 0xE3E3E3AA
#define COLOR_GRAD6 0xF0F0F0AA
#define COLOR_YELLOW 0xFCF545AA
#define COLOR_YELLOW2 0xF5DEB3AA
#define COLOR_YPM 0xF8DA05
#define COLOR_GOLD 	0xF6C861AA
#define COLOR_DBLUE 0x2641FEAA
#define COLOR_OOC 0xCAE1FFFF
#define PURPLE "{7A378B}"
#define COLOR_DUTY 0x8D8DFFC8
#define COL_FACTION "{8D8DFF}"
#define COLOR_ADMINDUTY 0x587B9500
#define COLOR_GREEN 0x33AA3300
#define COLOR_LIGHTBLUE         0x33CCFFAA
#define COLOR_RED 				0xFF0000FF
#define COLOR_LIGHTGREEN 		0x9ACD32AA
#define CYELLOW "{9DBD1E}"
#define CORANGE "{E68C0E}"
#define CBLUE   "{39AACC}"
#define SPEC_NONE 0
#define SPEC_PLAYER 1
#define COLOR_AOPM 0xFF9900
#define COLOR_RADIO 0xFFEC8BFF
#define SPEC_VEHICLE 2
#define CDGREEN "{6FA828}"
#define CWHITE  "{FFFFFF}"
#define CRED    "{FF0000}"
#define COBJS1	"{D0A5D1}"
#define COBJS2  "{8FC95F}"
#define CSALMON "{FA8072}"
#define COL_RECEIVEPM "{E6B800}"
#define COL_SENDPM "{FFFF00}"
#define COL_YELLOW "{FFFF00}"
#define COL_LIGHTRED "{FF6347}"
#define COL_RED "{F81414}"
#define COL_GREEN "{33AA33}"
#define COL_LIGHTBLUE "{00CED1}"
#define COLOR_911 "{05CEF9}
#define Grey 0xC0C0C0FF
#define COL_WHITE "{FFFFFF}"
#define COL_RED "{F81414}"
#define COL_LIGHTBLUE "{00CED1}"
#define COLOR_AO 0xED9E00FF
#define COLOR_GETPM 0xEDB600FF
#define COLOR_SENDPM 0xF0D700FF
#define COLOR_TESTER 0xA80C03FF
#define COLOR_DEPARTMENT 0xFF8282AA
#define COL_GREY "{AFAFAF}"
#define COL_ORANGE "{FF9900}"


stock WriteLog(log[], write[])
{
	if(strlen(log) == 0 || strlen(write) == 0) return 0;
	if(!fexist("logs/"))
	{
		print("ERROR: The logfolder does not exist, add the folder 'logs' to scriptfiles!");
		return 0;
	}

	new File:file, path[62];
	format(path, sizeof(path), "logs/%s.txt", log);
	if(!fexist(path))
	{
		file = fopen(path, io_write);
	}
	else
	{
		file = fopen(path, io_append);
	}
	if(file)
	{
		new string[30], year, month, day, hour, minute, second;
		getdate(year, month, day), gettime(hour, minute, second);
		format(string, sizeof(string), "[%d/%s/%02d - %02d:%02d:%02d] ", year, GetMonthFix(month), day, hour, minute, second);
		fwrite(file, string);

		fwrite(file, write);
		fwrite(file, "\r\n");
		fclose(file);
	}
	return 1;
}




new VehColor[256] = {
	// The existing colours from San Andreas
	0x000000FF, 0xF5F5F5FF, 0x2A77A1FF, 0x840410FF, 0x263739FF, 0x86446EFF, 0xD78E10FF, 0x4C75B7FF, 0xBDBEC6FF, 0x5E7072FF,
	0x46597AFF, 0x656A79FF, 0x5D7E8DFF, 0x58595AFF, 0xD6DAD6FF, 0x9CA1A3FF, 0x335F3FFF, 0x730E1AFF, 0x7B0A2AFF, 0x9F9D94FF,
	0x3B4E78FF, 0x732E3EFF, 0x691E3BFF, 0x96918CFF, 0x515459FF, 0x3F3E45FF, 0xA5A9A7FF, 0x635C5AFF, 0x3D4A68FF, 0x979592FF,
	0x421F21FF, 0x5F272BFF, 0x8494ABFF, 0x767B7CFF, 0x646464FF, 0x5A5752FF, 0x252527FF, 0x2D3A35FF, 0x93A396FF, 0x6D7A88FF,
	0x221918FF, 0x6F675FFF, 0x7C1C2AFF, 0x5F0A15FF, 0x193826FF, 0x5D1B20FF, 0x9D9872FF, 0x7A7560FF, 0x989586FF, 0xADB0B0FF,
	0x848988FF, 0x304F45FF, 0x4D6268FF, 0x162248FF, 0x272F4BFF, 0x7D6256FF, 0x9EA4ABFF, 0x9C8D71FF, 0x6D1822FF, 0x4E6881FF,
	0x9C9C98FF, 0x917347FF, 0x661C26FF, 0x949D9FFF, 0xA4A7A5FF, 0x8E8C46FF, 0x341A1EFF, 0x6A7A8CFF, 0xAAAD8EFF, 0xAB988FFF,
	0x851F2EFF, 0x6F8297FF, 0x585853FF, 0x9AA790FF, 0x601A23FF, 0x20202CFF, 0xA4A096FF, 0xAA9D84FF, 0x78222BFF, 0x0E316DFF,
	0x722A3FFF, 0x7B715EFF, 0x741D28FF, 0x1E2E32FF, 0x4D322FFF, 0x7C1B44FF, 0x2E5B20FF, 0x395A83FF, 0x6D2837FF, 0xA7A28FFF,
	0xAFB1B1FF, 0x364155FF, 0x6D6C6EFF, 0x0F6A89FF, 0x204B6BFF, 0x2B3E57FF, 0x9B9F9DFF, 0x6C8495FF, 0x4D8495FF, 0xAE9B7FFF,
	0x406C8FFF, 0x1F253BFF, 0xAB9276FF, 0x134573FF, 0x96816CFF, 0x64686AFF, 0x105082FF, 0xA19983FF, 0x385694FF, 0x525661FF,
	0x7F6956FF, 0x8C929AFF, 0x596E87FF, 0x473532FF, 0x44624FFF, 0x730A27FF, 0x223457FF, 0x640D1BFF, 0xA3ADC6FF, 0x695853FF,
	0x9B8B80FF, 0x620B1CFF, 0x5B5D5EFF, 0x624428FF, 0x731827FF, 0x1B376DFF, 0xEC6AAEFF, 0x000000FF,
	// SA-MP extended colours (0.3x)
	0x177517FF, 0x210606FF, 0x125478FF, 0x452A0DFF, 0x571E1EFF, 0x010701FF, 0x25225AFF, 0x2C89AAFF, 0x8A4DBDFF, 0x35963AFF,
	0xB7B7B7FF, 0x464C8DFF, 0x84888CFF, 0x817867FF, 0x817A26FF, 0x6A506FFF, 0x583E6FFF, 0x8CB972FF, 0x824F78FF, 0x6D276AFF,
	0x1E1D13FF, 0x1E1306FF, 0x1F2518FF, 0x2C4531FF, 0x1E4C99FF, 0x2E5F43FF, 0x1E9948FF, 0x1E9999FF, 0x999976FF, 0x7C8499FF,
	0x992E1EFF, 0x2C1E08FF, 0x142407FF, 0x993E4DFF, 0x1E4C99FF, 0x198181FF, 0x1A292AFF, 0x16616FFF, 0x1B6687FF, 0x6C3F99FF,
	0x481A0EFF, 0x7A7399FF, 0x746D99FF, 0x53387EFF, 0x222407FF, 0x3E190CFF, 0x46210EFF, 0x991E1EFF, 0x8D4C8DFF, 0x805B80FF,
	0x7B3E7EFF, 0x3C1737FF, 0x733517FF, 0x781818FF, 0x83341AFF, 0x8E2F1CFF, 0x7E3E53FF, 0x7C6D7CFF, 0x020C02FF, 0x072407FF,
	0x163012FF, 0x16301BFF, 0x642B4FFF, 0x368452FF, 0x999590FF, 0x818D96FF, 0x99991EFF, 0x7F994CFF, 0x839292FF, 0x788222FF,
	0x2B3C99FF, 0x3A3A0BFF, 0x8A794EFF, 0x0E1F49FF, 0x15371CFF, 0x15273AFF, 0x375775FF, 0x060820FF, 0x071326FF, 0x20394BFF,
	0x2C5089FF, 0x15426CFF, 0x103250FF, 0x241663FF, 0x692015FF, 0x8C8D94FF, 0x516013FF, 0x090F02FF, 0x8C573AFF, 0x52888EFF,
	0x995C52FF, 0x99581EFF, 0x993A63FF, 0x998F4EFF, 0x99311EFF, 0x0D1842FF, 0x521E1EFF, 0x42420DFF, 0x4C991EFF, 0x082A1DFF,
	0x96821DFF, 0x197F19FF, 0x3B141FFF, 0x745217FF, 0x893F8DFF, 0x7E1A6CFF, 0x0B370BFF, 0x27450DFF, 0x071F24FF, 0x784573FF,
	0x8A653AFF, 0x732617FF, 0x319490FF, 0x56941DFF, 0x59163DFF, 0x1B8A2FFF, 0x38160BFF, 0x041804FF, 0x355D8EFF, 0x2E3F5BFF,
	0x561A28FF, 0x4E0E27FF, 0x706C67FF, 0x3B3E42FF, 0x2E2D33FF, 0x7B7E7DFF, 0x4A4442FF, 0x28344EFF
};

new HexToEmbedStr[16];
#define HexToEmbed(%0) (format(HexToEmbedStr, 16, "{%06x}", %0 >>> 8), HexToEmbedStr)

new HexToEmbedStr2[16];
#define HexToEmbed2(%0) (format(HexToEmbedStr2, 16, "{%06x}", %0 >>> 8), HexToEmbedStr2)


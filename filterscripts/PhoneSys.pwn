/*
	******CellphoneSys By Lean*******
*/


//****INCLUDES*****//
//****DEFINES*****// NOT TO BE COPIED!
#include <a_samp>
#include <zcmd>
#include <sscanf2>
#include <foreach>

//****END OF INCLUDES*****//


#define COLOR_FADE1 0xE6E6E6E6
#define COLOR_FADE2 0xC8C8C8C8
#define COLOR_FADE3 0xAAAAAAAA
#define COLOR_FADE4 0x8C8C8C8C
#define COLOR_FADE5 0x6E6E6E6E


#define COLOR_YELLOW 0xFFFF00AA
#define COLOR_GREEN 0x33AA33AA
#define COLOR_WHITE -1
#define COLOR_TESTER 0xD53C2BC8
#define COL_ORANGE "{FF9900}"
#define COL_WHITE "{FFFFFF}"
#define COLOR_LIGHTRED 0xFF6347AA
#define COLOR_PURPLE 0xC2A2DAAA
#define COLOR_YELLOW 0xFFFF00AA
#define COLOR_GREY 0xAFAFAFAA
#define SCM SendClientMessage


forward ProxDetector(Float:radi, playerid, string[],col1,col2,col3,col4,col5);
public ProxDetector(Float:radi, playerid, string[],col1,col2,col3,col4,col5)
{
    if(IsPlayerConnected(playerid))
    {
        new Float:posx, Float:posy, Float:posz;
        new Float:oldposx, Float:oldposy, Float:oldposz;
        new Float:tempposx, Float:tempposy, Float:tempposz;
        GetPlayerPos(playerid, oldposx, oldposy, oldposz);
		foreach(Player, i)
		{
                GetPlayerPos(i, posx, posy, posz);
                tempposx = (oldposx -posx);
                tempposy = (oldposy -posy);
                tempposz = (oldposz -posz);
                if(GetPlayerVirtualWorld(playerid) == GetPlayerVirtualWorld(i))
                {
                    if (((tempposx < radi/16) && (tempposx > -radi/16)) && ((tempposy < radi/16) && (tempposy > -radi/16)) && ((tempposz < radi/16) && (tempposz > -radi/16)))
                    {
                        SendClientMessage(i, col1, string);
                    }
                    else if (((tempposx < radi/8) && (tempposx > -radi/8)) && ((tempposy < radi/8) && (tempposy > -radi/8)) && ((tempposz < radi/8) && (tempposz > -radi/8)))
                    {
                        SendClientMessage(i, col2, string);
                    }
                    else if (((tempposx < radi/4) && (tempposx > -radi/4)) && ((tempposy < radi/4) && (tempposy > -radi/4)) && ((tempposz < radi/4) && (tempposz > -radi/4)))
                    {
                        SendClientMessage(i, col3, string);
                    }
                    else if (((tempposx < radi/2) && (tempposx > -radi/2)) && ((tempposy < radi/2) && (tempposy > -radi/2)) && ((tempposz < radi/2) && (tempposz > -radi/2)))
                    {
                        SendClientMessage(i, col4, string);
                    }
                    else if (((tempposx < radi) && (tempposx > -radi)) && ((tempposy < radi) && (tempposy > -radi)) && ((tempposz < radi) && (tempposz > -radi)))
                    {
                        SendClientMessage(i, col5, string);
                    }
                }
        }
    }
    return 1;
}
#define LEANCMD:(%1) CMD:%1(playerid, params[])


stock GetName(playerid)
{
	new name[MAX_PLAYER_NAME];
 	GetPlayerName( playerid, name, sizeof( name ) );
	return name;
}

stock GetICName( playerid )
{
	new name[MAX_PLAYER_NAME];
 	GetPlayerName( playerid, name, sizeof( name ) );
 	name[strfind(name, "_")] = ' ';
 	return name;
}


/* UNDER HEAR EVERYTHING TO BE COPIED! */

/* Phone Sys By Lean */

/* Defines */

#define PLAYER_TALKING true
#define PLAYER_NOT_TALKING false
#define PLAYER_PHONE_ON true
#define PLAYER_PHONE_OFF false
#define PLAYER_LOUDSPEAKER_ON true
#define PLAYER_LOUDSPEAKER_OFF false
#define PLAYER_BEING_CALLED true
#define PLAYER_NOT_BEING_CALLED false
#define PLAYER_ON_PHONE true
#define PLAYER_OFF_PHONE false

#define RING_TONE 1085


/* Pvars */
new bool:E_OnPhone[MAX_PLAYERS] = PLAYER_ON_PHONE,
	bool:E_BeingCalled[MAX_PLAYERS] = PLAYER_NOT_BEING_CALLED,
	bool:E_PhoneOn[MAX_PLAYERS] = PLAYER_PHONE_ON,
	bool:E_PhoneLoudSpeaker[MAX_PLAYERS] = PLAYER_LOUDSPEAKER_OFF,
	E_TalkingTo[MAX_PLAYERS],
	E_PhoneTimer[MAX_PLAYERS],
	bool:E_Talking[MAX_PLAYERS] = PLAYER_NOT_TALKING;
	
	
/* Commands */
LEANCMD:(call)
{
	new id;
	if(sscanf(params, "u", id)) return SCM(playerid, COLOR_LIGHTRED, "USAGE: /call [playerid]");
	
	if(E_OnPhone[playerid] == PLAYER_TALKING || E_Talking[playerid] == PLAYER_ON_PHONE || E_PhoneOn[playerid] == PLAYER_PHONE_OFF) return SCM(playerid, COLOR_GREY, " Unable to make the call, your phone is either off or you are on a call.")

	if(id == 911)
	{
	    E_OnPhone[playerid] = PLAYER_TALKING;
		ison911c[playerid] = true;
		clocation[playerid] = true;
		SetPlayerSpecialAction(playerid,SPECIAL_ACTION_USECELLPHONE);
		SCM(playerid, COLOR_LIGHTBLUE, "DISPATCH: Hello, what is your current location?");
		return 1;
	}
	
	if(id == INVALID_PLAYER_ID) return SCM(playerid, COLOR_LIGHTRED, "Playerid is not an active playerid");
	
	if(E_PhoneOn[id] == PLAYER_PHONE_OFF || E_PhoneOn[playerid] == PLAYER_PHONE_OFF) return SCM(playerid, COLOR_LIGHTRED, "Phone is off.");

	if(E_OnPhone[id] == PLAYER_TALKING || E_Talking[id] == PLAYER_ON_PHONE) return SCM(playerid, COLOR_GREY, " ..You get a busy tone...");

	/*
	if(AdminDuty[id] == true) return SCM(playerid, COLOR_LIGHTRED, "You cant call players on admin duty.");
	*/
	/* Setting all the PVARS */
	
	
	SetPlayerSpecialAction(playerid,SPECIAL_ACTION_USECELLPHONE);
	E_OnPhone[playerid] = PLAYER_TALKING;
	E_OnPhone[id] = PLAYER_TALKING;
	E_BeingCalled[id] = PLAYER_BEING_CALLED;
	E_TalkingTo[id] = playerid;
	E_TalkingTo[playerid] = id;
	
	new Float:X, Float:Y, Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	PlayerPlaySound(playerid, 3600, X, Y, Z);
	
	new string[128];
	format(string, sizeof(string),"Your Mobile is ringing Type (/pickup), caller: %d (%s)",playerid, GetName(playerid));
	SCM(id, COLOR_YELLOW, string);
	
	format(string, sizeof(string),"* %s takes out a cellpohone.",GetICName(playerid));
	ProxDetector(15.0, playerid, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
	
	format(string, sizeof(string),"* %s's phone begins to ring.",GetICName(id));
	ProxDetector(15.0, id, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
	
	
    E_PhoneTimer[playerid] = SetTimerEx( "RingPlayer", 2000, true, "i", id );

	return 1;
}

LEANCMD:(sms)
{
	new id;
	if(sscanf(params, "us[128]", id, params)) return SCM(playerid, COLOR_LIGHTRED, "USAGE: /sms [playerid] [Text]");

	if(id == INVALID_PLAYER_ID) return SCM(playerid, COLOR_LIGHTRED, "Playerid is not an active playerid");


    if(E_PhoneOn[playerid] == PLAYER_PHONE_OFF) return SCM(playerid, COLOR_LIGHTRED, "Your phone is off.");

	if(E_PhoneOn[id] == PLAYER_PHONE_OFF) return SCM(playerid, COLOR_LIGHTRED, "SMS failed to send.");

	new Float:X, Float:Y, Float:Z;
	GetPlayerPos(id, X, Y, Z);
	PlayerPlaySound(id, 1052, X, Y, Z);

	new string[128];
	SCM(playerd, COLOR_WHITE, "Text Message Delivered");

	format(string, sizeof(string),"SMS: %s, Sender: %s (%d)", params, GetICName(playerid), playerid);
	SCM(id, COLOR_YELLOW, string);

	format(string, sizeof(string),"* %s takes out a cellphone.",GetICName(id));
	ProxDetector(15.0, id, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);

	return 1;
}


LEANCMD:(pickup)
{
	if(E_BeingCalled[playerid] == PLAYER_NOT_BEING_CALLED || E_Talking[playerid] == PLAYER_ON_PHONE) return SCM(playerid, COLOR_LIGHTRED, "You are not being called..");
	
	SCM(playerid, COLOR_GREY, "They picked up the call.");

	SCM(E_TalkingTo[playerid], COLOR_WHITE, "[ ! ] Use the chatbox to talk!");
	SCM(playerid, COLOR_WHITE, "[ ! ] Use the chatbox to talk!");
	
	E_Talking[E_TalkingTo[playerid]] = PLAYER_ON_PHONE;
	E_Talking[playerid] = PLAYER_ON_PHONE;
	
	SetPlayerSpecialAction(playerid,SPECIAL_ACTION_USECELLPHONE);
	
	KillTimer(E_PhoneTimer[playerid]);
	
	return 1;
}

LEANCMD:(hangup)
{
	if(E_BeingCalled[playerid] == PLAYER_NOT_BEING_CALLED || E_Talking[playerid] == PLAYER_OFF_PHONE) return SCM(playerid, COLOR_LIGHTRED, "Nothing to hangup on...");
	
	SCM(playerid, COLOR_GREY, "You hung up.");
	SCM(E_TalkingTo[playerid], COLOR_GREY, "They hang up");
	
    ClearPhonePvars(playerid);
    
    ClearPhonePvars(E_TalkingTo[playerid]);
    
	return 1;
}

LEANCMD:(turn_off)
{
	if(E_PhoneOn[playerid] == PLAYER_PHONE_OFF) return SCM(playerid, COLOR_LIGHTRED, "Your phone is already off, /turn_on to turn the phone oon..");
	
	new string[96];
	format(string, sizeof(string),"%s turns their phone off.",GetICName(playerid));
	ProxDetector(15, playerid, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
	E_PhoneOn[playerid] = PLAYER_PHONE_OFF;
	return 1;
}

LEANCMD:(turn_on)
{
	if(E_PhoneOn[playerid] == PLAYER_PHONE_ON) return SCM(playerid, COLOR_LIGHTRED, "Your phone is already on, /turn_off to turn the phone off..");

	new string[96];
	format(string, sizeof(string),"* %s turns their cellphone on.",GetICName(playerid));
	ProxDetector(15.0, playerid, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
	E_PhoneOn[playerid] = PLAYER_PHONE_ON;
	return 1;
}

LEANCMD:(loudspeaker)
{
    if(E_PhoneLoudSpeaker[playerid] == PLAYER_LOUDSPEAKER_ON)
    {
	   	new string[96];
		format(string, sizeof(string),"* %s turns their cellphones loudspeaker off.",GetICName(playerid));
		ProxDetector(15.0, playerid, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
		E_PhoneLoudSpeaker[playerid] = PLAYER_LOUDSPEAKER_OFF;
		return 1;
    }
    if(E_PhoneLoudSpeaker[playerid] == PLAYER_LOUDSPEAKER_OFF)
    {
	   	new string[96];
		format(string, sizeof(string),"* %s turns their cellphones loudspeaker on.",GetICName(playerid));
		ProxDetector(15.0, playerid, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
		E_PhoneLoudSpeaker[playerid] = PLAYER_LOUDSPEAKER_ON;
		return 1;
    }
    return 1;
}

LEANCMD:(c)
{
	return cmd_call(playerid, params);
}


LEANCMD:(p)
{
	return cmd_pickup(playerid, params);
}

LEANCMD:(h)
{
	return cmd_hangup(playerid, params);
}


LEANCMD:(clearvars)
{

	ClearPhonePvars(playerid);
	SCM(playerid, COLOR_FADE2, "Done.");
	return 1;

}

/* Forwards */

forward OnPhoneDisconnect(playerid);
forward RingPlayer(playerid);




/* Callbacks */


public OnPlayerText(playerid, text[])
{
	if(E_Talking[playerid] == PLAYER_ON_PHONE)
	{
	    new string[128];
	    format(string, sizeof(string),"%s (cellphone): %s",GetICName(playerid), text);
	    SCM(E_TalkingTo[playerid], COLOR_YELLOW, string);
	    
	    ProxDetector(15.0, playerid, string, COLOR_FADE1,COLOR_FADE2,COLOR_FADE3,COLOR_FADE4,COLOR_FADE5);
	    if(E_PhoneLoudSpeaker[E_TalkingTo[playerid]] == PLAYER_LOUDSPEAKER_ON)
	    {
	        ProxDetector(15.0, E_TalkingTo[playerid], string, COLOR_FADE1,COLOR_FADE2,COLOR_FADE3,COLOR_FADE4,COLOR_FADE5);
		}
		return 1;
	}
	return 1;
}

public RingPlayer(playerid)
{
	new Float:X, Float:Y, Float:Z, string[25];
	GetPlayerPos(playerid, X, Y, Z);

    PlayerPlaySound(playerid, RING_TONE, X, Y, Z);
    format(string, sizeof(string), "* %s' phone is ringing.",GetICName(playerid));
    ProxDetector(15.0, playerid, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
}

/* Stocks */

stock ClearPhonePvars(playerid)
{
	SetPlayerSpecialAction(playerid, SPECIAL_ACTION_STOPUSECELLPHONE);

	E_OnPhone[playerid] = PLAYER_NOT_TALKING;
	E_BeingCalled[playerid] = PLAYER_NOT_BEING_CALLED;
	E_Talking[playerid] = PLAYER_OFF_PHONE;
	E_TalkingTo[playerid] = INVALID_PLAYER_ID;
	
	ison911c[playerid] = false;
	clocation[playerid] = false;
	csituation[playerid] = false;
}


public OnPhoneDisconnect(playerid)
{

    if(E_OnPhone[playerid] == PLAYER_TALKING || E_Talking[playerid] == PLAYER_ON_PHONE)
    {
		SCM(E_TalkingTo[playerid], COLOR_GREY, "The other line died...");
    	ClearPhonePvars(playerid);
		ClearPhonePvars(E_TalkingTo[playerid]);
    }

}



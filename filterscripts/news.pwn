#include <a_samp>

/* Server update news script */


public OnFilterScriptInit()
{
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

/* STUFF TO BE REMOVED!!!! */
#define METROVERSION "Training Server Version 2.43"
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

/* END OF STUFF TO BE REMOVED */

/*



Revision 2.43
2017.12.26

[News]
Updated to RC4.
Custom player models.

[Changes]
Damage system changes, better hit register.

[Fixes]
Several server issue fixes. (Related to custom model skins from samp update.)
Fixed /setstation list not showing, lowered MAX_STATIONS from 140 to 40.

[News]
New Skins are added in.
*/


#define METROVERSION "Training Server Version 2.43"
public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{

	new
		tmpString[128],
		tpDialog[1000];

	format(tmpString, sizeof(tmpString), ""COL_GREEN"[News]\n"COL_ORANGE"- Server updated to RC4.\n- Custom player models introduced (Added 10 skins).");
	strcat(tpDialog, tmpString);
	format(tmpString, sizeof(tmpString), "\n- This future introduced!\n");
	strcat(tpDialog, tmpString);
	format(tmpString, sizeof(tmpString), "\n"COL_GREEN"[Changes]\n"COL_ORANGE"- Damage system changes, shots register much better now (Thanks Mecca).\n");
	strcat(tpDialog, tmpString);
	format(tmpString, sizeof(tmpString), "\n"COL_GREEN"[Fixes]\n"COL_ORANGE"- Several server issues related to the new samp update.\n- /setstation list not showing fixed.\n\n");
	strcat(tpDialog, tmpString);


	ShowPlayerDialog(playerid, 18492, DIALOG_STYLE_MSGBOX, SERVERVERSION, tpDialog, "Close", "");
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}


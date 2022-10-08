#include <LeanInc/Stream_Music>



#define R_STATIONCMD dsetstation

new g_radio_set;
forward radioLoadList( );
public radioLoadList( )
{
	new szQuery[ 256 ]; format( szQuery, sizeof( szQuery ), "SELECT * FROM `radio_stations` ORDER BY `radio_genre` ASC" );
	return mysql_tquery( mysql, szQuery, "Radio_Station_Receive_Thread", "" );
}

forward Radio_Station_Receive_Thread( );
public Radio_Station_Receive_Thread( )
{
	ClearRadioStations( );
	new rows, fields, szResultField[ 128 ];
	cache_get_data( rows, fields );
	for( new i; i < rows && i < MAX_RADIO_STATIONS; i++ )
	{
		cache_get_field_content( i, "radio_url", szResultField );
		format( gXMRadioInformation[ i ][ xmr_url ], sizeof( szResultField ), "%s", szResultField );
		cache_get_field_content( i, "radio_name", szResultField );
		format( gXMRadioInformation[ i ][ xmr_radio_name ], sizeof( szResultField ), "%s", szResultField );
		cache_get_field_content( i, "radio_genre", szResultField );
		format( gXMRadioInformation[ i ][ xmr_genre ], sizeof( szResultField ), "%s", szResultField );
		gXMRadioInformation[ i ][ xmr_load ] = 1;
	}
	g_radio_set = true;
	return 1;
}



stock ClearRadioStation( stationid ){
	if( gXMRadioInformation[ stationid ][ xmr_load ] ){
		format( gXMRadioInformation[ stationid ][ xmr_url ], 256, "" ),	format( gXMRadioInformation[ stationid ][ xmr_radio_name ], 64, "" );
		format( gXMRadioInformation[ stationid ][ xmr_genre ], 15, "" );
		gXMRadioInformation[ stationid ][ xmr_load ] = 0;
	}
	return 1;
}
stock ClearRadioStations( ){
	g_radio_set = false;
	for( new i; i < MAX_RADIO_STATIONS; i++ )
		ClearRadioStation( i );
	return 1;
}
stock SetPlayerRadioOff( playerid )
	return SetPlayerRadioStation( playerid, -1, -1, 0 );
stock OnPlayerRadioConnect( playerid ){
	if( gPlayerRadioStationInformation[ playerid ][ prs_entity_type ]  == g_entity_type_boombox ){
		new _station_id, _owner_id, _attached_to_area; GetBoomBoxObjectInfo( gPlayerRadioStationInformation[ playerid ][ prs_entity ], _station_id, _owner_id, _attached_to_area );
		if( _owner_id == PlayerInfo[playerid][userid] )
			DestroyBoomBox( gPlayerRadioStationInformation[ playerid ][ prs_entity ] );
	}
	return SetPlayerRadioOff( playerid );
}

#define gBoomBoxTagged			0
	#define gBoomBoxTagID 1001000
#define gBoomBoxStation_info_ID	1
#define gBoomBoxOwner_info_ID	2
#define gBoomBoxArea_info_ID	3
stock SetBoomBoxObjectInfo( objectid, station_id, owner_id, attached_to_area ){
	new _object_boombox_info[ 4 ];
	_object_boombox_info[ gBoomBoxTagged ] 			= gBoomBoxTagID;
	_object_boombox_info[ gBoomBoxStation_info_ID ] = station_id;
	_object_boombox_info[ gBoomBoxOwner_info_ID ] 	= owner_id;
	_object_boombox_info[ gBoomBoxArea_info_ID ] 	= attached_to_area;
	return Streamer_SetArrayData( STREAMER_TYPE_OBJECT, objectid, E_STREAMER_EXTRA_ID, _object_boombox_info, sizeof( _object_boombox_info ) );
}
stock GetBoomBoxObjectInfo( objectid, &station_id, &owner_id, &attached_to_area )
{
	new _object_boombox_info[ 4 ]; Streamer_GetArrayData( STREAMER_TYPE_OBJECT, objectid, E_STREAMER_EXTRA_ID, _object_boombox_info, sizeof( _object_boombox_info ) );
	if( _object_boombox_info[ gBoomBoxTagged ] != gBoomBoxTagID )
		return 0;
	station_id 			= _object_boombox_info[ gBoomBoxStation_info_ID ];
	owner_id			= _object_boombox_info[ gBoomBoxOwner_info_ID ];
	attached_to_area	= _object_boombox_info[ gBoomBoxArea_info_ID ];
	return 1;
}

forward CreateBoomBox( boombox_model_id, owner_id, Float:x, Float:y, Float:z );
public CreateBoomBox( boombox_model_id, owner_id, Float:x, Float:y, Float:z )
{
	for( new boombox_id; boombox_id < MAX_BOOMBOXES; boombox_id++ )
	{
		if( !gBoomBoxInformation[ boombox_id ] )
		{
			gBoomBoxInformation[ boombox_id ] = CreateDynamicSphere( x, y, z, MAX_BOOMBOX_RANGE+10.0 );
			new _objectid = CreateDynamicObject( boombox_model_id, x, y, z, 0.0, 0.0, 0.0, .streamdistance = 100.0 );
			setupAreaEntity( gBoomBoxInformation[ boombox_id ], _objectid, g_entity_type_boombox ), SetBoomBoxObjectInfo( _objectid, -1, owner_id, gBoomBoxInformation[ boombox_id ] );
			return 1;
		}
	}
	return 0;
}
forward DestroyBoomBox( boombox_id );
public DestroyBoomBox( boombox_id )
{
	if( !gBoomBoxInformation[ boombox_id ] )
		return 0;
	new _entity, _entity_type; GetAreaEntityInfo( gBoomBoxInformation[ boombox_id ], _entity, _entity_type );
	new _station_id, _owner_id, _attached_to_area; GetBoomBoxObjectInfo( _entity, _station_id, _owner_id, _attached_to_area );
	for( new playerid; playerid < MAX_PLAYERS; playerid++ ){
		if( gPlayerRadioStationInformation[ playerid ][ prs_entity ] == _entity && gPlayerRadioStationInformation[ playerid ][ prs_entity_type ] == g_entity_type_boombox )
			SetPlayerRadioStation( playerid, -1, -1, 0 );
	}
	DestroyDynamicArea( gBoomBoxInformation[ boombox_id ] ), DestroyDynamicObject( _entity ), gBoomBoxInformation[ boombox_id ] = 0;
	return 1;
}
stock isNearBoomBox( playerid, Float:radius=MAX_BOOMBOX_RANGE )
{
	new Float:x, Float:y, Float:z; GetPlayerPos( playerid, x, y, z );
	for( new boombox_id, Float:_dist, _entity, _entity_type; boombox_id < MAX_BOOMBOXES; boombox_id++ ){
		if( gBoomBoxInformation[ boombox_id ] ){
			if( radius > 4.0 ){
				if( IsPlayerInDynamicArea( playerid, gBoomBoxInformation[ boombox_id ] ) )
					return boombox_id;
			}
			GetAreaEntityInfo( gBoomBoxInformation[ boombox_id ], _entity, _entity_type );
			Streamer_GetDistanceToItem( x, y, z, STREAMER_TYPE_OBJECT, _entity, _dist );
			if( _dist <= radius )
				return boombox_id;
		}
	}
	return -1;
}
stock ClearRadioStationVars( playerid ){
	DeletePVar(playerid,"radio_genre");
	DeletePVar(playerid,"radio_sub_genre");
	PlayerInfo[ playerid ][ pDialogID ] = 0;
	return 1;
}
stock isPlayerInRadioStationDlg( playerid )
	return ( ( DIALOG_SUB_GENRE <= PlayerInfo[ playerid ][ pDialogID ] && PlayerInfo[ playerid ][ pDialogID ] <= DIALOG_SUB_STATION ) ? true : false );
stock DisplayMainRadioStationDialog( playerid )
{
	ClearRadioStationVars( playerid );
	new _dialog_string[ 200 ];
	for( new station_id; station_id < MAX_RADIO_STATIONS; station_id++ )
	{
		if( gXMRadioInformation[ station_id ][ xmr_load ] )
		{
			if( strfind( _dialog_string, gXMRadioInformation[ station_id ][ xmr_genre ], true ) != -1 )	continue;
			format( _dialog_string, sizeof( _dialog_string ), "%s%s\n", _dialog_string, gXMRadioInformation[ station_id ][ xmr_genre ] );
		}
	}
	format( _dialog_string, sizeof( _dialog_string ), "%s{FFFF00}OFF - To turn off.", _dialog_string );
	PlayerInfo[ playerid ][ pDialogID ] = DIALOG_SUB_GENRE;
	return ShowPlayerDialog( playerid, MAIN_RADIO_DIALOG, DIALOG_STYLE_LIST, "Genres:", _dialog_string, "Select", "<<" );
}


stock DisplayRadioStationsDialog( playerid, genre[] )
{
	new _dialog_string[ 200 ];
	for( new i; i < MAX_RADIO_STATIONS; i++ )
	{
		if( gXMRadioInformation[ i ][ xmr_load ] )
		{
			if( !strcmp( gXMRadioInformation[ i ][ xmr_genre ], genre ))
			{
				format( _dialog_string, sizeof( _dialog_string ), "%s%s ID: %d\n", _dialog_string, gXMRadioInformation[ i ][ xmr_radio_name ], i );
			}
		}
	}
	format( _dialog_string, sizeof( _dialog_string ), "%s{FFFF00}OFF - To turn off.", _dialog_string );
	PlayerInfo[ playerid ][ pDialogID ] = DIALOG_SUB_STATION;
	return ShowPlayerDialog( playerid, MAIN_RADIO_DIALOG, DIALOG_STYLE_LIST, "Stations:", _dialog_string, "Select", "<<" );
}

stock FetchRadioStation( genre[],selection_id ){
	for( new i, _slot_id; i < MAX_RADIO_STATIONS; i++ ){
		if( gXMRadioInformation[ i ][ xmr_load ] ){
			if( !strcmp( gXMRadioInformation[ i ][ xmr_genre ], genre ) )
			{
				if( _slot_id == selection_id ) return i;
				_slot_id++;
			}
		}
	}
	return -1;
}

forward radio_OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] );
public radio_OnDialogResponse( playerid, dialogid, response, listitem, inputtext[] )
{
	if( dialogid == MAIN_RADIO_DIALOG )
	{
		if( !isPlayerInRadioStationDlg( playerid ) )
			return 0;
		new sub_dialogid = PlayerInfo[ playerid ][ pDialogID ];
		if( sub_dialogid == DIALOG_SUB_GENRE )
		{
			if( !strcmp( inputtext, "OFF - To turn off." ) )
				return cmd_dsetstation( playerid, "off" ), ClearRadioStationVars( playerid );
			if( response )
			{
				SetPVarString( playerid, "radio_genre", inputtext );
				return DisplayRadioStationsDialog( playerid, inputtext );
			} 
			return ClearRadioStationVars( playerid );
		} 

		else if( sub_dialogid == DIALOG_SUB_STATION )
		{
			if( !strcmp( inputtext, "OFF - To turn off." ) )
				return cmd_dsetstation( playerid, "off" ), ClearRadioStationVars( playerid );
			if( response )
			{
				new _radio_genre[ 20 ], _sub_genre[ 20 ];
				GetPVarString( playerid, "radio_genre", _radio_genre, sizeof( _radio_genre ) );
				GetPVarString( playerid, "radio_sub_genre", _sub_genre, sizeof( _sub_genre ) );
				new _station = FetchRadioStation( _radio_genre, listitem ), _station_id[ 15 ];
				format( _station_id, sizeof( _station_id ), "%d", _station ), cmd_dsetstation( playerid, _station_id );
				return DisplayRadioStationsDialog( playerid, _radio_genre);
			} 
			else 
			{
				new _radio_genre[ 20 ]; GetPVarString( playerid, "radio_genre", _radio_genre, sizeof( _radio_genre ) );	
				return DisplayMainRadioStationDialog( playerid );
			}
		}
	}
	return 0;
}
forward SetPlayerRadioStation( playerid, entity_id, xm_station, entity_type );
public SetPlayerRadioStation( playerid, entity_id, xm_station, entity_type )
{
	gPlayerRadioStationInformation[ playerid ][ prs_entity_type ] 	= entity_type;	gPlayerRadioStationInformation[ playerid ][ prs_entity ] = entity_id;
	gPlayerRadioStationInformation[ playerid ][ prs_station_id ] 	= xm_station;
	if( xm_station != -1 )
	{
		if( entity_type == g_entity_type_boombox )
		{
			new Float:x, Float:y, Float:z; GetDynamicObjectPos( entity_id, x, y, z );
			PlayAudioStreamForPlayer( playerid, gXMRadioInformation[ xm_station ][ xmr_url ], x, y, z, MAX_BOOMBOX_RANGE, 1 );
		} 
		else PlayAudioStreamForPlayer( playerid, gXMRadioInformation[ xm_station ][ xmr_url ] );
	} 
	else StopAudioStreamForPlayer( playerid );
	return 1;
}
forward SetRadioStation( entity_id, entity_type, station_id );
public SetRadioStation( entity_id, entity_type, station_id ){
	new _szradio[ 128 ];
 

	if( entity_type == g_entity_type_vehicle )
	{
		gVehicleInformation[ entity_id ][ vehicle_internal_radio_station ]  = station_id;
		EachPlayer(i)
		{
			if(IsPlayerInVehicle(i, entity_id))
			{
				SetPlayerRadioStation( i, entity_id, station_id, entity_type );
				if( station_id != -1 )
				{
					format( _szradio, sizeof( _szradio ), "Radio changed to station %s", gXMRadioInformation[ station_id ][ xmr_radio_name ] );
				} else format( _szradio, sizeof( _szradio ), "Radio has been turned off." );
				SendClientMessage( i, COLOR_RED, _szradio );
			}
		}
	} 
	else if( entity_type == g_entity_type_boombox )
	{
		new _station_id, _owner_id, _attached_to_area; 
		if( GetBoomBoxObjectInfo( entity_id, _station_id, _owner_id, _attached_to_area ) )
		{
			SetBoomBoxObjectInfo( entity_id, station_id, _owner_id, _attached_to_area );
			for( new playerid; playerid < MAX_PLAYERS; playerid++ ){
				if( IsPlayerInDynamicArea( playerid, _attached_to_area ) ){
					SetPlayerRadioStation( playerid, entity_id, station_id, entity_type );
					if( station_id != -1 ){
						format( _szradio, sizeof( _szradio ), "Radio changed to station %s", gXMRadioInformation[ station_id ][ xmr_radio_name ] );
					} else format( _szradio, sizeof( _szradio ), "Radio has been turned off." );
					SendClientMessage( playerid, COLOR_RED, _szradio );
				}
			}
		} else return 0;
	}
	return 1;
}
new gNoteOperation[MAX_PLAYERS];
#define BOOMBOXOBJECT_ID 2226


LEANCMD:(boombox)
{
	new Float:x, Float:y, Float:z, owner_id = PlayerInfo[playerid][userid];
	GetPlayerPos(playerid, x, y, z);
	CreateBoomBox( BOOMBOXOBJECT_ID, owner_id, x, y, z );
	return 1;
}


CMD:createst(playerid, cmdtext[])
{
		new XMRadior[24] = "Big bang Radio";
		new XMURLr[24] = "HTTP://URL.LOL";
		new XMGENRE[24] = "HipHop";
		new station_id = NextStation();
		
		strmid(gXMRadioInformation[ station_id ][ xmr_radio_name ] , XMRadior, 0, strlen(XMRadior), 64);
		strmid(gXMRadioInformation[ station_id ][ xmr_url ] , XMURLr, 0, strlen(XMURLr), 96);
		strmid(gXMRadioInformation[ station_id ][ xmr_genre ] , XMGENRE, 0, strlen(XMGENRE), 15);
		SendClientMessage(playerid,COLOR_GREEN,"Station Created.");
		new ottquery[256], string[128];
        format(string, sizeof(string), "AdmWarn(%i): %s has created an XM Radio Station with the name %s.",PlayerInfo[playerid][pAdmin],GetName(playerid), XMRadior );
		SendAdminMessage(COLOR_YELLOW, string);

  		mysql_format(mysql, ottquery, sizeof(ottquery), "INSERT INTO `radio_stations` (`radio_name`, `radio_url`, `radio_genre`) VALUES ('%s', '%s', '%s')",XMRadior, XMURLr,XMGENRE);
        mysql_tquery(mysql, ottquery, "", "");
}



CMD:dsetstation( playerid, cmdtext[] ){
	if( !g_radio_set )
		return SendClientMessage( playerid, COLOR_RED,"SERVER: The radio list is reloading at the moment."), 1;
	if( GetUnixTime()-gNoteOperation[ playerid ] < 2 )
		return SendClientMessage( playerid, COLOR_LIGHTRED, "Wait 2 seconds before changing the stations."), 1;
	gNoteOperation[ playerid ] = GetUnixTime();
	new tmp[256], idx, _station_id, szMsg[ 128 ],
		_entity = -1, _entity_type, _entity_test;
	tmp = strtok( cmdtext, idx );
	if( GetPlayerVehicleID( playerid ) ){
		if( GetPlayerState( playerid ) != PLAYER_STATE_DRIVER )
			return SendClientMessage( playerid, COLOR_RED, "SERVER: Only the driver may use this command."), 1;
		_entity 		= GetPlayerVehicleID( playerid );
		_entity_type	= g_entity_type_vehicle;

	} 

	if( (_entity_test = isNearBoomBox( playerid, 3.5 )) != -1 )
	{
		new __station_id, _owner_id, _attached_to_area; GetBoomBoxObjectInfo( _entity_test, __station_id, _owner_id, _attached_to_area );
		if( _owner_id != PlayerInfo[playerid][userid] && PlayerInfo[playerid][pAdmin] < 1)
			return SendClientMessage( playerid, COLOR_RED, "SERVER: This is not your boombox."), 1;
		_entity 		= _entity_test;
		_entity_type	= g_entity_type_boombox;
	}
	
	if( _entity == -1 ) return SendClientMessage( playerid, COLOR_RED, "You are not near anything." ), 1;

	else 
	{
		if( !strlen( tmp ) )
			return DisplayMainRadioStationDialog( playerid ), 1;
		if( !strcmp( tmp, "off", true, strlen( tmp ) ) )
		{
			_station_id = -1;
			format( szMsg, sizeof( szMsg ),"%s has tuned the radio off.", GetICName( playerid ) );
			SetPlayerChatBubble( playerid, szMsg, COLOR_LIGHTRED, 20.0, 5000 );
		} 
		else 
		{
			if( strval( tmp ) < 0 || strval( tmp ) > sizeof( gXMRadioInformation ) )
				return SendClientMessage( playerid, COLOR_RED, "Invalid station id." ), 1;
			_station_id	= strval( tmp );
			if( !gXMRadioInformation[ _station_id ][ xmr_load ] ) return SendClientMessage( playerid, COLOR_RED, "Invalid station id." );
			
			format( szMsg, sizeof( szMsg ),"%s has tuned the radio to %s.", GetICName( playerid ), gXMRadioInformation[ _station_id ][ xmr_radio_name ] );
			SetPlayerChatBubble( playerid, szMsg, COLOR_GREEN, 20.0, 5000 );
			format( szMsg, sizeof( szMsg ),"> %s has tuned the radio to %s.", GetICName( playerid ), gXMRadioInformation[ _station_id ][ xmr_radio_name ] );
			SendClientMessage( playerid, COLOR_GREEN, szMsg );
		}
		SetRadioStation( _entity, _entity_type, _station_id );
	}
	return 1;
}







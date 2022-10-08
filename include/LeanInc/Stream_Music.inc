#define g_entity_type_boombox 1
#define g_entity_type_vehicle 2
#define g_entity_type_spike 3

#define MAX_RADIO_STATIONS 120
#define MAX_BOOMBOXES 50
#define MAX_BOOMBOX_RANGE 10.0

#define DIALOG_SUB_GENRE 18324
#define MAIN_RADIO_DIALOG 18325
#define DIALOG_SUB_SUBGENRE 18326
#define DIALOG_SUB_STATION 18327

new gBoomBoxInformation[MAX_BOOMBOXES];

enum XMRAInfo
{
	xmr_radio_name[64],
	xmr_url[256],
	xmr_genre[15],
	xmr_load,
};
new gXMRadioInformation[MAX_STATIONS][XMRAInfo];


enum VehXMR
{
	vehicle_internal_radio_station,
};
new gVehicleInformation[MAX_VEHICLES][VehXMR];


enum gRadioInfo
{
	prs_entity,
	prs_entity_type,
	prs_station_id
	
};
new gPlayerRadioStationInformation[MAX_PLAYERS][gRadioInfo];


strtok(const string[], &index)
{
	new length = strlen(string);
	while ((index < length) && (string[index] <= ' '))
	{
		index++;
	}
 
	new offset = index;
	new result[20];
	while ((index < length) && (string[index] > ' ') && ((index - offset) < (sizeof(result) - 1)))
	{
		result[index - offset] = string[index];
		index++;
	}
	result[index - offset] = EOS;
	return result;
}



stock ClearAreaVars( areaid ){
	if( areaid == -1111414 )
		return 1;
	return 1;
}
#define gEntityInfoID	0
#define gEntityInfoType	1

forward setupAreaEntity( areaid, entity, entity_type );
public setupAreaEntity( areaid, entity, entity_type ){
	if( !IsValidDynamicArea( areaid ) )
		return 0;
	new _entity_info[ 2 ];
	_entity_info[ gEntityInfoID ] 	= entity;
	_entity_info[ gEntityInfoType ] = entity_type;
	Streamer_SetArrayData( STREAMER_TYPE_AREA, areaid, E_STREAMER_EXTRA_ID, _entity_info, 2 );
	return 1;
}
stock GetAreaEntityInfo( areaid, &entity, &entity_type ){
	if( !IsValidDynamicArea( areaid ) )
		return 0;
	new _entity_info[ 2 ];
	Streamer_GetArrayData( STREAMER_TYPE_AREA, areaid, E_STREAMER_EXTRA_ID, _entity_info, 2 );
	entity = _entity_info[ gEntityInfoID ], entity_type = _entity_info[ gEntityInfoType ];
	return 1;
}


public OnPlayerEnterDynamicArea( playerid, areaid )
{
	printf("PLAYER ENTERD DYNAMIC AREA :%d",areaid);
	new _entity, _entity_type;
	GetAreaEntityInfo( areaid, _entity, _entity_type );
	printf("Entityinfo: _entity :%d _entity_type: %d",_entity, _entity_type);
	if( _entity_type == g_entity_type_boombox && GetPlayerState( playerid ) == PLAYER_STATE_ONFOOT)
	{
		printf("PLAYER IS IN BOOMBOX AREA YO!");
		new _station_id, _owner_id, _area_attach; GetBoomBoxObjectInfo( _entity, _station_id, _owner_id, _area_attach );
		printf("_station_id %d",_station_id);
		if( _station_id != -1 )
		{
			printf("Setting the radio station!");
			SetPlayerRadioStation( playerid, _entity, _station_id, g_entity_type_boombox );
		}
	}
	if( _entity_type == g_entity_type_spike && GetPlayerState(playerid) == 2 )
	{
		OnPlayerDriveOverSpike(playerid);
		printf("PLAYER IS IN SPIKE AREA!");

	}
	return 1;
}
public OnPlayerLeaveDynamicArea( playerid, areaid )
{
	printf("Left area %d");
	new _entity, _entity_type;
	GetAreaEntityInfo( areaid, _entity, _entity_type );
	if( _entity_type == g_entity_type_boombox )
	{
		if( gPlayerRadioStationInformation[ playerid ][ prs_entity_type ] == g_entity_type_boombox  && gPlayerRadioStationInformation[ playerid ][ prs_entity ] == _entity )
		{
			StopAudioStreamForPlayer( playerid );
			ClearRadioStationVars	( playerid );
		}
	}
	return 1;
}
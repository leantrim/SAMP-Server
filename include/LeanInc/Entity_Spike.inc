#define g_entity_type_boombox 1
#define g_entity_type_vehicle 2
#define g_entity_type_spike 3

#define MAX_BOOMBOX_RANGE 10.0



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
	new _entity, _entity_type;
	GetAreaEntityInfo( areaid, _entity, _entity_type );

	if( _entity_type == g_entity_type_spike && GetPlayerState(playerid) == 2 )
	{
		OnPlayerDriveOverSpike(playerid);
	}
	return 1;
}
public OnPlayerLeaveDynamicArea( playerid, areaid )
{
	printf("Left area %d");
	new _entity, _entity_type;
	GetAreaEntityInfo( areaid, _entity, _entity_type );
	return 1;
}
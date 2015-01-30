/*
	File: beacon.sqf
	Author: [TCL] extrem-gx
	
	Description:
	Adds a marker to the map, which shows the pos of the survivor in a "_markerDiameter" diameter.
*/
_markerDiameter = 500;

_survivorPos = getPos survivor1;
_x = (_survivorPos select 0) + (floor (random (_markerDiameter/2))) - (floor (random (_markerDiameter/2)));
_y = (_survivorPos select 1) + (floor (random (_markerDiameter/2))) - (floor (random (_markerDiameter/2)));
_survivorPos set [0, _x];
_survivorPos set [1, _y];

// Generate Marker Name
if (isNil "counter") then { counter = 0};
counter = counter +1;
_m_survivorPosName = "m_survivorPos" + str counter;
_m_survivorPosIconName = "m_survivorPosIcon" + str counter;
//Get current Time and format it
_now = date;
_hour = _now select 3;
_min  = _now select 4;
if ( _hour <10 ) then
{
	_hour = "0"+ str(_hour);
}
else
{
	_hour = str(_hour);
};
if ( _min <10 ) then
{
	_min = "0"+ str(_min);
}
else
{
	_min = str(_min);
};
_time = format["%1:%2",_hour,_min];

// MARKER SHIZZEL
_m_survivorPos = createMarker [_m_survivorPosName,_survivorPos];
_m_survivorPosName setMarkerShape "ELLIPSE";
_m_survivorPosName setMarkerType "hd_warning";
_m_survivorPosName setMarkerSize [_markerDiameter, _markerDiameter];
_m_survivorPosName setMarkerBrush "FDiagonal";
_m_survivorPosName setMarkerColor "ColorOrange";

_m_survivorPosIcon = createMarker [_m_survivorPosIconName,_survivorPos];
_m_survivorPosIconName setMarkerShape "ICON";
_m_survivorPosIconName setMarkerType "hd_warning";
_m_survivorPosIconName setMarkerColor "ColorBlack";
_m_survivorPosIconName setMarkerText "Beacon signal Time: " + _time;
// MARKER SHIZZEL END
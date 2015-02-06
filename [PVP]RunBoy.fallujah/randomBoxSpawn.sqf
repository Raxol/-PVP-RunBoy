private "_count", "_position", "_radius";

_count = _this select 0;
_position = _this select 1;
_radius = _this select 2;

for [{_i=0},{_i<_count},{_i=_i+1}] do
{
	_box = createVehicle ["Box_FIA_Support_F", _position, [], _radius, "CAN_COLLIDE"];
	_nul = [_box] execVM "cargoAddItems.sqf";
};
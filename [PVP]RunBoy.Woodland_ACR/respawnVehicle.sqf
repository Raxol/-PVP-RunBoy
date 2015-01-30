// Apply Vehicle Settings from parameters

private "_vision", "_vehicle";

_vehicle = (_this select 0) select 0;

_vision = if (("ThermalVision" call BIS_fnc_getParamValue) == 1) then {true;} else {false};

_vehicle disableTIEquipment true;
sleep 0.5;

// 
execVM "initMission.sqf";

// Spawn AI script if Headless Client is not present
if (isNil "HeadlessVariable") then
{
	execVM "script.sqf";
};

// Apply Skill Parameter to AI Units
_skill = "AISkill" call BIS_fnc_getParamValue;
{
	_x setSkill _skill;
} forEach allUnits;

// Time left counter
[] spawn 
{
	ELAPSED_TIME  = 0;
	START_TIME = diag_tickTime;
	while {ELAPSED_TIME < END_TIME} do 
	{
		ELAPSED_TIME = diag_tickTime - START_TIME;
		publicVariable "ELAPSED_TIME";
		sleep 1;
	};
};
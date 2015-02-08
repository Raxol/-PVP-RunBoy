// This script "initServer.sqf" gets automatically executed. 
// Executed only on server when mission is started.
private ["_exfillPos"];

sleep 0.1;

// Set Time
_minutes = "TimeMinutes" call BIS_fnc_getParamValue;
_hours = "TimeHour" call BIS_fnc_getParamValue;

setDate [2015, 4, 24, _hours, _minutes];

//Sets the mission params
// Init Array for UAV Menu 
if (isNil "aUAV") then { aUAV = []; publicVariable "aUAV"; };

cargo1 addItemCargoGlobal ["ACRE_PRC148", 100];
cargo2 addItemCargoGlobal ["ACRE_PRC148", 100];

rbsSpawnHandle = [100, (getPos rbs), 2000] execVM "randomBoxSpawn.sqf";

// exfillNumber determining the exfill pos for survivor
exfillNumber = floor(random 7);
publicVariable "exfillNumber";

rightTrigger = false;
publicVariable "rightTrigger";

switch (exfillNumber) do 
{
	case 0: {
				exfillTriggerName = "tCiv0";
				_exfillPos = getPos tCiv0;
				dest setPos _exfillPos;
			};
	case 1: {
				exfillTriggerName = "tCiv1";
				_exfillPos = getPos tCiv1;
				dest setPos _exfillPos;
			};
	case 2: {
				exfillTriggerName = "tCiv2";
				_exfillPos = getPos tCiv2;
				dest setPos _exfillPos;
			};
	case 3: {
				exfillTriggerName = "tCiv3";
				_exfillPos = getPos tCiv3;
				dest setPos _exfillPos;
			};
	case 4: {
				exfillTriggerName = "tCiv4";
				_exfillPos = getPos tCiv4;
				dest setPos _exfillPos;
			};
	case 5: {
				exfillTriggerName = "tCiv5";
				_exfillPos = getPos tCiv5;
				dest setPos _exfillPos;
			};
	case 6: {
				exfillTriggerName = "tCiv6";
				_exfillPos = getPos tCiv6;
				dest setPos _exfillPos;
			};				
};
publicVariable "exfillTriggerName";
ready = true;
publicVariable "ready";

END_TIME = 7200; //When mission should end in seconds.
publicVariable "END_TIME";
END_TIME_BEACON = "BeaconInterval" call BIS_fnc_getParamValue;//30; //Interval of beacon.

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

// Only spawn the function if the parameter is set to enable
if (("Beacon" call BIS_fnc_getParamValue) == 1) then { execVM "beaconTimer.sqf"; };


serverInitialized = true;
publicVariable "serverInitialized";
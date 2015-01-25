waitUntil {time > 0};

if ( isServer || hasInterface ) then
{
	sleep 1;			// Making sure that the headlessclient (in case there is one ) has enough time to set variable and spawn all untis 
};

if (isServer) then
{
	if (isNil "HeadlessVariable") then
	{
		execVM "script.sqf";
	};
	execVM "initMission.sqf";
};

if ( side player == west) then
{
	[] execVM "briefing.sqf"; //Load Briefing
};
if ( side player == east) then
{
	[] execVM "briefingOpfor.sqf"; //Load Briefing
};
if ( side player == resistance) then
{
	[] execVM "briefingInd.sqf"; //Load Briefing
};

//////////////////////////////////////////////////////////////////////////////////
//UAV Life Feed by extrem-gx BEGIN:
// The UAV Menu is a custom menu, which can show every life feed from the two UAV types and the one UGV type. All UAVs/UGVs that have a name and in the init 
// this: 
// null = [this] execVM "UAV\SetUpUAVForLifeFeed.sqf";
// will be able to send their camera feed to any player.
// In this mission only BLUFOR units can use the uav life feed.

if (isNil "aUAV") then { aUAV = []; publicVariable "aUAV"; };

if ( side player == west ) then
{
	player addAction["<t color='#1292E2'>UAV Menu</t>", "UAV\OpenUAVMenu.sqf"];			// Adds the UAV Menu to all players
};

if ( hasInterface ) then
{
	currentPiPEffectIndex = 0;
	currentCamFov = 0.7;
	isUAVCamActive = false;
};

onRscUAVLoad = {
    private ["_display","_idc","_ctrl"];
    _display = _this select 0;
    _idc = 0;
    _ctrl = _display displayCtrl _idc;
	_ctrl ctrlSetText "#(argb,256,256,1)r2t(rendertarget1,1.0)";
	//systemChat str _display;
	//systemChat str _ctrl;
    _ctrl ctrlCommit 0;
};
//UAV shizzel by extrem-gx END
//////////////////////////////////////////////////////////////////////////////////

#define BUL_UAVintro_Text "Run Boy"
private ["_colorWest", "_colorEast"];
_colorWest = [west] call BIS_fnc_sideColor;
_colorEast = [east] call BIS_fnc_sidecolor;
if ( side player != resistance) then
{
	
	_SurvPos = getPos survivor1;
	_SurvPos set [2,75];
	//hint formatText["X: %1 Z: %2 Y: %3",_SurvPos select 0, _SurvPos select 1, _SurvPos select 2];
	//sleep 5;
	//starts the UAV orbiting above
	[
		_SurvPos,				//need to create a marker called BIS_establishingShot_center
		BUL_UAVintro_Text,//spawns the text
		400,//height
		50,//radius
		180,//angle
		(random 1),//clockwise\anit-clock
		[
			["\A3\ui_f\data\map\markers\nato\b_inf.paa", _colorWest, getpos player, 1, 1, 0, "", 0],
			["\A3\ui_f\data\map\markers\nato\o_hq.paa", _colorEast, getmarkerpos "OPFORHQ", 1, 1, 0, "OPFOR Base", 0],
			["\A3\ui_f\data\map\mapcontrol\Transmitter_CA.paa", _colorWest, getmarkerpos "BLUFORHQ",  1, 1, 0, "BLUFOR HQ", 0]
		],
		0
	] call BIS_fnc_establishingShot;
};

if (hasInterface) then
{
	waitUntil { (!isNil {ready}) && (alive player) };
	
	_text = parseText format["exfillNumber = %1", exfillNumber];
	//hint _text;
};

END_TIME = 7200; //When mission should end in seconds.

if (isServer) then {
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
};
waitUntil {!isNil {ELAPSED_TIME}}; 
if!(isDedicated) then
{
    [] spawn 
    {
        while{ELAPSED_TIME < END_TIME } do
        {
           _time = END_TIME - ELAPSED_TIME;
            _finish_time_minutes = floor(_time / 60);
            _finish_time_seconds = floor(_time) - (60 * _finish_time_minutes);
            if(_finish_time_seconds < 10) then
            {
                _finish_time_seconds = format ["0%1", _finish_time_seconds];
            };
            if(_finish_time_minutes < 10) then
            {
                _finish_time_minutes = format ["0%1", _finish_time_minutes];
            };
            _formatted_time = format ["%1:%2", _finish_time_minutes, _finish_time_seconds];
            
            hintSilent format ["Time left:\n%1", _formatted_time];
            sleep 1;
        };
    };
};  

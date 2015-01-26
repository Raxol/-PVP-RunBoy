sleep 0.5;

if (isServer) then
{
	if (isNil "HeadlessVariable") then
	{
		execVM "script.sqf";
	};
	execVM "initMission.sqf";
};

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
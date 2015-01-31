while {true} do
{
	ELAPSED_TIME_BEACON  = 0;
	START_TIME_BEACON = diag_tickTime;
	while {ELAPSED_TIME_BEACON < END_TIME_BEACON} do 
	{
		ELAPSED_TIME_BEACON = diag_tickTime - START_TIME_BEACON;
		sleep 1;
	};
	if( ELAPSED_TIME_BEACON > END_TIME_BEACON ) then
	{
		execVM "beacon.sqf";
	};
};


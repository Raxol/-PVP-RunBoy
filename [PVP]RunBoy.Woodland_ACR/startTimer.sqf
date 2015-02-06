END_TIME_BEACON = 30; //Interval of beacon.
titleText ["TIMER STARTED", "PLAIN"];
StartTimerBeacon = 
{
	if (isServer) then 
	{
		[] call
		{
			ELAPSED_TIME_BEACON  = 0;
			START_TIME_BEACON = diag_tickTime;
			while {ELAPSED_TIME_BEACON < END_TIME_BEACON} do 
			{
				ELAPSED_TIME_BEACON = diag_tickTime - START_TIME_BEACON;
				publicVariable "ELAPSED_TIME_BEACON";
				sleep 1;
			};
			if( ELAPSED_TIME_BEACON > END_TIME_BEACON ) then
			{
				//["hello", {hint _this}] execFSM "call.fsm";
				nul = execVM "beacon.sqf";
				//["",StartTimerBeacon] execFSM "call.fsm";
				[] call StartTimerBeacon;
				//["",StartTimerBeacon] execFSM "call.fsm";
				
			};
		};
	};
};
[] call StartTimerBeacon;
_weatherLevel = (_this select 0);

switch (_weatherLevel) do 
{ 
	case 1: 
	{ 
		skipTime -24;
		86400 setOvercast 0.55;
		skipTime 24;
		0 = [] spawn { sleep 0.1; simulWeatherSync; };
	}; 
	case 2: 
	{ 
		skipTime -24;
		86400 setOvercast 0.85;
		skipTime 24;
		0 = [] spawn { sleep 0.1; simulWeatherSync; }; 
	}; 
	default 
	{ 
		skipTime -24;
		86400 setOvercast 0.20;
		skipTime 24;
		0 = [] spawn { sleep 0.1; simulWeatherSync; };
	}; 
};
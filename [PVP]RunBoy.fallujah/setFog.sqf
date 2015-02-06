_fogLevel = (_this select 0);

switch (_fogLevel) do 
{ 
	case 1: { 0 setFog [0.55, 0.05, 20] }; 
	case 2: { 0 setFog [0.75, 0.025, 30] }; 
	default { 0 setFog [0, 0, 0] }; 
};
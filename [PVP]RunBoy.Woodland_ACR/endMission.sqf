// End the mission, Use "WEST", "EAST" or "TIMEOUT" as parameter to call the end
private "_result","_playerSide";

_result = _this select 0;
_playerSide = str(side player);

switch (_result) do
{ 
	case "WEST": 
		{
			if (_playerSide == _result) then
			{
				//Win
				["endWestWin", true, 2] call BIS_fnc_endMission;
			}
			else
			{
				//Defeat
				["endEastDefeat", false, 2] call BIS_fnc_endMission;
			}
		};
	case "EAST":
		{
			if (_playerSide == _result) then
			{
				//Win
				["endEastWin", true, 2] call BIS_fnc_endMission;
			}
			else
			{
				//Defeat
				["endWestDefeat", false, 2] call BIS_fnc_endMission;
			}
		};
	case "TIMEOUT": { ["endTimeout", false, 2] call BIS_fnc_endMission; };
};
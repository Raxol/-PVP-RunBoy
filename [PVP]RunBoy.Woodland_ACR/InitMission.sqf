/*
	File: InitMission.sqf
	Author: [TCL] extrem-gx
	
	Description:
	Sets the mission params
*/
private ["_exfillPos"];


if (isServer) then
{
	exfillNumber = floor(random 7);
	publicVariable "exfillNumber";
	
	rightTrigger = false;
	publicVariable "rightTrigger";
	
	cargo1 addItemCargoGlobal ["ACRE_PRC148", 100];
	cargo2 addItemCargoGlobal ["ACRE_PRC148", 100];
	
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
};
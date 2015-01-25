/*
 * Created with HCSQMtoSQF Converter
 *
 * Source: C:\Users\Linus Meng\Documents\Arma 3 - Other Profiles\extremgx\missions\[PVP]RunBoy_HC.Woodland_ACR\mission.sqm
 * File Version: 12 | Arma 3
 * Date: 22.01.2015 15:37
 */

_west = createCenter west;				// BLUFOR (NATO)
_east = createCenter east;				// OPFOR (CSAT)
_guer = createCenter resistance;		// Independent (AAF)
_civ  = createCenter civilian;			// Civilians


/******************
 * UNITS & GROUPS *
 ******************/

// Begin of Group _group_east_1
_group_east_1 = createGroup _east;
	// Begin of Unit _group_east_1_unit_1
	if (true) then
	{
		_group_east_1_unit_1 = createVehicle ["O_APC_Wheeled_02_rcws_F", [6758.748, 7558.252, 0], [], 0, "CAN_COLLIDE"];
		createVehicleCrew _group_east_1_unit_1;
		[_group_east_1_unit_1] joinSilent _group_east_1;
		_group_east_1_unit_1 setDir 250.16728;
		_group_east_1_unit_1 setUnitAbility 0.5;
		_group_east_1_unit_1 setRank "SERGEANT";
		_group_east_1 selectLeader _group_east_1_unit_1;
	};
	// End of Unit _group_east_1_unit_1
	// Begin of Unit _group_east_1_unit_2
	if (true) then
	{
		_group_east_1_unit_2 = _group_east_1 createUnit ["O_soldier_SL_F", [6774.1128, 7551.04, 0], [], 0, "CAN_COLLIDE"];
		_group_east_1_unit_2 setDir 250.16728;
		_group_east_1_unit_2 setUnitAbility 0.5;
		_group_east_1_unit_2 setRank "SERGEANT";
	};
	// End of Unit _group_east_1_unit_2
	// Begin of Unit _group_east_1_unit_3
	if (true) then
	{
		_group_east_1_unit_3 = _group_east_1 createUnit ["O_soldier_TL_F", [6766.2344, 7575.8306, 0], [], 0, "CAN_COLLIDE"];
		_group_east_1_unit_3 setDir 250.16728;
		_group_east_1_unit_3 setUnitAbility 0.5;
		_group_east_1_unit_3 setRank "SERGEANT";
	};
	// End of Unit _group_east_1_unit_3
	// Begin of Unit _group_east_1_unit_4
	if (true) then
	{
		_group_east_1_unit_4 = _group_east_1 createUnit ["O_soldier_AR_F", [6769.5737, 7581.291, 0], [], 0, "CAN_COLLIDE"];
		_group_east_1_unit_4 setDir 250.16728;
		_group_east_1_unit_4 setUnitAbility 0.44999999;
		_group_east_1_unit_4 setRank "CORPORAL";
	};
	// End of Unit _group_east_1_unit_4
	// Begin of Unit _group_east_1_unit_5
	if (true) then
	{
		_group_east_1_unit_5 = _group_east_1 createUnit ["O_soldier_AR_F", [6781.7954, 7547.4258, 0], [], 0, "CAN_COLLIDE"];
		_group_east_1_unit_5 setDir 250.16728;
		_group_east_1_unit_5 setUnitAbility 0.40000001;
	};
	// End of Unit _group_east_1_unit_5
	// Begin of Unit _group_east_1_unit_6
	if (true) then
	{
		_group_east_1_unit_6 = _group_east_1 createUnit ["O_soldier_AAR_F", [6772.5869, 7587.6948, 0], [], 0, "CAN_COLLIDE"];
		_group_east_1_unit_6 setDir 250.16728;
		_group_east_1_unit_6 setUnitAbility 0.40000001;
	};
	// End of Unit _group_east_1_unit_6
	// Begin of Unit _group_east_1_unit_7
	if (true) then
	{
		_group_east_1_unit_7 = _group_east_1 createUnit ["O_soldier_LAT_F", [6788.1948, 7544.4248, 0], [], 0, "CAN_COLLIDE"];
		_group_east_1_unit_7 setDir 250.16728;
		_group_east_1_unit_7 setUnitAbility 0.44999999;
		_group_east_1_unit_7 setRank "CORPORAL";
	};
	// End of Unit _group_east_1_unit_7
	// Begin of Unit _group_east_1_unit_8
	if (true) then
	{
		_group_east_1_unit_8 = _group_east_1 createUnit ["O_medic_F", [6775.5928, 7594.0933, 0], [], 0, "CAN_COLLIDE"];
		_group_east_1_unit_8 setDir 250.16728;
		_group_east_1_unit_8 setUnitAbility 0.40000001;
	};
	// End of Unit _group_east_1_unit_8
	// Begin of Unit _group_east_1_unit_9
	if (true) then
	{
		_group_east_1_unit_9 = _group_east_1 createUnit ["O_Soldier_F", [6794.5972, 7541.4131, 0], [], 0, "CAN_COLLIDE"];
		_group_east_1_unit_9 setDir 250.16701;
		_group_east_1_unit_9 setUnitAbility 0.40000001;
	};
	// End of Unit _group_east_1_unit_9
	// Waypoints for _group_east_1
	// Waypoint #1
	_wp = _group_east_1 addWaypoint[[6731.7593, 7546.9399, 0], 0, 1];
	[_group_east_1, 1] setWaypointBehaviour "SAFE";
	[_group_east_1, 1] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 1] setWaypointCompletionRadius 0;
	[_group_east_1, 1] setWaypointFormation "NO CHANGE";
	[_group_east_1, 1] setWaypointSpeed "LIMITED";
	[_group_east_1, 1] setWaypointStatements ["true", ""];
	[_group_east_1, 1] setWaypointType "GETIN";
	// Waypoint #2
	_wp = _group_east_1 addWaypoint[[6799.2373, 7313.1128, 0], 0, 2];
	[_group_east_1, 2] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 2] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 2] setWaypointCompletionRadius 0;
	[_group_east_1, 2] setWaypointFormation "NO CHANGE";
	[_group_east_1, 2] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 2] setWaypointStatements ["true", ""];
	[_group_east_1, 2] setWaypointType "MOVE";
	// Waypoint #3
	_wp = _group_east_1 addWaypoint[[6838.1875, 7215.0156, 0], 0, 3];
	[_group_east_1, 3] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 3] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 3] setWaypointCompletionRadius 0;
	[_group_east_1, 3] setWaypointFormation "NO CHANGE";
	[_group_east_1, 3] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 3] setWaypointStatements ["true", ""];
	[_group_east_1, 3] setWaypointType "MOVE";
	// Waypoint #4
	_wp = _group_east_1 addWaypoint[[6789.1392, 7066.4268, 0], 0, 4];
	[_group_east_1, 4] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 4] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 4] setWaypointCompletionRadius 0;
	[_group_east_1, 4] setWaypointFormation "NO CHANGE";
	[_group_east_1, 4] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 4] setWaypointStatements ["true", ""];
	[_group_east_1, 4] setWaypointType "MOVE";
	// Waypoint #5
	_wp = _group_east_1 addWaypoint[[6862.7119, 7018.8208, 0], 0, 5];
	[_group_east_1, 5] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 5] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 5] setWaypointCompletionRadius 0;
	[_group_east_1, 5] setWaypointFormation "NO CHANGE";
	[_group_east_1, 5] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 5] setWaypointStatements ["true", ""];
	[_group_east_1, 5] setWaypointType "MOVE";
	// Waypoint #6
	_wp = _group_east_1 addWaypoint[[6989.6611, 6678.3652, 0], 0, 6];
	[_group_east_1, 6] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 6] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 6] setWaypointCompletionRadius 0;
	[_group_east_1, 6] setWaypointFormation "NO CHANGE";
	[_group_east_1, 6] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 6] setWaypointStatements ["true", ""];
	[_group_east_1, 6] setWaypointType "MOVE";
	// Waypoint #7
	_wp = _group_east_1 addWaypoint[[6854.0591, 6482.1729, 0], 0, 7];
	[_group_east_1, 7] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 7] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 7] setWaypointCompletionRadius 0;
	[_group_east_1, 7] setWaypointFormation "NO CHANGE";
	[_group_east_1, 7] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 7] setWaypointStatements ["true", ""];
	[_group_east_1, 7] setWaypointType "MOVE";
	// Waypoint #8
	_wp = _group_east_1 addWaypoint[[6519.3735, 6482.1729, 0], 0, 8];
	[_group_east_1, 8] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 8] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 8] setWaypointCompletionRadius 0;
	[_group_east_1, 8] setWaypointFormation "NO CHANGE";
	[_group_east_1, 8] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 8] setWaypointStatements ["true", ""];
	[_group_east_1, 8] setWaypointType "MOVE";
	// Waypoint #9
	_wp = _group_east_1 addWaypoint[[6075.0508, 6763.4814, 0], 0, 9];
	[_group_east_1, 9] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 9] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 9] setWaypointCompletionRadius 0;
	[_group_east_1, 9] setWaypointFormation "NO CHANGE";
	[_group_east_1, 9] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 9] setWaypointStatements ["true", ""];
	[_group_east_1, 9] setWaypointType "MOVE";
	// Waypoint #10
	_wp = _group_east_1 addWaypoint[[5352.5361, 7322.1709, 0], 0, 10];
	[_group_east_1, 10] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 10] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 10] setWaypointCompletionRadius 0;
	[_group_east_1, 10] setWaypointFormation "NO CHANGE";
	[_group_east_1, 10] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 10] setWaypointStatements ["true", ""];
	[_group_east_1, 10] setWaypointType "MOVE";
	// Waypoint #11
	_wp = _group_east_1 addWaypoint[[5111.6489, 6915.1616, 0], 0, 11];
	[_group_east_1, 11] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 11] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 11] setWaypointCompletionRadius 0;
	[_group_east_1, 11] setWaypointFormation "NO CHANGE";
	[_group_east_1, 11] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 11] setWaypointStatements ["true", ""];
	[_group_east_1, 11] setWaypointType "MOVE";
	// Waypoint #12
	_wp = _group_east_1 addWaypoint[[5021.3848, 6596.8262, 0], 0, 12];
	[_group_east_1, 12] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 12] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 12] setWaypointCompletionRadius 0;
	[_group_east_1, 12] setWaypointFormation "NO CHANGE";
	[_group_east_1, 12] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 12] setWaypointStatements ["true", ""];
	[_group_east_1, 12] setWaypointType "MOVE";
	// Waypoint #13
	_wp = _group_east_1 addWaypoint[[5145.25, 6233.8833, 0], 0, 13];
	[_group_east_1, 13] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 13] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 13] setWaypointCompletionRadius 0;
	[_group_east_1, 13] setWaypointFormation "NO CHANGE";
	[_group_east_1, 13] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 13] setWaypointStatements ["true", ""];
	[_group_east_1, 13] setWaypointType "MOVE";
	// Waypoint #14
	_wp = _group_east_1 addWaypoint[[5919.5811, 5757.3223, 0], 0, 14];
	[_group_east_1, 14] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 14] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 14] setWaypointCompletionRadius 0;
	[_group_east_1, 14] setWaypointFormation "NO CHANGE";
	[_group_east_1, 14] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 14] setWaypointStatements ["true", ""];
	[_group_east_1, 14] setWaypointType "MOVE";
	// Waypoint #15
	_wp = _group_east_1 addWaypoint[[7049.147, 5392.3057, 0], 0, 15];
	[_group_east_1, 15] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 15] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 15] setWaypointCompletionRadius 0;
	[_group_east_1, 15] setWaypointFormation "NO CHANGE";
	[_group_east_1, 15] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 15] setWaypointStatements ["true", ""];
	[_group_east_1, 15] setWaypointType "MOVE";
	// Waypoint #16
	_wp = _group_east_1 addWaypoint[[5936.7739, 5758.1177, 0], 0, 16];
	[_group_east_1, 16] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 16] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 16] setWaypointCompletionRadius 0;
	[_group_east_1, 16] setWaypointFormation "NO CHANGE";
	[_group_east_1, 16] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 16] setWaypointStatements ["true", ""];
	[_group_east_1, 16] setWaypointType "MOVE";
	// Waypoint #17
	_wp = _group_east_1 addWaypoint[[5138.6592, 6229.2593, 0], 0, 17];
	[_group_east_1, 17] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 17] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 17] setWaypointCompletionRadius 0;
	[_group_east_1, 17] setWaypointFormation "NO CHANGE";
	[_group_east_1, 17] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 17] setWaypointStatements ["true", ""];
	[_group_east_1, 17] setWaypointType "MOVE";
	// Waypoint #18
	_wp = _group_east_1 addWaypoint[[4426.124, 6217.3013, 0], 0, 18];
	[_group_east_1, 18] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 18] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 18] setWaypointCompletionRadius 0;
	[_group_east_1, 18] setWaypointFormation "NO CHANGE";
	[_group_east_1, 18] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 18] setWaypointStatements ["true", ""];
	[_group_east_1, 18] setWaypointType "MOVE";
	// Waypoint #19
	_wp = _group_east_1 addWaypoint[[4134.3945, 6413.5225, 0], 0, 19];
	[_group_east_1, 19] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 19] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 19] setWaypointCompletionRadius 0;
	[_group_east_1, 19] setWaypointFormation "NO CHANGE";
	[_group_east_1, 19] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 19] setWaypointStatements ["true", ""];
	[_group_east_1, 19] setWaypointType "MOVE";
	// Waypoint #20
	_wp = _group_east_1 addWaypoint[[4256.5659, 6606.8516, 0], 0, 20];
	[_group_east_1, 20] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 20] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 20] setWaypointCompletionRadius 0;
	[_group_east_1, 20] setWaypointFormation "NO CHANGE";
	[_group_east_1, 20] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 20] setWaypointStatements ["true", ""];
	[_group_east_1, 20] setWaypointType "MOVE";
	// Waypoint #21
	_wp = _group_east_1 addWaypoint[[3808.4377, 7035.6406, 0], 0, 21];
	[_group_east_1, 21] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 21] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 21] setWaypointCompletionRadius 0;
	[_group_east_1, 21] setWaypointFormation "NO CHANGE";
	[_group_east_1, 21] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 21] setWaypointStatements ["true", ""];
	[_group_east_1, 21] setWaypointType "MOVE";
	// Waypoint #22
	_wp = _group_east_1 addWaypoint[[4592.1436, 7138.5249, 0], 0, 22];
	[_group_east_1, 22] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 22] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 22] setWaypointCompletionRadius 0;
	[_group_east_1, 22] setWaypointFormation "NO CHANGE";
	[_group_east_1, 22] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 22] setWaypointStatements ["true", ""];
	[_group_east_1, 22] setWaypointType "MOVE";
	// Waypoint #23
	_wp = _group_east_1 addWaypoint[[5320.3584, 7288.0498, 0], 0, 23];
	[_group_east_1, 23] setWaypointBehaviour "UNCHANGED";
	[_group_east_1, 23] setWaypointCombatMode "NO CHANGE";
	[_group_east_1, 23] setWaypointCompletionRadius 0;
	[_group_east_1, 23] setWaypointFormation "NO CHANGE";
	[_group_east_1, 23] setWaypointSpeed "UNCHANGED";
	[_group_east_1, 23] setWaypointStatements ["true", ""];
	[_group_east_1, 23] setWaypointType "CYCLE";
// End of Group _group_east_1

// Begin of Group _group_east_2
_group_east_2 = createGroup _east;
	// Begin of Unit _group_east_2_unit_1
	if (true) then
	{
		_group_east_2_unit_1 = _group_east_2 createUnit ["O_recon_TL_F", [6801.7515, 7486.9077, 0], [], 0, "CAN_COLLIDE"];
		_group_east_2_unit_1 setUnitAbility 0.5;
		_group_east_2_unit_1 setRank "SERGEANT";
		_group_east_2_unit_1 setVehicleVarName "rtleader1";
		_group_east_2 selectLeader _group_east_2_unit_1;
	};
	// End of Unit _group_east_2_unit_1
	// Begin of Unit _group_east_2_unit_2
	if (true) then
	{
		_group_east_2_unit_2 = _group_east_2 createUnit ["O_recon_M_F", [6806.7515, 7481.9077, 0], [], 0, "CAN_COLLIDE"];
		_group_east_2_unit_2 setUnitAbility 0.44999999;
		_group_east_2_unit_2 setRank "CORPORAL";
	};
	// End of Unit _group_east_2_unit_2
	// Begin of Unit _group_east_2_unit_3
	if (true) then
	{
		_group_east_2_unit_3 = _group_east_2 createUnit ["O_recon_medic_F", [6796.7515, 7481.9077, 0], [], 0, "CAN_COLLIDE"];
		_group_east_2_unit_3 setUnitAbility 0.40000001;
	};
	// End of Unit _group_east_2_unit_3
	// Begin of Unit _group_east_2_unit_4
	if (true) then
	{
		_group_east_2_unit_4 = _group_east_2 createUnit ["O_recon_F", [6811.7515, 7476.9077, 0], [], 0, "CAN_COLLIDE"];
		_group_east_2_unit_4 setUnitAbility 0.40000001;
	};
	// End of Unit _group_east_2_unit_4
	// Waypoints for _group_east_2
	// Waypoint #1
	_wp = _group_east_2 addWaypoint[[6895.3491, 6109.3223, 0], 0, 1];
	[_group_east_2, 1] setWaypointBehaviour "UNCHANGED";
	[_group_east_2, 1] setWaypointCombatMode "NO CHANGE";
	[_group_east_2, 1] setWaypointCompletionRadius 0;
	[_group_east_2, 1] setWaypointFormation "NO CHANGE";
	[_group_east_2, 1] setWaypointSpeed "FULL";
	[_group_east_2, 1] setWaypointStatements ["true", ""];
	[_group_east_2, 1] setWaypointType "MOVE";
	// Waypoint #2
	_wp = _group_east_2 addWaypoint[[4894.5259, 5681.3213, 0], 0, 2];
	[_group_east_2, 2] setWaypointBehaviour "SAFE";
	[_group_east_2, 2] setWaypointCombatMode "NO CHANGE";
	[_group_east_2, 2] setWaypointCompletionRadius 0;
	[_group_east_2, 2] setWaypointFormation "NO CHANGE";
	[_group_east_2, 2] setWaypointSpeed "LIMITED";
	[_group_east_2, 2] setWaypointStatements ["true", ""];
	[_group_east_2, 2] setWaypointType "MOVE";
	// Waypoint #3
	_wp = _group_east_2 addWaypoint[[6906.1763, 5069.8062, 0], 0, 3];
	[_group_east_2, 3] setWaypointBehaviour "UNCHANGED";
	[_group_east_2, 3] setWaypointCombatMode "NO CHANGE";
	[_group_east_2, 3] setWaypointCompletionRadius 0;
	[_group_east_2, 3] setWaypointFormation "NO CHANGE";
	[_group_east_2, 3] setWaypointSpeed "UNCHANGED";
	[_group_east_2, 3] setWaypointStatements ["true", ""];
	[_group_east_2, 3] setWaypointType "MOVE";
	// Waypoint #4
	_wp = _group_east_2 addWaypoint[[5831.7002, 3096.1675, 0], 0, 4];
	[_group_east_2, 4] setWaypointBehaviour "UNCHANGED";
	[_group_east_2, 4] setWaypointCombatMode "NO CHANGE";
	[_group_east_2, 4] setWaypointCompletionRadius 0;
	[_group_east_2, 4] setWaypointFormation "NO CHANGE";
	[_group_east_2, 4] setWaypointSpeed "UNCHANGED";
	[_group_east_2, 4] setWaypointStatements ["true", ""];
	[_group_east_2, 4] setWaypointType "MOVE";
	// Waypoint #5
	_wp = _group_east_2 addWaypoint[[3644.5818, 4646.0513, 0], 0, 5];
	[_group_east_2, 5] setWaypointBehaviour "UNCHANGED";
	[_group_east_2, 5] setWaypointCombatMode "NO CHANGE";
	[_group_east_2, 5] setWaypointCompletionRadius 0;
	[_group_east_2, 5] setWaypointFormation "NO CHANGE";
	[_group_east_2, 5] setWaypointSpeed "UNCHANGED";
	[_group_east_2, 5] setWaypointStatements ["true", ""];
	[_group_east_2, 5] setWaypointType "MOVE";
	// Waypoint #6
	_wp = _group_east_2 addWaypoint[[4742.5532, 5679.0752, 0], 0, 6];
	[_group_east_2, 6] setWaypointBehaviour "UNCHANGED";
	[_group_east_2, 6] setWaypointCombatMode "NO CHANGE";
	[_group_east_2, 6] setWaypointCompletionRadius 0;
	[_group_east_2, 6] setWaypointFormation "NO CHANGE";
	[_group_east_2, 6] setWaypointSpeed "UNCHANGED";
	[_group_east_2, 6] setWaypointStatements ["true", ""];
	[_group_east_2, 6] setWaypointType "CYCLE";
// End of Group _group_east_2

// Begin of Group _group_east_3
_group_east_3 = createGroup _east;
	// Begin of Unit _group_east_3_unit_1
	if (true) then
	{
		_group_east_3_unit_1 = _group_east_3 createUnit ["O_recon_TL_F", [1251.6621, 6777.5649, 0], [], 0, "CAN_COLLIDE"];
		_group_east_3_unit_1 setUnitAbility 0.5;
		_group_east_3_unit_1 setRank "SERGEANT";
		_group_east_3_unit_1 setVehicleVarName "rtleader2";
		_group_east_3 selectLeader _group_east_3_unit_1;
	};
	// End of Unit _group_east_3_unit_1
	// Begin of Unit _group_east_3_unit_2
	if (true) then
	{
		_group_east_3_unit_2 = _group_east_3 createUnit ["O_recon_M_F", [1256.6621, 6772.5649, 0], [], 0, "CAN_COLLIDE"];
		_group_east_3_unit_2 setUnitAbility 0.44999999;
		_group_east_3_unit_2 setRank "CORPORAL";
	};
	// End of Unit _group_east_3_unit_2
	// Begin of Unit _group_east_3_unit_3
	if (true) then
	{
		_group_east_3_unit_3 = _group_east_3 createUnit ["O_recon_medic_F", [1246.6621, 6772.5649, 0], [], 0, "CAN_COLLIDE"];
		_group_east_3_unit_3 setUnitAbility 0.40000001;
	};
	// End of Unit _group_east_3_unit_3
	// Begin of Unit _group_east_3_unit_4
	if (true) then
	{
		_group_east_3_unit_4 = _group_east_3 createUnit ["O_recon_F", [1261.6621, 6767.5649, 0], [], 0, "CAN_COLLIDE"];
		_group_east_3_unit_4 setUnitAbility 0.40000001;
	};
	// End of Unit _group_east_3_unit_4
	// Waypoints for _group_east_3
	// Waypoint #1
	_wp = _group_east_3 addWaypoint[[1610.5359, 4995.1958, 0], 0, 1];
	[_group_east_3, 1] setWaypointBehaviour "SAFE";
	[_group_east_3, 1] setWaypointCombatMode "NO CHANGE";
	[_group_east_3, 1] setWaypointCompletionRadius 0;
	[_group_east_3, 1] setWaypointFormation "NO CHANGE";
	[_group_east_3, 1] setWaypointSpeed "LIMITED";
	[_group_east_3, 1] setWaypointStatements ["true", ""];
	[_group_east_3, 1] setWaypointType "MOVE";
	// Waypoint #2
	_wp = _group_east_3 addWaypoint[[3211.8933, 4562.8901, 0], 0, 2];
	[_group_east_3, 2] setWaypointBehaviour "UNCHANGED";
	[_group_east_3, 2] setWaypointCombatMode "NO CHANGE";
	[_group_east_3, 2] setWaypointCompletionRadius 0;
	[_group_east_3, 2] setWaypointFormation "NO CHANGE";
	[_group_east_3, 2] setWaypointSpeed "UNCHANGED";
	[_group_east_3, 2] setWaypointStatements ["true", ""];
	[_group_east_3, 2] setWaypointType "MOVE";
	// Waypoint #3
	_wp = _group_east_3 addWaypoint[[3875.5742, 5938.9614, 0], 0, 3];
	[_group_east_3, 3] setWaypointBehaviour "UNCHANGED";
	[_group_east_3, 3] setWaypointCombatMode "NO CHANGE";
	[_group_east_3, 3] setWaypointCompletionRadius 0;
	[_group_east_3, 3] setWaypointFormation "NO CHANGE";
	[_group_east_3, 3] setWaypointSpeed "UNCHANGED";
	[_group_east_3, 3] setWaypointStatements ["true", ""];
	[_group_east_3, 3] setWaypointType "MOVE";
	// Waypoint #4
	_wp = _group_east_3 addWaypoint[[2408.1702, 6925.3491, 0], 0, 4];
	[_group_east_3, 4] setWaypointBehaviour "UNCHANGED";
	[_group_east_3, 4] setWaypointCombatMode "NO CHANGE";
	[_group_east_3, 4] setWaypointCompletionRadius 0;
	[_group_east_3, 4] setWaypointFormation "NO CHANGE";
	[_group_east_3, 4] setWaypointSpeed "UNCHANGED";
	[_group_east_3, 4] setWaypointStatements ["true", ""];
	[_group_east_3, 4] setWaypointType "MOVE";
	// Waypoint #5
	_wp = _group_east_3 addWaypoint[[1354.8058, 5451.8569, 0], 0, 5];
	[_group_east_3, 5] setWaypointBehaviour "UNCHANGED";
	[_group_east_3, 5] setWaypointCombatMode "NO CHANGE";
	[_group_east_3, 5] setWaypointCompletionRadius 0;
	[_group_east_3, 5] setWaypointFormation "NO CHANGE";
	[_group_east_3, 5] setWaypointSpeed "UNCHANGED";
	[_group_east_3, 5] setWaypointStatements ["true", ""];
	[_group_east_3, 5] setWaypointType "CYCLE";
// End of Group _group_east_3
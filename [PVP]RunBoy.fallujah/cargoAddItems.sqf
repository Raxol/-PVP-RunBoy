/*
	File: cargoAddItems.sqf
	Author: [TCL] extrem-gx
	
	Description:
	Adds items defined in Array by classname to the cargo.
*/
private ["_box","_random"];

_box = _this select 0;
_random = floor random(100);

// item = [Item ClassName,amount,probability of spawning];
_items = 
[
	["ItemMap",1,80],
	["Binocular",1,60],
	["FirstAidKit",3,60], 
	["30Rnd_9x21_Mag",1,45],
	["arifle_TRG21_GL_F",1,20],
	["30Rnd_556x45_Stanag",1,25],
	["1Rnd_Smoke_Grenade_shell",1,55],
	["1Rnd_SmokeRed_Grenade_shell",1,55],
	["1Rnd_SmokeGreen_Grenade_shell",1,55],
	["1Rnd_SmokeYellow_Grenade_shell",1,55],
	["1Rnd_SmokePurple_Grenade_shell",1,55],
	["1Rnd_SmokeOrange_Grenade_shell",1,55],
	["U_I_GhillieSuit",1,80],
	["U_IG_Guerilla2_1",1,95],
	["acc_flashlight",1,95],
	["U_IG_Guerilla3_1",1,95],
	["V_BandollierB_khk",1,95],
	["V_TacVest_oli",1,70],
	["H_HelmetB_camo",1,90],
	["H_MilCap_dgtl",1,95],
	["H_Watchcap_blk",1,95],
	["SMG_02_F",1,40],
	["SmokeShellPurple",1,55],
	["SmokeShellBlue",1,55],
	["SmokeShellOrange",1,55],
	["Chemlight_green",1,85],
	["Chemlight_red",1,85],
	["Chemlight_yellow",1,85],
	["UGL_FlareGreen_F",1,85],
	["UGL_FlareRed_F",1,85],
	["UGL_FlareYellow_F",1,85],
	["UGL_FlareCIR_F",1,85],
	["Chemlight_yellow",1,85],
	["NVGoggles_INDEP",1,20],
	["1Rnd_SmokeBlue_Grenade_shell",1,55]
];

if ( !isNil "_box" ) then 
{
	clearItemCargoGlobal _box; 
	clearWeaponCargoGlobal _box; 
	clearMagazineCargoGlobal _box; 
	clearBackpackCargoGlobal _box;
	
	{
		if ( _random < (_x select 2) ) then
		{
			_box addItemCargoGlobal [_x select 0,_x select 1];
		};
	} forEach _items;
	
	//AGM ITEMS IF AGM MOD IS PRESENT
	_currentVersion = getText (configFile >> "CfgPatches" >> "AGM_Core" >> "version");
	
	if ( !isNil {_currentVersion} ) then
	{
		_agmItems =
		[
			["AGM_M84",1,30],
			["AGM_EarBuds",1,95],
			["AGM_MapTools",1,80],
			["AGM_Bandage",5,95],
			["AGM_Morphine",2,60],
			["AGM_HandFlare_White",1,85],
			["AGM_HandFlare_Yellow",1,85],
			["AGM_HandFlare_Green",1,85],
			["AGM_NVG_Wide",1,20]
		];
		
		{
			if ( _random < (_x select 2) ) then
			{
				_box addItemCargoGlobal [_x select 0,_x select 1];
			};
		} forEach _agmItems;
	};
	
	// ACRE Radio
	_currentVersion = getText (configFile >> "CfgPatches" >> "acre_sys_core" >> "version");
	
	if ( !isNil {_currentVersion} ) then
	{
		_prob = 5;
		
		if ( _random < _prob ) then
		{
			_box addItemCargoGlobal ["ACRE_PRC148",1];
		};
	};
};



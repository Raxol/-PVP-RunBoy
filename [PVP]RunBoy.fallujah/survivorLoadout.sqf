_unit = _this select 0;

comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add containers";
_unit forceAddUniform "U_BG_Guerilla1_1";

comment "Add weapons";

comment "Add items";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";


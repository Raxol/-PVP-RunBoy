comment "Exported from Arsenal by Max";

comment "Remove existing items";
removeAllWeapons (_this select 0);
removeAllItems (_this select 0);
removeAllAssignedItems (_this select 0);
removeUniform (_this select 0);
removeVest (_this select 0);
removeBackpack (_this select 0);
removeHeadgear (_this select 0);
removeGoggles (_this select 0);

comment "Add containers";
(_this select 0) forceAddUniform "U_BG_Guerilla1_1";

comment "Add weapons";

comment "Add items";
(_this select 0) linkItem "ItemCompass";
(_this select 0) linkItem "ItemWatch";


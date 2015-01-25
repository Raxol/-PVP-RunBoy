_handle = createDialog "DialogUAVMenu";
//systemChat "init DialogUAVMenu...";
disableSerialization;
_display = findDisplay 1337;
_listBox = _display displayCtrl 1500;

lbClear _listBox;

{
	_index = _listBox lbAdd _x;
	_selectedItem = _listBox lbText _index;
	_selectedItemObj = missionNamespace getVariable _selectedItem;
	_typeOfUAV = typeOf _selectedItemObj;
	_selectedItemIconPath = getText(configfile >> "CfgVehicles" >> _typeOfUAV >> "icon");
	
	_listBox lbSetPicture [_index, _selectedItemIconPath];
	
	_listBox lbSetPictureColor [_index, [1, 1, 1, 1]];
}forEach aUAV;

lbSort [_listBox, "ASC"];

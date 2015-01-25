private ["_uav"];

if (isServer) then
{
	_uav = _this select 0;

	_arrayLength = count aUAV;
	aUAV set [_arrayLength, (str _uav)];
	publicVariable "aUAV";
};

if ( isUAVCamActive ) then							// check if UAVCam is active
{
	_index = currentPiPEffectIndex;					// Current PiP Effect as int. 

	// There are 8 different PiP effects but only 0,1,2 and 7 are working as the wiki says, 
	// therefore some weird ifs to cycle through each PiP effect.
	if ( _index == 2 || _index == 7) then
	{
		if ( _index == 2) then 
		{ 
			_index = 7;
		}
		else
		{
			_index = 0;
		};
	}
	else
	{
		_index = _index + 1;
	};
	currentPiPEffectIndex = _index;					// Update the global variable for the next use
	"rendertarget1" setPiPEffect [_index];			// Update the PiP Effekt with the next index
};
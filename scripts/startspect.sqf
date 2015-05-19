#include "script_component.hpp"
//(_this select 0) setPos [-1000, -1000, 1000];
[true] call acre_api_fnc_setSpectator;
_victim = _this select 0;
_killer = _this select 1;
_killer = _victim getvariable ["st_killed_by",_killer];

_pos = [(getPosATL _victim select 0)-(vectorDir _victim select 0)*3,(getPosATL _victim select 1)-(vectorDir _victim select 1)*3,(getPosATL _victim select 2)+1];
titleCut ["","BLACK IN",1];



_deadcam = "Camera" camCreate (position _victim);
_deadcam cameraEffect ["internal","back"];
showCinemaBorder true;
_deadcam camPrepareTarget _victim;
_deadcam camPreparePos _pos;
_deadcam camPrepareFOV 0.7;
_deadcam camCommitPrepared 0;


_quote = GVAR(killcam_quotes) select (floor (random (count GVAR(killcam_quotes))));
_handle = [_quote select 0, _quote select 1, 15] spawn FUNC(quote);

waitUntil {camCommitted _deadcam};

if ((_killer == player) or (!alive _killer) or (isNull _killer)) then {
	_deadcam camPrepareTarget _victim;
	_deadcam camsetrelpos [-3, 20, 10];
	_deadcam camPrepareFOV 0.474;
	_deadcam camCommitPrepared 20;

} else {
	sleep 1;
	_deadcam camCommand "inertia on";
	_deadcam camPrepareTarget (vehicle _killer);
	_deadcam camsetrelpos [-3, 20, 10];
	_deadcam camPrepareFOV 1;
	_deadcam camCommitPrepared 10;

};
0 fadesound 1;
0 fademusic 1;
BIS_fnc_feedback_allowPP = false;
(["HealthPP_black"] call bis_fnc_rscLayer) cutText ["","BLACK IN",0];

sleep 6;
sleep 5;
titleCut["", "BLACK OUT", 2]; // death simulating the lights going out.
sleep 3; // holding back the startLoadingScreen spectator screen while viewing the death simulation (1 second longer than the Black Out Fade)
[player,_killer,false] spawn stmf_fnc_startSpectator;
sleep 2;
showCinemaBorder false;
player cameraEffect ["terminate","back"];
camDestroy _deadcam;
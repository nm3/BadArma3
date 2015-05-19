#include "script_component.hpp"
if !(GVAR(SPECTATINGON)) exitwith {};
_typeOfUnit = (_this select 1) getVariable ["f_var_assignGear", "r"];
[_typeOfUnit,(_this select 0)] call bg_fnc_initloadouts;
systemchat "Respawning...";

missionnamespace setvariable ["BIS_fnc_feedback_allowDeathScreen",true]; // Make sure this shit is off
BIS_fnc_feedback_allowPP = true;
st_spectator_exit_spectator = true;

[false] call acre_api_fnc_setSpectator;

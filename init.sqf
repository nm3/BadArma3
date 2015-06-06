// ====================================================================================

// F3 - Disable Saving and Auto Saving
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

enableSaving [false, false];

// ====================================================================================

// F3 - Mute Orders and Reports
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

enableSentences false;

// ====================================================================================

// NOTE: Remember to turn this false before publishing your mission to the Badger server.

//enableTeamswitch false;
enableTeamswitch true;

// ====================================================================================

// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_briefing = [] execVM "briefing.sqf";
setGroupIconsVisible [true,false];

// ====================================================================================

// F3 - F3 Common Local Variables
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// WARNING: DO NOT DISABLE THIS COMPONENT
if(isServer) then {
	f_script_setLocalVars = [] execVM "f\common\f_setLocalVars.sqf";
};

// ====================================================================================

// uncomment if gameon script is used
//goscript = [startB, startO, objnull, objnull, []] execVM "gameon.sqf";

// ====================================================================================
/*
// event handler for wave respawn upon sector capture
0 = 0 spawn {
	"bg_objective_handler" addPublicVariableEventHandler {
		nul = _this spawn bg_fnc_HandlemoduleSector
	};
};
// to use, put this into expression field of sector
// if (isServer) then {bg_objective_handler = (_this select 1); publicvariable "bg_objective_handler";};
*/
// ====================================================================================
/*
// Checks if a side is dead. Useful for multiplayer

[] spawn {
	while {!(({side _x == west}count allunits == 0)or({side _x == east}count allunits == 0))} do {
		sleep 5;
	};

	if (({side _x == west}count allunits == 0)and({side _x == east}count allunits == 0)) then {
		["LOSER",false] call BIS_fnc_endMission;
	};
	if ({side _x == west}count allunits == 0) then {
		["END2",(side player == east)] call BIS_fnc_endMission;
	} else {
		["END1",(side player == west)] call BIS_fnc_endMission;
	};
};
*/
// ====================================================================================

// F3 - Loadout Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\briefing\f_loadoutNotes.sqf";

// ====================================================================================

// F3 - Radio Systems Support
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\radios\radio_init.sqf";

// ====================================================================================

// ====================================================================================

// Group Markers
// NOTE: Remember to disable High Command!

bg_players = playableunits + switchableunits;
{
if (side _x == side player) then {
if !(leader _x in bg_players) exitwith {};
_iconID = _x addGroupIcon  ["b_inf",[0,0]];
_iconSize = _x addGroupIcon  ["group_0",[0,0]];
_x setGroupIconParams [[(profilenamespace getvariable ['Map_BLUFOR_R',0]),(profilenamespace getvariable ['Map_BLUFOR_G',1]),(profilenamespace getvariable ['Map_BLUFOR_B',1]),(profilenamespace getvariable ['Map_BLUFOR_A',0.8])],groupID(_x),1,true];
};
}forEach allgroups;

// ====================================================================================

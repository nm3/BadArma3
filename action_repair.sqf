//    Parameters array passed to the script upon activation in _this variable is: [target, caller, ID, arguments]
//    target (_this select 0): Object - the object which the action is assigned to
//    caller (_this select 1): Object - the unit that activated the action
//    ID (_this select 2): Number - ID of the activated action (same as ID returned by addAction)
//    arguments (_this select 3): Anything - arguments given to the script if you are using the extended syntax

_target = (_this select 0);
_caller = (_this select 1);

if (_caller in _target)
then {
	hint "You must be outside the vehicle in order to repair it!";
} else {
	_caller playAction "medicOther";
	_target setDamage 0;
}
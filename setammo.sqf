if (isServer) then {

	// INTERPRET PASSED VARIABLES
	// The following inrerprets formats what has been passed to this script element

	_typeofUnit = toLower (_this select 0);		// Tidy input for SWITCH/CASE statements, expecting something like : start
	_unit = _this select 1;						// expecting name of unit; originally passed by using 'this' in unit init

	// ====================================================================================

	// PREPARE UNIT FOR GEAR ADDITION
	// The following code removes all existing weapons and backpacks

	clearWeaponCargoGlobal _unit;
	clearMagazineCargoGlobal _unit;
	clearItemCargoGlobal _unit;

	// ====================================================================================

	// DEFINE UNIT TYPE LOADOUTS
	// The following blocks of code define loadouts for each type of unit (the unit type
	// is passed to the script in the first variable)

	switch (_typeofUnit) do
	{

	// ====================================================================================

	// LOADOUT: STARTING GEAR
		case "start":
		{
			// PISTOLS
			_unit addWeaponCargoGlobal ["hgun_ACPC2_F", 1];
			_unit addMagazineCargoGlobal ["9Rnd_45ACP_Mag", 4];

			// SHOTGUNS

			// RIFLES

			// SMGs

			// DMRs

			// MGs

			// LAUNCHERS

			// SPECIAL
			_unit addMagazineCargoGlobal ["HandGrenade", 5];
			_unit addMagazineCargoGlobal ["MiniGrenade", 5];
			_unit addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 3];
			_unit addMagazineCargoGlobal ["SmokeShell", 5];
			_unit addMagazineCargoGlobal ["SmokeShellYellow", 1];
			_unit addMagazineCargoGlobal ["SmokeShellGreen", 1];
			_unit addMagazineCargoGlobal ["SmokeShellRed", 1];
			_unit addMagazineCargoGlobal ["SmokeShellPurple", 1];
			_unit addMagazineCargoGlobal ["SmokeShellOrange", 1];
			_unit addMagazineCargoGlobal ["SmokeShellBlue", 1];
			_unit addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell", 3];
		//	_unit addMagazineCargoGlobal ["1Rnd_SmokeYellow_Grenade_shell", 1];
		//	_unit addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell", 1];
		//	_unit addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell", 1];
		//	_unit addMagazineCargoGlobal ["1Rnd_SmokePurple_Grenade_shell", 1];
		//	_unit addMagazineCargoGlobal ["1Rnd_SmokeOrange_Grenade_shell", 1];
		//	_unit addMagazineCargoGlobal ["1Rnd_SmokeBlue_Grenade_shell", 1];


			// ATTACHMENTS
			_unit addItemcargoglobal ["muzzle_snds_acp", 1];

			// ITEMS
			_unit addItemCargoGlobal ["ACRE_PRC148", 1];
			_unit addItemCargoGlobal ["ACRE_PRC343", 8];
			_unit addItemCargoGlobal ["Binocular", 1];
			_unit addItemCargoGlobal ["AGM_Bandage", 50];
			_unit addItemCargoGlobal ["AGM_Morphine", 25];
			_unit addItemCargoGlobal ["AGM_Epipen", 10];
			_unit addItemCargoGlobal ["AGM_Bloodbag", 2];
			_unit addBackpackCargoGlobal ["B_AssaultPack_blk", 2];
		};

	// ====================================================================================

	// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
	};
}
# BadArma3
Fursonal Mission Template for Badgers playing Arma 3

## What does this template contain?

- **Briefing scripts** Handles briefing for individual factions.
- **Loadout scripts** Handles gear assignment to individual unit roles for each faction.
- **Radio Support scripts** Handles radio assignment.
- **GameOn multiplayer ready script** Prevents BLUFOR/OPFOR from moving past spawn for multiplayer missions.
- **Group markers script** Shows group indicators on the map.
- **Wave respawn scripts** Adds a game mechanic that respawns all dead units of a side whenever that side captures a sector.
- **Plus, more!** Various misc. scripts.

## Setup
There are a few files that you need to be concerned with:

- **description.ext**
https://community.bistudio.com/wiki/description.ext

- **init.sqf**
Read through the file for instructions.

- **Briefing files**
http://ferstaberinde.com/f3/en//index.php?title=Briefing_Template

- **Loadout files**
http://ferstaberinde.com/f3/en//index.php?title=F3_Folk_ARPS_Assign_Gear_Script

- **Radio Support System files**
If you need to customize radio assignment...  
http://ferstaberinde.com/f3/en//index.php?title=Radio_Systems_Support

## Scripts
There are some misc. scripts that I placed in this repo:

- **setammo.sqf**
Customizes ammo loadout for crates. This should be modified with the loadout that you want in there.

- **setbpos.sqf**
Places unit inside building (by ID) at the specified position number.  

- **action_rescue.sqf**
Basic addaction script to rescue a captive unit with its movement AI disabled and add it to your group.

- **action_repair.sqf**
Basic addaction script to magically fully repair a vehicle. Can be handy during fast-paced vehicle-oriented multiplayer missions.

## Enabling Wave Respawn
By default, this function is disabled as not every mission is going to use this system. To enable it...  

**1) Modify description.ext to uncomment**  
respawn = "BASE";  
respawnDelay = 1e10;  
respawnTemplates[] = {"Spectator_Respawn"};  
class HandlemoduleSector {file = "scripts\fn_objective_handler.sqf";};  

**2) Modify init.sqf to uncomment**  
0 = 0 spawn {  
	"bg_objective_handler" addPublicVariableEventHandler {  
		nul = _this spawn bg_fnc_HandlemoduleSector  
	};  
};  

**3) In the editor, insert this expression into each sector**  
if (isServer) then {bg_objective_handler = (_this select 1); publicvariable "bg_objective_handler";};  

##Credits
- **F3** For providing the foundation.
- **Kerc Kasha** For his customizations.

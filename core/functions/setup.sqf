
	params ["_unit","_UnitID","_faction","_loadout","_curator","_marker"];
	
	[_unit,_faction,_loadout] call tb3_fLoadout;
	
	_unit setGroupID [_UnitID];
	
	
	
	
	switch (side _unit) do {
		case WEST : {[_curator, _marker] call H_fnc_setUpCuratorWest};
		case EAST : {[_curator, _marker] call H_fnc_setUpCuratorEast};
		case INDEPENDENT : {[_curator, _marker] call H_fnc_setUpCuratorInd};
	};
_EH = player addEventHandler ["killed", {
	params ["_unit", "_killer", "_instigator", "_useEffects"];
	[_this select 0] call H_fnc_savegear;
}];
	
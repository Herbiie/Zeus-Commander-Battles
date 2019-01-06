params ["_curator", "_setup"];
_curator addEventHandler [
	"CuratorObjectRegistered",
	{
		_classes = _this select 1;
		_costs = [];
		{
			_units = ["B_Soldier_F","B_Soldier_GL_F","B_soldier_AR_F","B_Soldier_SL_F","ModuleRemoteControl_F","B_soldier_LAT_F","B_medic_F","B_Soldier_TL_F","B_soldier_M_F","B_Soldier_A_F","ace_zeus_moduleSuppressiveFire","ace_zeus_moduleDefendArea","ace_zeus_modulePatrolArea","ace_zeus_moduleSearchArea","ace_zeus_moduleSearchNearby"];
			_cost = if (_x in _units) then {
					switch (_x) do {
						case "B_Soldier_F" : {[true,0.02]};
						case "B_Soldier_GL_F" : {[true,0.05]};
						case "B_soldier_AR_F" : {[true,0.05]};
						case "B_soldier_LAT_F" : {[true,0.03]};
						case "B_medic_F" : {[true,0.03]};
						case "B_Soldier_TL_F" : {[true,0.03]};
						case "B_Soldier_A_F" : {[true,0.03]};
						case "B_soldier_M_F" : {[true,0.05]};
						case "B_Soldier_SL_F" : {[true,0.1]};
						case "ModuleRemoteControl_F" :{[true,0]}; 
						case "ace_zeus_moduleSuppressiveFire" :{[true,0]}; 
						case "ace_zeus_moduleDefendArea" :{[true,0]}; 
						case "ace_zeus_moduleSearchArea" :{[true,0]}; 
						case "ace_zeus_moduleSearchNearby" :{[true,0]}; 
						case "ace_zeus_modulePatrolArea" :{[true,0]}; 
					};
				} else {
					[false,0]				
				};
			_costs = _costs + [_cost];
		} forEach _classes; // Go through all classes and assign cost for each of them
		_costs
	}
];
_marker = createMarker [format ["%1Radius",_setup], getMarkerPos _setup];
_marker  setMarkerShape "ELLIPSE";
_marker  setMarkerSize [50, 50];
_marker  setMarkerBrush "Border";
_marker  setMarkerColor "colorBLUFOR";
_curator addCuratorPoints 1;
_curator addCuratorEditingArea [0,getMarkerPos _setup,50];
_curator setCuratorEditingAreaType true;
_curator addCuratorCameraArea [0,getMarkerPos _setup,50];
_curator setCuratorCameraAreaCeiling 50;
[west,getMarkerPos _setup] call BIS_fnc_addRespawnPosition;
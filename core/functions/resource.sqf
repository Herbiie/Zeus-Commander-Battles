params ["_marker"];


private _resMarker = createMarker [format ["%1Marker", _marker], getMarkerPos _marker];
_resMarker  setMarkerShape "ICON";
_resMarker setMarkerType "mil_triangle";
_resMarker setMarkerColor "colorBlack";

private _resRadius = createMarker[format ["%1Radius", _marker], getMarkerPos _marker];
_resRadius  setMarkerShape "ELLIPSE";
_resRadius  setMarkerSize [50, 50];
_resRadius  setMarkerBrush "Border";
_resRadius  setMarkerColor "colorBlack";
/*
private _pos = [getMarkerPos _marker, 0, 10, 2, 0, 20, 0] call BIS_fnc_findSafePos;
private _objectsArray = [
	["Land_Ammobox_rounds_F",[-0.666992,-1.17139,-9.34601e-005],311.214,1,0,[0.0131332,-1.38138],"","",true,false], 
	["Land_Ammobox_rounds_F",[-1.0498,-1.08838,-9.72748e-005],311.214,1,0,[0.0130535,-1.38149],"","",true,false], 
	["Land_Pallet_MilBoxes_F",[1.6958,-0.384277,0.0059433],0,1,0,[1.86141,-2.29176],"","",true,false], 
	["Land_PaperBox_open_full_F",[-0.842285,-2.17725,6.10352e-005],101.881,1,0,[0.634702,1.15789],"","",true,false]
];
[getMarkerPos _marker, random 360, _objectsArray, 0] call BIS_fnc_objectsMapper;
*/

while {true} do {
	private _blueUnits = {side _x == west && (_x distance getMarkerPos _marker < 50)} count allUnits;
	private _redUnits = {side _x == east && (_x distance getMarkerPos _marker < 50)} count allUnits;
	private _greenUnits = {side _x == independent && (_x distance getMarkerPos _marker < 50)} count allUnits;
	if ((_blueUnits > _redUnits) && (_blueUnits > _greenUnits)) then {
		_resMarker setMarkerColor "colorBLUFOR";
		_resRadius  setMarkerColor "colorBLUFOR";
		{
			if (side (getAssignedCuratorUnit  _x) == west) then {
				_x addCuratorPoints 0.003/count H_resources;
			};
		} forEach allCurators;
	};
	if ((_redUnits > _blueUnits) && (_redUnits > _greenUnits)) then {
		_resMarker setMarkerColor "colorOPFOR";
		_resRadius  setMarkerColor "colorOPFOR";
		{
			if (side (getAssignedCuratorUnit  _x) == east) then {
				_x addCuratorPoints 0.003/count H_resources;
			};
		} forEach allCurators;
	};
	if ((_greenUnits > _redUnits) && (_greenUnits > _blueUnits)) then {
		_resMarker setMarkerColor "colorIndependent";
		_resRadius  setMarkerColor "colorIndependent";
		{
			if (side (getAssignedCuratorUnit  _x) == independent) then {
				_x addCuratorPoints 0.003/count H_resources;
			};
		} forEach allCurators;
	};
	if ((_greenUnits == 0) && (_blueUnits == 0) && (_redUnits == 0)) then {
		_resMarker setMarkerColor "colorBlack";
		_resRadius  setMarkerColor "colorBlack";	
	};
	sleep 1;
};
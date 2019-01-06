params ["_marker"];

private _objNo = count H_objectives;
private _value = round (10/_objNo);


private _objMarker = createMarker [format ["%1Marker", _marker], getMarkerPos _marker];
_objMarker  setMarkerShape "ICON";
_objMarker setMarkerType "mil_objective";
_objMarker setMarkerColor "colorBlack";

private _objRadius = createMarker[format ["%1Radius", _marker], getMarkerPos _marker];
_objRadius  setMarkerShape "ELLIPSE";
_objRadius  setMarkerSize [150, 150];
_objRadius  setMarkerBrush "Border";
_objRadius  setMarkerColor "colorBlack";

while {true} do {
	private _blueUnits = {side _x == west && (_x distance getMarkerPos _marker < 150)} count allUnits;
	private _redUnits = {side _x == east && (_x distance getMarkerPos _marker < 150)} count allUnits;
	private _greenUnits = {side _x == independent && (_x distance getMarkerPos _marker < 150)} count allUnits;
	if ((_blueUnits > _redUnits) && (_blueUnits > _greenUnits)) then {
		_objMarker setMarkerColor "colorBLUFOR";
		_objRadius  setMarkerColor "colorBLUFOR";
		H_bluePoints = H_bluePoints + _value;
		publicVariable "H_bluePoints";
	};
	if ((_redUnits > _blueUnits) && (_redUnits > _greenUnits)) then {
		_objMarker setMarkerColor "colorOPFOR";
		_objRadius  setMarkerColor "colorOPFOR";
		H_redPoints = H_redPoints + _value;
		publicVariable "H_redPoints";
	};
	if ((_greenUnits > _redUnits) && (_greenUnits > _blueUnits)) then {
		_objMarker setMarkerColor "colorIndependent";
		_objRadius  setMarkerColor "colorIndependent";
		H_greenPoints = H_greenPoints + _value;
		publicVariable "H_greenPoints";
	};
	if ((_greenUnits == 0) && (_blueUnits == 0) && (_redUnits == 0)) then {
		_objMarker setMarkerColor "colorBlack";
		_objRadius  setMarkerColor "colorBlack";	
	};
	sleep 1;
};
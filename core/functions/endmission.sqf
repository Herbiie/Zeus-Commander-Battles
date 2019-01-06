private _pointsArray = [H_bluePoints, H_redPoints, H_greenPoints];
_pointsArray sort false;
if ((H_bluePoints > H_redpoints) && (H_bluepoints > H_greenpoints)) then {
	switch (side player) do {
		case WEST : { 
			private _pointsDifference = (_pointsArray select 1)/(_pointsArray select 0);
			if (_pointsDifference >= 0.8) then {
				["minorv",true] call BIS_fnc_endMission;
			};
			if ((_pointsDifference < 0.8) && (_pointsDifference > 0.2)) then {
				["victory",true] call BIS_fnc_endMission;
			};
			if (_pointsDifference <= 0.2) then {
				["majorv",true] call BIS_fnc_endMission;
			};
		};
		case EAST : {
			private _pointsDifference = H_redPoints/H_bluepoints;
			if (_pointsDifference >= 0.8) then {
				["minord",true] call BIS_fnc_endMission;
			};
			if ((_pointsDifference < 0.8) && (_pointsDifference > 0.2)) then {
				["defeat",true] call BIS_fnc_endMission;
			};
			if (_pointsDifference <= 0.2) then {
				["majord",true] call BIS_fnc_endMission;
			};
		};
		case INDEPENDENT : {
			private _pointsDifference = H_greenPoints/H_bluepoints;
			if (_pointsDifference >= 0.8) then {
				["minord",true] call BIS_fnc_endMission;
			};
			if ((_pointsDifference < 0.8) && (_pointsDifference > 0.2)) then {
				["defeat",true] call BIS_fnc_endMission;
			};
			if (_pointsDifference <= 0.2) then {
				["majord",true] call BIS_fnc_endMission;
			};};
	};
};
if ((H_redPoints > H_bluepoints) && (H_redpoints > H_greenpoints)) then {
	switch (side player) do {
		case WEST : { 
			private _pointsDifference = H_bluePoints/H_redpoints;
			if (_pointsDifference >= 0.8) then {
				["minord",true] call BIS_fnc_endMission;
			};
			if ((_pointsDifference < 0.8) && (_pointsDifference > 0.2)) then {
				["defeat",true] call BIS_fnc_endMission;
			};
			if (_pointsDifference <= 0.2) then {
				["majord",true] call BIS_fnc_endMission;
			};
		};
		case EAST : {
			private _pointsDifference = (_pointsArray select 1)/(_pointsArray select 0);
			if (_pointsDifference >= 0.8) then {
				["minorv",true] call BIS_fnc_endMission;
			};
			if ((_pointsDifference < 0.8) && (_pointsDifference > 0.2)) then {
				["victory",true] call BIS_fnc_endMission;
			};
			if (_pointsDifference <= 0.2) then {
				["majorv",true] call BIS_fnc_endMission;
			};
		};
		case INDEPENDENT : {
			private _pointsDifference = H_greenPoints/H_redpoints;
			if (_pointsDifference >= 0.8) then {
				["minord",true] call BIS_fnc_endMission;
			};
			if ((_pointsDifference < 0.8) && (_pointsDifference > 0.2)) then {
				["defeat",true] call BIS_fnc_endMission;
			};
			if (_pointsDifference <= 0.2) then {
				["majord",true] call BIS_fnc_endMission;
			};};
	};
};
if ((H_greenPoints > H_redpoints) && (H_greenpoints > H_bluepoints)) then {
	switch (side player) do {
		case WEST : { 
			private _pointsDifference = H_bluePoints/H_greenpoints;
			if (_pointsDifference >= 0.8) then {
				["minord",true] call BIS_fnc_endMission;
			};
			if ((_pointsDifference < 0.8) && (_pointsDifference > 0.2)) then {
				["defeat",true] call BIS_fnc_endMission;
			};
			if (_pointsDifference <= 0.2) then {
				["majord",true] call BIS_fnc_endMission;
			};
		};
		case EAST : {
			private _pointsDifference = H_redPoints/H_greenpoints;
			if (_pointsDifference >= 0.8) then {
				["minord",true] call BIS_fnc_endMission;
			};
			if ((_pointsDifference < 0.8) && (_pointsDifference > 0.2)) then {
				["defeat",true] call BIS_fnc_endMission;
			};
			if (_pointsDifference <= 0.2) then {
				["majord",true] call BIS_fnc_endMission;
			};
		};
		case INDEPENDENT : {
			private _pointsDifference = (_pointsArray select 1)/(_pointsArray select 0);
			if (_pointsDifference >= 0.8) then {
				["minorv",true] call BIS_fnc_endMission;
			};
			if ((_pointsDifference < 0.8) && (_pointsDifference > 0.2)) then {
				["victory",true] call BIS_fnc_endMission;
			};
			if (_pointsDifference <= 0.2) then {
				["majorv",true] call BIS_fnc_endMission;
			};};
	};
};
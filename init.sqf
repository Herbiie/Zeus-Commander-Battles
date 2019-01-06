
if (isServer) then {
	H_bluePoints = 0;
	publicVariable "H_bluePoints";
	H_redPoints = 0;
	publicVariable "H_redPoints";
	H_greenPoints = 0;
	publicVariable "H_greenPoints";
	H_objectives = ["obj1", "obj2", "obj3"];
	H_resources = ["res1","res2","res3","res4","res5","res6","res7","res8","res9","res10"];
	{
		[_x] spawn H_fnc_objective;
	} forEach H_objectives;
	{
		[_x] spawn H_fnc_resource;
	} forEach H_resources;
	
	[] spawn {

			START_TIME = diag_tickTime;
			while {true} do
			{
				ELAPSED_TIME = diag_tickTime - START_TIME;
				publicVariable "ELAPSED_TIME";
				sleep 1;
			}; 
}; 
};

[] spawn {
	waitUntil {ELAPSED_TIME >= (("Timelimit" call BIS_fnc_getParamValue)*60)};
	[] call H_fnc_endMission;
};
[] spawn {
	waitUntil {(H_bluePoints >= "PointLimit" call BIS_fnc_getParamValue) OR (H_redPoints == "PointLimit" call BIS_fnc_getParamValue) or (H_greenPoints == "PointLimit" call BIS_fnc_getParamValue)};
	[] call H_fnc_endMission;
};

[getAssignedCuratorLogic player ] spawn H_fnc_displayPoints;
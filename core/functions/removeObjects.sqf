while {true} do {
	{
		if (_x != player) then {
		private _curator = getAssignedCuratorLogic _x; 
			_curator removeCuratorEditableObjects [curatorEditableObjects _curator, true];
		};
		
	} forEach allplayers;
sleep 0.1
};
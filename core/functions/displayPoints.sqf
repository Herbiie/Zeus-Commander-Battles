params ["_curator"];
_timeLimit =  "Timelimit" call BIS_fnc_getParamValue;
if (_timeLimit == -1) then {
	while {true} do {
		_points = curatorPoints _curator;
		_displayPoints = round (_points*100);
		_side = side player;
		if (_displayPoints >= 60) then {
			switch (_side) do {
				case WEST : {
				[[format ["<t align='center' shadow='1'><br/><br/><br/><br/><br/><t color='#00ff00'>CE: %1%3</t> | <t color='#003060'>Score: %2</t></t>", _displayPoints, H_bluePoints, "%"],0,1,0]] spawn BIS_fnc_EXP_camp_SITREP
				};
				case EAST : {
				[[format ["<t align='center' shadow='1'><br/><br/><br/><br/><br/><t color='#00ff00'>CE: %1%3</t> | <t color='#500000'>Score: %2</t></t>", _displayPoints, H_redPoints, "%"],0,1,0]] spawn BIS_fnc_EXP_camp_SITREP
				};
				case IDEPENDENT : {
				[[format ["<t align='center' shadow='1'><br/><br/><br/><br/><br/><br/><t color='#00ff00'>CE: %1%3</t> | <t color='#005000'>Score: %2</t></t>", _displayPoints, H_greenPoints, "%"],0,1,0]] spawn BIS_fnc_EXP_camp_SITREP
				};
		};
		};
		if (_displayPoints >= 30 && _displayPoints < 60) then {
				case WEST : {
				[[format ["<t align='center' shadow='1'><br/><br/><br/><br/><br/><t color='#FFFF00'>CE: %1%3</t> | <t color='#003060'>Score: %2</t></t>", _displayPoints, H_bluePoints, "%"],0,1,0]] spawn BIS_fnc_EXP_camp_SITREP
				};
				case EAST : {
				[[format ["<t align='center' shadow='1'><br/><br/><br/><br/><br/><t color='#FFFF00'>CE: %1%3</t> | <t color='#500000'>Score: %2</t></t>", _displayPoints, H_redPoints, "%"],0,1,0]] spawn BIS_fnc_EXP_camp_SITREP
				};
				case IDEPENDENT : {
				[[format ["<t align='center' shadow='1'><br/><br/><br/><br/><br/><br/><t color='#FFFF00'>CE: %1%3</t> | <t color='#005000'>Score: %2</t></t>", _displayPoints, H_greenPoints, "%"],0,1,0]] spawn BIS_fnc_EXP_camp_SITREP
				};
		};
		
		if (_displayPoints < 30) then {
				case WEST : {
				[[format ["<t align='center' shadow='1'><br/><br/><br/><br/><br/><t color='#ff0000'>CE: %1%3</t> | <t color='#003060'>Score: %2</t></t>", _displayPoints, H_bluePoints, "%"],0,1,0]] spawn BIS_fnc_EXP_camp_SITREP
				};
				case EAST : {
				[[format ["<t align='center' shadow='1'><br/><br/><br/><br/><br/><t color='#ff0000'>CE: %1%3</t> | <t color='#500000'>Score: %2</t></t>", _displayPoints, H_redPoints, "%"],0,1,0]] spawn BIS_fnc_EXP_camp_SITREP
				};
				case IDEPENDENT : {
				[[format ["<t align='center' shadow='1'><br/><br/><br/><br/><br/><br/><t color='#ff0000'>CE: %1%3</t> | <t color='#005000'>Score: %2</t></t>", _displayPoints, H_greenPoints, "%"],0,1,0]] spawn BIS_fnc_EXP_camp_SITREP
				};
		};
		sleep 1;
	};
} else {
	while {true} do {
		_points = curatorPoints _curator;
		_displayPoints = round (_points*100);
		_displayTime = round (((_timeLimit*60) - ELAPSED_TIME)/60);
		_side = side player;
		if (_displayPoints >= 60) then {
			switch (_side) do {
				case WEST : {
				[[format ["<t align='center' shadow='1'><br/><br/><br/><br/><br/><t color='#00FF00'>CE: %1%3</t> | <t color='#003060'>Score: %2</t> | %4 Minutes Remaining</t>", _displayPoints, H_bluePoints, "%", _displayTime],0,1,0]] spawn BIS_fnc_EXP_camp_SITREP
				};
				case EAST : {
				[[format ["<t align='center' shadow='1'><br/><br/><br/><br/><br/><t color='#00FF00'>CE: %1%3</t> | <t color='#500000'>Score: %2</t> | %4 Minutes Remaining</t>", _displayPoints, H_redPoints, "%", _displayTime],0,1,0]] spawn BIS_fnc_EXP_camp_SITREP;
				};
				case IDEPENDENT : {
				[[format ["<t align='center' shadow='1'><br/><br/><br/><br/><br/><t color='#00FF00'>CE: %1%3</t> | <t color='#005000'>Score: %2</t> | %4 Minutes Remaining</t>", _displayPoints, H_greenPoints, "%", _displayTime],0,1,0]] spawn BIS_fnc_EXP_camp_SITREP;
				};
			};	
		};
		if (_displayPoints >= 30 && _displayPoints < 60) then {
			switch (_side) do {
				case WEST : {
				[[format ["<t align='center' shadow='1'><br/><br/><br/><br/><br/><t color='#FFFF00'>CE: %1%3</t> | <t color='#003060'>Score: %2</t> | %4 Minutes Remaining</t>", _displayPoints, H_bluePoints, "%", _displayTime],0,1,0]] spawn BIS_fnc_EXP_camp_SITREP
				};
				case EAST : {
				[[format ["<t align='center' shadow='1'><br/><br/><br/><br/><br/><t color='#FFFF00'>CE: %1%3</t> | <t color='#500000'>Score: %2</t> | %4 Minutes Remaining</t>", _displayPoints, H_redPoints, "%", _displayTime],0,1,0]] spawn BIS_fnc_EXP_camp_SITREP;
				};
				case IDEPENDENT : {
				[[format ["<t align='center' shadow='1'><br/><br/><br/><br/><br/><t color='#FFFF00'>CE: %1%3</t> | <t color='#005000'>Score: %2</t> | %4 Minutes Remaining</t>", _displayPoints, H_greenPoints, "%", _displayTime],0,1,0]] spawn BIS_fnc_EXP_camp_SITREP;
				};
			};
		};
		
		if (_displayPoints < 30) then {
			switch (_side) do {
				case WEST : {
				[[format ["<t align='center' shadow='1'><br/><br/><br/><br/><br/><t color='#ff0000'>CE: %1%3</t> | <t color='#003060'>Score: %2</t> | %4 Minutes Remaining</t>", _displayPoints, H_bluePoints, "%", _displayTime],0,1,0]] spawn BIS_fnc_EXP_camp_SITREP
				};
				case EAST : {
				[[format ["<t align='center' shadow='1'><br/><br/><br/><br/><br/><t color='#ff0000'>CE: %1%3</t> | <t color='#500000'>Score: %2</t> | %4 Minutes Remaining</t>", _displayPoints, H_redPoints, "%", _displayTime],0,1,0]] spawn BIS_fnc_EXP_camp_SITREP;
				};
				case IDEPENDENT : {
				[[format ["<t align='center' shadow='1'><br/><br/><br/><br/><br/><t color='#ff0000'>CE: %1%3</t> | <t color='#005000'>Score: %2</t> | %4 Minutes Remaining</t>", _displayPoints, H_greenPoints, "%", _displayTime],0,1,0]] spawn BIS_fnc_EXP_camp_SITREP;
				};
			};
		};
		sleep 1;
	};
};


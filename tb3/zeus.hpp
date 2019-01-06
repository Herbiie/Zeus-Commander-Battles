class ZEUS { 
	class baseUnit {
		ace_earplugs = 1;
		headgearRandom = 0;
		gogglesRandom = 0;
		uniformRandom = 0;
		backpackRandom = 0;
		vestRandom = 0;			
		
		weapons[] = {"arifle_MX_ACO_pointer_F",};
		priKit[] = {"30Rnd_65x39_caseless_mag",};
		secKit[] = {};
		pisKit[] = {};
		
		assignedItems[] = {"ItemMap","ItemCompass","ItemWatch","ItemRadio"};
		
		headgear[] = {
			"H_HelmetB"
		};
		goggles[] = {};
		
		uniform[] = {
			"U_B_CombatUniform_mcam",
		};
			uniformContents[] = {
				{"ACE_fieldDressing",3},
				{"ACE_morphine",2},
				{"ACE_tourniquet",1},	
				{"ACE_packingBandage",3},
				{"ACE_quikclot",3},
				{"ACE_elasticBandage",3},
				{"ace_maptools",1},
				{"ACE_Flashlight_KSF1",1},
				{"ACE_PersonalAidKit",1},
				{"NVGoggles",1},
			};
			
		vest[] = {
			"V_PlateCarrier1_rgr",						
		};
			vestContents[] = {		
			};
			
		backpack[] = {
			
		};
		backpackContents[] = {
				
		};
			
		magazines[] = {}; items[] = {};
	};
	class NATO: baseUnit {
		weapons[] = {"arifle_MX_ACO_pointer_F",};
		priKit[] = {"30Rnd_65x39_caseless_mag",};
		headgear[] = {
			"H_HelmetB"
		};
		uniform[] = {
			"U_B_CombatUniform_mcam",
		};
			
		vest[] = {
			"V_PlateCarrier1_rgr",						
		};
			vestContents[] = {					
				{"30Rnd_65x39_caseless_mag",6},
				{"HandGrenade",2},
				{"SmokeShell",2},
				{"ACE_DAGR",1},
				{"ACE_Vector",1},
				{"SmokeShellRed",2},
				{"SmokeShellGreen",2},
				{"SmokeShellBlue",2},
			};	
			
	};
	class CSAT: baseUnit {
		weapons[] = {"arifle_Katiba_ACO_pointer_F",};
		priKit[] = {"30Rnd_65x39_caseless_green",};
		headgear[] = {
			"H_HelmetO_ocamo"
		};
		uniform[] = {
			"U_O_CombatUniform_ocamo",
		};
			
		vest[] = {
			"V_HarnessO_brn",						
		};
			vestContents[] = {					
				{"30Rnd_65x39_caseless_green",6},
				{"HandGrenade",2},
				{"SmokeShell",2},
				{"ACE_DAGR",1},
				{"ACE_Vector",1},
				{"SmokeShellRed",2},
				{"SmokeShellGreen",2},
				{"SmokeShellBlue",2},
			};	
	};
	class AAF: baseUnit {
		weapons[] = {"arifle_Mk20_ACO_pointer_F",};
		priKit[] = {"30Rnd_556x45_Stanag",};
		headgear[] = {
			"H_HelmetIA"
		};
		uniform[] = {
			"U_I_CombatUniform",
		};
			
		vest[] = {
			"V_PlateCarrierIA1_dgtl",						
		};
			vestContents[] = {					
				{"30Rnd_556x45_Stanag",6},
				{"HandGrenade",2},
				{"SmokeShell",2},
				{"ACE_DAGR",1},
				{"ACE_Vector",1},
				{"SmokeShellRed",2},
				{"SmokeShellGreen",2},
				{"SmokeShellBlue",2},
			};
	};
};
//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 2.1 - 2009    //
//--------------------------//
//    DAC_Config_Units      //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private ["_TypNumber","_TempArray","_Unit_Pool_S","_Unit_Pool_V","_Unit_Pool_T","_Unit_Pool_A"];
_TypNumber = _this select 0;_TempArray = [];

switch (_TypNumber) do
{
//-------------------------------------------------------------------------------------------------
// REDFOR (A3)
  case 0:
  {
    _Unit_Pool_S = [["TEC_O_Soldier_SL_F",1],["TEC_O_soldier_AR_F",3],["TEC_O_soldier_F",2],["TEC_O_soldier_GL_F",1],["TEC_O_medic_F",2],["TEC_O_soldier_LAT_F",4],["TEC_O_soldier_TL_F",1]];
    _Unit_Pool_V = ["TEC_O_MRAP_02_F","TEC_O_MRAP_02_gmg_F","TEC_O_MRAP_02_hmg_F"];
    _Unit_Pool_T = ["TEC_O_MBT_02_arty_F","TEC_O_APC_Tracked_02_cannon_F","TEC_O_APC_Wheeled_02_rcws_F","TEC_O_MBT_02_cannon_F","TEC_O_APC_Tracked_02_AA_F"];
	_Unit_Pool_A = ["TEC_O_Heli_Attack_02_F","TEC_O_Heli_Light_02_F","TEC_O_Heli_Light_02_armed_F"];
  };
  
  // Independent (A3) FIA
 case 1:
  {
    _Unit_Pool_S = ["O_G_officer_F","O_G_Soldier_LAT_F","O_G_Soldier_GL_F","O_G_Soldier_TL_F","O_G_Soldier_AR_F","O_G_Soldier_F"];
    _Unit_Pool_V = ["O_G_Offroad_01_armed_F"];
    _Unit_Pool_T = ["O_G_Offroad_01_armed_F"];
    _Unit_Pool_A = [];
  };  
  
//-------------------------------------------------------------------------------------------------
// OPFOR		CAF Aggressors Africans			caf_ag_afr_p
  case 2:
  {
    _Unit_Pool_S = [
		"CAF_AG_AFR_P_AK47","CAF_AG_AFR_P_AK47",
		"CAF_AG_AFR_P_AK47",
		"CAF_AG_AFR_P_AK74",
		"CAF_AG_AFR_P_GL",
		"CAF_AG_AFR_P_PK",
		"CAF_AG_AFR_P_RPK",
		"CAF_AG_AFR_P_RPG"
	];
    _Unit_Pool_V = [
		"CAF_AG_afr_p_Offroad",
		"CAF_AG_afr_p_Offroad_armed_01",
		"CAF_AG_afr_p_van_01"
	];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// OPFOR		CAF Aggressors Middle Eastern	caf_ag_me_t
  case 3:
  {
    _Unit_Pool_S = [
		"CAF_AG_ME_T_AK47","CAF_AG_ME_T_AK47",
		"CAF_AG_ME_T_AK47",
		"CAF_AG_ME_T_AK74",
		"CAF_AG_ME_T_GL",
		"CAF_AG_ME_T_PK",
		"CAF_AG_ME_T_RPK",
		"CAF_AG_ME_T_RPG"
	];
    _Unit_Pool_V = [
		"CAF_AG_ME_T_Offroad",
		"CAF_AG_ME_T_Offroad_armed_01",
		"CAF_AG_ME_T_van_01"
	];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// OPFOR		CAF Aggressors Europeans		caf_ag_eeur_r
  case 4:
  {
    _Unit_Pool_S = [
		"CAF_AG_EEUR_R_AK47","CAF_AG_EEUR_R_AK47",
		"CAF_AG_EEUR_R_AK47",
		"CAF_AG_EEUR_R_AK74",
		"CAF_AG_EEUR_R_GL",
		"CAF_AG_EEUR_R_PK",
		"CAF_AG_EEUR_R_RPK",
		"CAF_AG_EEUR_R_RPG"
	];
    _Unit_Pool_V = [
		"CAF_AG_eeur_r_Offroad",
		// "CAF_AG_eeur_r_Offroad_armed_01",
		"O_G_Offroad_01_armed_F",
		"CAF_AG_eeur_r_van_01"
	];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
// BLUFOR (A3)
  case 5:
  {
    _Unit_Pool_S = ["B_crew_F","B_Helipilot_F","B_Soldier_SL_F","B_soldier_AR_F","B_soldier_AR_F","B_soldier_exp_F","B_soldier_GL_F","B_soldier_GL_F","B_soldier_AA_F","B_soldier_M_F","B_medic_F","B_soldier_repair_F","B_Soldier_F","B_Soldier_F","B_soldier_LAT_F","B_soldier_LAT_F","B_soldier_lite_F","B_soldier_TL_F","B_soldier_TL_F"];
    _Unit_Pool_V = ["B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F"];
    _Unit_Pool_T = ["B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_AA_F","B_APC_Tracked_01_rcws_F","B_MBT_01_cannon_F","B_MBT_01_arty_F","B_MBT_01_mlrs_F"];
    _Unit_Pool_A = ["B_Heli_Light_01_armed_F","B_Heli_Transport_01_camo_F","B_Heli_Light_01_F"];
  };  
//-------------------------------------------------------------------------------------------------
// Independent (A3)
  case 6:
  {
    _Unit_Pool_S = ["I_crew_F","I_helipilot_F","I_officer_F","I_Soldier_AT_F","I_Soldier_AA_F","I_Soldier_M_F","I_Soldier_GL_F","I_Soldier_exp_F","I_engineer_F","I_medic_F","I_Soldier_AR_F","I_Soldier_A_F"];
    _Unit_Pool_V = ["I_Truck_02_covered_F","I_Truck_02_transport_F","I_MRAP_03_hmg_F","I_MRAP_03_gmg_F","I_MRAP_03_F"];
    _Unit_Pool_T = ["I_MBT_03_cannon_F","I_APC_tracked_03_cannon_F","I_APC_Wheeled_03_cannon_F"];
    _Unit_Pool_A = ["I_Heli_light_03_F"];
  };
  
// Independent (A3) FIA
 case 7:
  {
    _Unit_Pool_S = ["I_G_officer_F","I_G_Soldier_LAT_F","I_G_Soldier_LAT_F","I_G_Soldier_GL_F","I_G_Soldier_TL_F","I_G_Soldier_AR_F","I_G_Soldier_F"];
    _Unit_Pool_V = ["I_G_Offroad_01_armed_F"];
    _Unit_Pool_T = ["I_G_Offroad_01_armed_F"];
    _Unit_Pool_A = [];
  };  
//-------------------------------------------------------------------------------------------------
// Civilians (A3)
  case 8:
  {
    _Unit_Pool_S = ["C_man_1","C_man_1","C_man_1","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F"];
    _Unit_Pool_V = ["C_Van_01_box_F","C_Van_01_transport_F","C_Offroad_01_F","C_Hatchback_01_sport_F","C_Hatchback_01_F"];
    _Unit_Pool_T = ["C_Van_01_box_F","C_Van_01_transport_F","C_Offroad_01_F","C_Hatchback_01_sport_F","C_Hatchback_01_F"];
    _Unit_Pool_A = [];
  };

//-------------------------------------------------------------------------------------------------
  Default
  {
    if(DAC_Basic_Value != 5) then
    {
      DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value",
      hintc "Error: DAC_Config_Units > No valid config number";
    };
    if(true) exitwith {};
  };
};

if(count _this == 2) then
{
  _TempArray = _TempArray + [_Unit_Pool_S,_Unit_Pool_V,_Unit_Pool_T,_Unit_Pool_A];
}
else
{
  _TempArray = _Unit_Pool_V + _Unit_Pool_T + _Unit_Pool_A;
};
_TempArray
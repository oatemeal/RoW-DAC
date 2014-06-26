//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 3.1b - 2014   //
//--------------------------//
//    DAC_Config_Weapons    //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private ["_TypNumber","_TempArray","_Weapon_Pool","_Magazine_Pool"];

_TypNumber = _this select 0;_TempArray = [];

switch (_TypNumber) do
{
//-------------------------------------------------------------------------------------------------
  case 1:
  {
    _Weapon_Pool  = ["hlc_rifle_akmgl"];
    _Magazine_Pool  = [["hlc_30Rnd_762x39_b_ak",3],["hlc_30Rnd_545x39_T_AK",3],["hlc_VOG25_AK",2]];
  };
//-------------------------------------------------------------------------------------------------
  case 2:
  {
    _Weapon_Pool  = ["hlc_rifle_ak12"];
    _Magazine_Pool  = [["hlc_30Rnd_545x39_B_AK",3],["hlc_30Rnd_545x39_T_AK",3]];
  };
//-------------------------------------------------------------------------------------------------
  case 3:
  {
    _Weapon_Pool  = ["hlc_rifle_rpk"];
    _Magazine_Pool  = [["hlc_30Rnd_762x39_t_ak",8]];
  };
//-------------------------------------------------------------------------------------------------
  case 4:
  {
    _Weapon_Pool  = ["hlc_rifle_rpk","launch_RPG32_F"];
    _Magazine_Pool  = [["hlc_30Rnd_545x39_B_AK",3],["hlc_30Rnd_545x39_T_AK",3],["RPG32_F",3]];
  };
//-------------------------------------------------------------------------------------------------
Default
{
  if(DAC_Basic_Value != 5) then
  {
    DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value";
    hintc "Error: DAC_Config_Weapons > No valid config number";
  };
  if(true) exitwith {};
  };
};

_TempArray = [_Weapon_Pool] + [_Magazine_Pool];
_TempArray
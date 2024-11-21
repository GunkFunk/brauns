/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 511E07F9
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "anim"
function anim() {	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5F589F55
	/// @DnDParent : 511E07F9
	/// @DnDArgument : "expr" "hmove !=0 or vmove != 0"
	if(hmove !=0 or vmove != 0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 0EA19A53
		/// @DnDParent : 5F589F55
		/// @DnDArgument : "value" "s_player_walk"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_player_walk;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 571B6133
	/// @DnDParent : 511E07F9
	else{	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 6F1FCE7E
		/// @DnDParent : 571B6133
		/// @DnDArgument : "value" "s_player_idle"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_player_idle;}}
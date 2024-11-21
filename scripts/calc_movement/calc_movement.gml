/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1DF51A27
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "calc_movement"
function calc_movement() {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 097E9BA1
	/// @DnDInput : 2
	/// @DnDParent : 1DF51A27
	/// @DnDArgument : "expr" "right - left"
	/// @DnDArgument : "expr_1" "down - up"
	/// @DnDArgument : "var" "hmove"
	/// @DnDArgument : "var_1" "vmove"
	hmove = right - left;
	vmove = down - up;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18394253
	/// @DnDParent : 1DF51A27
	/// @DnDArgument : "var" "_facing"
	/// @DnDArgument : "value" "(aim_dir < 90 or aim_dir > 270)"
	var _facing = (aim_dir < 90 or aim_dir > 270);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33FDBF54
	/// @DnDParent : 1DF51A27
	/// @DnDArgument : "var" "_facing"
	if(_facing == 0){	/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4AFB03FE
		/// @DnDParent : 33FDBF54
		/// @DnDArgument : "var" "_facing"
		/// @DnDArgument : "value" "-1"
		var _facing = -1;}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 67343B19
	/// @DnDParent : 1DF51A27
	/// @DnDArgument : "expr" "_facing"
	/// @DnDArgument : "var" "facing"
	facing = _facing;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4473F435
	/// @DnDParent : 1DF51A27
	/// @DnDArgument : "expr" "(hmove !=0) or (vmove !=0)"
	if((hmove !=0) or (vmove !=0)){	/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 56407643
		/// @DnDParent : 4473F435
		/// @DnDArgument : "var" "_dir"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "function" "point_direction"
		/// @DnDArgument : "arg" "0,0, hmove, vmove"
		var _dir = point_direction(0,0, hmove, vmove);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 6D21B275
		/// @DnDParent : 4473F435
		/// @DnDArgument : "var" "hmove"
		/// @DnDArgument : "function" "lengthdir_x"
		/// @DnDArgument : "arg" "walk_spd, _dir"
		hmove = lengthdir_x(walk_spd, _dir);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 22094B23
		/// @DnDParent : 4473F435
		/// @DnDArgument : "var" "vmove"
		/// @DnDArgument : "function" "lengthdir_y"
		/// @DnDArgument : "arg" "walk_spd, _dir"
		vmove = lengthdir_y(walk_spd, _dir);
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 410DF2AA
		/// @DnDInput : 2
		/// @DnDParent : 4473F435
		/// @DnDArgument : "value" "hmove"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "value_1" "vmove"
		/// @DnDArgument : "value_relative_1" "1"
		/// @DnDArgument : "instvar_1" "1"
		x += hmove;
		y += vmove;}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B3ADACB
	/// @DnDParent : 1DF51A27
	/// @DnDArgument : "expr" "point_direction(x, y, mouse_x, mouse_y)"
	/// @DnDArgument : "var" "aim_dir"
	aim_dir = point_direction(x, y, mouse_x, mouse_y);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53F1D548
	/// @DnDParent : 1DF51A27
	/// @DnDArgument : "expr" "aim_dir"
	/// @DnDArgument : "var" "my_bow.image_angle"
	my_bow.image_angle = aim_dir;}
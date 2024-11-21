/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 16FC9921
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "myCollision"
function myCollision() {	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4882D8A7
	/// @DnDComment : target values$(13_10)
	/// @DnDInput : 2
	/// @DnDParent : 16FC9921
	/// @DnDArgument : "var" "_tx"
	/// @DnDArgument : "value" "x"
	/// @DnDArgument : "var_1" "_ty"
	/// @DnDArgument : "value_1" "y"
	var _tx = x;
	var _ty = y;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 134485B9
	/// @DnDInput : 2
	/// @DnDParent : 16FC9921
	/// @DnDArgument : "expr" "xprevious"
	/// @DnDArgument : "expr_1" "yprevious"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = xprevious;
	y = yprevious;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 54BCFCC8
	/// @DnDComment : desired movements
	/// @DnDInput : 2
	/// @DnDParent : 16FC9921
	/// @DnDArgument : "var" "_dis_x"
	/// @DnDArgument : "value" "abs(_tx - x)"
	/// @DnDArgument : "var_1" "_dis_y"
	/// @DnDArgument : "value_1" "abs(_ty - y)"
	var _dis_x = abs(_tx - x);
	var _dis_y = abs(_ty - y);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 258AC45E
	/// @DnDComment : move as far as possible in x
	/// @DnDParent : 16FC9921
	/// @DnDArgument : "times" "_dis_x"
	repeat(_dis_x){	/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 2A4CD3F0
		/// @DnDParent : 258AC45E
		/// @DnDArgument : "x" "sign(_tx - x)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "o_solid"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "object" "o_solid"
		var l2A4CD3F0_0 = instance_place(x + sign(_tx - x), y + 0, [o_solid]);if (!(l2A4CD3F0_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 068659B8
			/// @DnDParent : 2A4CD3F0
			/// @DnDArgument : "expr" "sign(_tx - x)"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "x"
			x += sign(_tx - x);}}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 6948A9A2
	/// @DnDComment : move as far as possible in y
	/// @DnDParent : 16FC9921
	/// @DnDArgument : "times" "_dis_y"
	repeat(_dis_y){	/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 5901DE00
		/// @DnDParent : 6948A9A2
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "sign(_ty - y)"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "o_solid"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "object" "o_solid"
		var l5901DE00_0 = instance_place(x + 0, y + sign(_ty - y), [o_solid]);if (!(l5901DE00_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2011F0CF
			/// @DnDParent : 5901DE00
			/// @DnDArgument : "expr" "sign(_ty - y)"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "y"
			y += sign(_ty - y);}}}
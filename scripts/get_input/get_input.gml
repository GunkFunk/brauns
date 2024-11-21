/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 20C33969
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "get_input"
function get_input() {	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 5B36826E
	/// @DnDParent : 20C33969
	/// @DnDArgument : "key" "ord("A")"
	var l5B36826E_0;l5B36826E_0 = keyboard_check(ord("A"));if (l5B36826E_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2BED74A7
		/// @DnDParent : 5B36826E
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "left"
		left = 1;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 2B6ABAC1
	/// @DnDParent : 20C33969
	/// @DnDArgument : "key" "ord("D")"
	var l2B6ABAC1_0;l2B6ABAC1_0 = keyboard_check(ord("D"));if (l2B6ABAC1_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6992684A
		/// @DnDParent : 2B6ABAC1
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "right"
		right = 1;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 6732D697
	/// @DnDParent : 20C33969
	/// @DnDArgument : "key" "ord("W")"
	var l6732D697_0;l6732D697_0 = keyboard_check(ord("W"));if (l6732D697_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3C490094
		/// @DnDParent : 6732D697
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "up"
		up = 1;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 62B98A73
	/// @DnDParent : 20C33969
	/// @DnDArgument : "key" "ord("S")"
	var l62B98A73_0;l62B98A73_0 = keyboard_check(ord("S"));if (l62B98A73_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37F40A79
		/// @DnDParent : 62B98A73
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "down"
		down = 1;}}
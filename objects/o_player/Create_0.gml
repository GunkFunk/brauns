/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7EEFECCF
/// @DnDArgument : "expr" "1.2"
/// @DnDArgument : "var" "walk_spd"
walk_spd = 1.2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 34144106
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "facing"
facing = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 272D266D
/// @DnDInput : 2
/// @DnDArgument : "expr_1" "11"
/// @DnDArgument : "var" "aim_dir"
/// @DnDArgument : "var_1" "bow_dis"
aim_dir = 0;
bow_dis = 11;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7BC1EE24
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "my_bow"
/// @DnDArgument : "objectid" "o_bow"
/// @DnDSaveInfo : "objectid" "o_bow"
my_bow = instance_create_layer(x + 0, y + 0, "Instances", o_bow);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2C57E64D
/// @DnDArgument : "expr" "s_cursor"
/// @DnDArgument : "var" "cursor_sprite"
cursor_sprite = s_cursor;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0544F962
/// @DnDArgument : "function" "window_set_cursor"
/// @DnDArgument : "arg" "cr_none"
window_set_cursor(cr_none);
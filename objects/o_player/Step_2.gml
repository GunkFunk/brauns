/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 505F39AF
/// @DnDArgument : "var" "_depth"
/// @DnDArgument : "value" "aim_dir > 0 and aim_dir < 180"
var _depth = aim_dir > 0 and aim_dir < 180;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 61D59D1D
/// @DnDArgument : "expr" "depth + _depth"
/// @DnDArgument : "var" "my_bow.depth"
my_bow.depth = depth + _depth;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 25278884
/// @DnDArgument : "var" "_depth"
_depth = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 72BC6E3D
/// @DnDInput : 2
/// @DnDArgument : "expr" "x + lengthdir_x(bow_dis,aim_dir)"
/// @DnDArgument : "expr_1" "y + lengthdir_y(bow_dis,aim_dir)"
/// @DnDArgument : "var" "my_bow.x"
/// @DnDArgument : "var_1" "my_bow.y"
my_bow.x = x + lengthdir_x(bow_dis,aim_dir);
my_bow.y = y + lengthdir_y(bow_dis,aim_dir);
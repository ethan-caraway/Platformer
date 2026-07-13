/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 707C4EA7
/// @DnDInput : 4
/// @DnDArgument : "expr_1" "3"
/// @DnDArgument : "expr_2" "0.2"
/// @DnDArgument : "var" "dir"
/// @DnDArgument : "var_1" "ghost_speed"
/// @DnDArgument : "var_2" "ghost_grav"
/// @DnDArgument : "var_3" "x_speed"
dir = 0;
ghost_speed = 3;
ghost_grav = 0.2;
x_speed = 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 36FC32C3
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 04E5D8A2
/// @DnDInput : 2
/// @DnDArgument : "var" "dir"
/// @DnDArgument : "option" "-1"
/// @DnDArgument : "option_1" "1"
dir = choose(-1, 1);
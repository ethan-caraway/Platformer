/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 49E7D9F7
/// @DnDInput : 12
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "expr_3" "false"
/// @DnDArgument : "expr_4" "false"
/// @DnDArgument : "expr_5" "6"
/// @DnDArgument : "expr_6" "-6"
/// @DnDArgument : "expr_8" "12"
/// @DnDArgument : "expr_9" "1.2"
/// @DnDArgument : "expr_10" "-18"
/// @DnDArgument : "expr_11" "0.7"
/// @DnDArgument : "var" "dir"
/// @DnDArgument : "var_1" "can_climb"
/// @DnDArgument : "var_2" "climbing"
/// @DnDArgument : "var_3" "jump"
/// @DnDArgument : "var_4" "fall"
/// @DnDArgument : "var_5" "x_speed"
/// @DnDArgument : "var_6" "y_speed"
/// @DnDArgument : "var_7" "grav"
/// @DnDArgument : "var_8" "grav_max"
/// @DnDArgument : "var_9" "grav_delta"
/// @DnDArgument : "var_10" "grav_jump"
/// @DnDArgument : "var_11" "anim_speed"
dir = -1;
can_climb = false;
climbing = false;
jump = false;
fall = false;
x_speed = 6;
y_speed = -6;
grav = 0;
grav_max = 12;
grav_delta = 1.2;
grav_jump = -18;
anim_speed = 0.7;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 2DD96B01
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "spr_idle_1"
/// @DnDSaveInfo : "spriteind" "spr_idle_1"
sprite_index = spr_idle_1;
image_index += 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 463803DC
/// @DnDArgument : "speed" "anim_speed"
image_speed = anim_speed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7E4C5C7A
/// @DnDArgument : "var" "pickup_score"
pickup_score = 0;
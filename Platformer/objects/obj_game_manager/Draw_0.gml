/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 27A6D172
/// @DnDInput : 2
/// @DnDArgument : "var" "main_camera_x"
/// @DnDArgument : "value" "camera_get_view_x(view_camera[0])"
/// @DnDArgument : "var_1" "main_camera_y"
/// @DnDArgument : "value_1" "camera_get_view_y(view_camera[0])"
var main_camera_x = camera_get_view_x(view_camera[0]);
var main_camera_y = camera_get_view_y(view_camera[0]);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0ED2AFD8
/// @DnDArgument : "x" "main_camera_x + 910"
/// @DnDArgument : "y" "main_camera_y + 50"
/// @DnDArgument : "sprite" "spr_pickup_star"
/// @DnDSaveInfo : "sprite" "spr_pickup_star"
draw_sprite(spr_pickup_star, 0, main_camera_x + 910, main_camera_y + 50);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 78C95746
/// @DnDArgument : "x" "main_camera_x + 800"
/// @DnDArgument : "y" "main_camera_y + 40"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "obj_player.pickup_score"
draw_text(main_camera_x + 800, main_camera_y + 40, string("Score: ") + string(obj_player.pickup_score));
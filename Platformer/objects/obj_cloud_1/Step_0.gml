/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 4B42E0F6
/// @DnDArgument : "x" "1"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "0"
/// @DnDArgument : "y_relative" "1"
x += 1;
y += 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F5234FC
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "room_width"
if(x >= room_width)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 38FE69B3
	/// @DnDParent : 0F5234FC
	/// @DnDArgument : "x" "-sprite_width"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x = -sprite_width;
	y += 0;
}
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
/// @DnDHash : 3C6B24E0
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "room_width"
if(x >= room_width)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 5BEE54CB
	/// @DnDParent : 3C6B24E0
	/// @DnDArgument : "x" "-sprite_width"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x = -sprite_width;
	y += 0;
}
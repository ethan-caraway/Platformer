/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 69BDDF9A
/// @DnDArgument : "expr" "bounce_rate"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "bounce_degree"
bounce_degree += bounce_rate;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3D09AE17
/// @DnDArgument : "var" "bounce_degree"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "360"
if(bounce_degree > 360)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6707657A
	/// @DnDParent : 3D09AE17
	/// @DnDArgument : "expr" "-360"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "bounce_degree"
	bounce_degree += -360;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6583DABE
/// @DnDArgument : "expr" "shrink_rate"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "shrink_degree"
shrink_degree += shrink_rate;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3C7E481D
/// @DnDArgument : "var" "shrink_degree"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "360"
if(shrink_degree > 360)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10B999A1
	/// @DnDParent : 3C7E481D
	/// @DnDArgument : "expr" "-360"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "shrink_degree"
	shrink_degree += -360;
}

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 0821D45D
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "start_y + sin(degtorad(bounce_degree)) * bounce_range"
x += 0;
y = start_y + sin(degtorad(bounce_degree)) * bounce_range;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 3196932E
/// @DnDArgument : "xscale" "1 + sin(degtorad(shrink_degree)) * 0.1"
/// @DnDArgument : "yscale" "1 + sin(degtorad(shrink_degree)) * 0.1"
image_xscale = 1 + sin(degtorad(shrink_degree)) * 0.1;
image_yscale = 1 + sin(degtorad(shrink_degree)) * 0.1;
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 44B9B7F3
/// @DnDArgument : "var" "jump"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(jump == true))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 052F72E6
	/// @DnDParent : 44B9B7F3
	/// @DnDArgument : "var" "climbing"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "true"
	if(!(climbing == true))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5FF8BBD0
		/// @DnDInput : 2
		/// @DnDParent : 052F72E6
		/// @DnDArgument : "expr" "grav_jump"
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "var" "grav"
		/// @DnDArgument : "var_1" "jump"
		grav = grav_jump;
		jump = true;
	}
}
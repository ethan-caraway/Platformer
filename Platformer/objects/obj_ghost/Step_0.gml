/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 63EBBCDD
/// @DnDArgument : "expr" "dir * ghost_speed"
/// @DnDArgument : "var" "x_speed"
x_speed = dir * ghost_speed;

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 61EBFF98
/// @DnDArgument : "x" "x_speed"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "0"
/// @DnDArgument : "y_relative" "1"
x += x_speed;
y += 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2C4EEFD6
/// @DnDArgument : "var" "dir"
/// @DnDArgument : "value" "-1"
if(dir == -1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 68E1F12B
	/// @DnDParent : 2C4EEFD6
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "spriteind" "spr_ghost"
	/// @DnDSaveInfo : "spriteind" "1aed58a2-b3ab-49f4-8bc0-3e5ea0f8c9d5"
	sprite_index = spr_ghost;
	image_index = 1;

	/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 1E0423B3
	/// @DnDParent : 2C4EEFD6
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "var" "left_top_corner"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "layername" ""Tiles_Collisions""
	var l1E0423B3_0 = layer_tilemap_get_id("Tiles_Collisions");
	var left_top_corner = undefined;
	if(l1E0423B3_0 > -1) {
		var l1E0423B3_1 = tilemap_get_at_pixel(l1E0423B3_0, x + 0, y + 0);
		if(l1E0423B3_1 > -1) left_top_corner = tile_get_index(l1E0423B3_1);
	}

	/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 2740BF0F
	/// @DnDParent : 2C4EEFD6
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "sprite_height"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "var" "left_bottom_corner"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "layername" ""Tiles_Collisions""
	var l2740BF0F_0 = layer_tilemap_get_id("Tiles_Collisions");
	var left_bottom_corner = undefined;
	if(l2740BF0F_0 > -1) {
		var l2740BF0F_1 = tilemap_get_at_pixel(l2740BF0F_0, x + 0, y + sprite_height);
		if(l2740BF0F_1 > -1) left_bottom_corner = tile_get_index(l2740BF0F_1);
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1C38269A
	/// @DnDParent : 2C4EEFD6
	/// @DnDArgument : "expr" "left_top_corner >= 1 || left_bottom_corner <= 0 || x < 0"
	if(left_top_corner >= 1 || left_bottom_corner <= 0 || x < 0)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 70794250
		/// @DnDParent : 1C38269A
		/// @DnDArgument : "x" "(x&$ffffffc0)+sprite_height"
		/// @DnDArgument : "y" "0"
		/// @DnDArgument : "y_relative" "1"
		x = (x&$ffffffc0)+sprite_height;
		y += 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A896FC3
		/// @DnDParent : 1C38269A
		/// @DnDArgument : "expr" "dir * -1"
		/// @DnDArgument : "var" "dir"
		dir = dir * -1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3D4F8366
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3137B25A
	/// @DnDParent : 3D4F8366
	/// @DnDArgument : "var" "dir"
	/// @DnDArgument : "value" "1"
	if(dir == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2C6E5C34
		/// @DnDParent : 3137B25A
		/// @DnDArgument : "spriteind" "spr_ghost"
		/// @DnDSaveInfo : "spriteind" "1aed58a2-b3ab-49f4-8bc0-3e5ea0f8c9d5"
		sprite_index = spr_ghost;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
		/// @DnDVersion : 1
		/// @DnDHash : 7FB5B799
		/// @DnDParent : 3137B25A
		/// @DnDArgument : "x" "sprite_width"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "var" "right_top_corner"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "layername" ""Tiles_Collisions""
		var l7FB5B799_0 = layer_tilemap_get_id("Tiles_Collisions");
		var right_top_corner = undefined;
		if(l7FB5B799_0 > -1) {
			var l7FB5B799_1 = tilemap_get_at_pixel(l7FB5B799_0, x + sprite_width, y + 0);
			if(l7FB5B799_1 > -1) right_top_corner = tile_get_index(l7FB5B799_1);
		}
	
		/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
		/// @DnDVersion : 1
		/// @DnDHash : 64EE0151
		/// @DnDParent : 3137B25A
		/// @DnDArgument : "x" "sprite_width"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "sprite_height"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "var" "right_bottom_corner"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "layername" ""Tiles_Collisions""
		var l64EE0151_0 = layer_tilemap_get_id("Tiles_Collisions");
		var right_bottom_corner = undefined;
		if(l64EE0151_0 > -1) {
			var l64EE0151_1 = tilemap_get_at_pixel(l64EE0151_0, x + sprite_width, y + sprite_height);
			if(l64EE0151_1 > -1) right_bottom_corner = tile_get_index(l64EE0151_1);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 58B6D73B
		/// @DnDParent : 3137B25A
		/// @DnDArgument : "expr" "right_top_corner >= 1 || right_bottom_corner <= 0 || x + sprite_width > room_width"
		if(right_top_corner >= 1 || right_bottom_corner <= 0 || x + sprite_width > room_width)
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 2B7E557C
			/// @DnDParent : 58B6D73B
			/// @DnDArgument : "x" "(x&$ffffffc0)"
			/// @DnDArgument : "y" "0"
			/// @DnDArgument : "y_relative" "1"
			x = (x&$ffffffc0);
			y += 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6C134CBC
			/// @DnDParent : 58B6D73B
			/// @DnDArgument : "expr" "dir * -1"
			/// @DnDArgument : "var" "dir"
			dir = dir * -1;
		}
	}
}
/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 2E544837
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "grav"
/// @DnDArgument : "y_relative" "1"
x += 0;
y += grav;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 71AFA25A
/// @DnDArgument : "expr" "grav_delta"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "grav"
grav += grav_delta;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0FC426EE
/// @DnDArgument : "var" "grav"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "grav_max"
if(grav >= grav_max)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 600D2930
	/// @DnDParent : 0FC426EE
	/// @DnDArgument : "expr" "grav_max"
	/// @DnDArgument : "var" "grav"
	grav = grav_max;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C92465D
/// @DnDArgument : "var" "grav"
/// @DnDArgument : "op" "1"
if(grav < 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1D6AFBDB
	/// @DnDParent : 4C92465D
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_jump"
	/// @DnDSaveInfo : "spriteind" "39ccebc3-9880-44cd-b6c6-c50d9df1361b"
	sprite_index = spr_jump;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2FBC65C1
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10707733
	/// @DnDParent : 2FBC65C1
	/// @DnDArgument : "var" "jump"
	/// @DnDArgument : "value" "true"
	if(jump == true)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6FBF9C72
		/// @DnDParent : 10707733
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_jump_fall"
		/// @DnDSaveInfo : "spriteind" "b0eb0af1-f4eb-407f-adcc-1618c926b4e1"
		sprite_index = spr_jump_fall;
		image_index += 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7AA3D90B
	/// @DnDParent : 2FBC65C1
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 21BA674A
		/// @DnDParent : 7AA3D90B
		/// @DnDArgument : "var" "fall"
		/// @DnDArgument : "value" "true"
		if(fall == true)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 59D76F2F
			/// @DnDParent : 21BA674A
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_fall"
			/// @DnDSaveInfo : "spriteind" "7112a21b-dea8-4404-b6cc-6c6abca0378c"
			sprite_index = spr_fall;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 30F9A750
		/// @DnDParent : 7AA3D90B
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7DA83A8A
			/// @DnDInput : 2
			/// @DnDParent : 30F9A750
			/// @DnDArgument : "expr_1" "true"
			/// @DnDArgument : "var" "grav"
			/// @DnDArgument : "var_1" "fall"
			grav = 0;
			fall = true;
		}
	}

	/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 78BCD757
	/// @DnDParent : 2FBC65C1
	/// @DnDArgument : "x" "-(sprite_get_width(sprite_index)/2)"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "var" "bottom_left_corner"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "layername" ""Tiles_Collisions""
	var l78BCD757_0 = layer_tilemap_get_id("Tiles_Collisions");
	var bottom_left_corner = undefined;
	if(l78BCD757_0 > -1) {
		var l78BCD757_1 = tilemap_get_at_pixel(l78BCD757_0, x + -(sprite_get_width(sprite_index)/2), y + 0);
		if(l78BCD757_1 > -1) bottom_left_corner = tile_get_index(l78BCD757_1);
	}

	/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 62B4E8C7
	/// @DnDParent : 2FBC65C1
	/// @DnDArgument : "x" "sprite_get_width(sprite_index)/2"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "var" "bottom_right_corner"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "layername" ""Tiles_Collisions""
	var l62B4E8C7_0 = layer_tilemap_get_id("Tiles_Collisions");
	var bottom_right_corner = undefined;
	if(l62B4E8C7_0 > -1) {
		var l62B4E8C7_1 = tilemap_get_at_pixel(l62B4E8C7_0, x + sprite_get_width(sprite_index)/2, y + 0);
		if(l62B4E8C7_1 > -1) bottom_right_corner = tile_get_index(l62B4E8C7_1);
	}

	/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 1DE96B9F
	/// @DnDParent : 2FBC65C1
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "var" "bottom_center"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "layername" ""Tiles_Collisions""
	var l1DE96B9F_0 = layer_tilemap_get_id("Tiles_Collisions");
	var bottom_center = undefined;
	if(l1DE96B9F_0 > -1) {
		var l1DE96B9F_1 = tilemap_get_at_pixel(l1DE96B9F_0, x + 0, y + 0);
		if(l1DE96B9F_1 > -1) bottom_center = tile_get_index(l1DE96B9F_1);
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 36F3EA85
	/// @DnDParent : 2FBC65C1
	/// @DnDArgument : "expr" "bottom_left_corner >= 1 || bottom_right_corner >= 1 || bottom_center >= 1"
	if(bottom_left_corner >= 1 || bottom_right_corner >= 1 || bottom_center >= 1)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 62F3789E
		/// @DnDParent : 36F3EA85
		/// @DnDArgument : "expr" "bottom_left_corner == 1 || bottom_right_corner == 1 || bottom_center == 1 || bottom_left_corner == 3 || bottom_right_corner == 3 || bottom_center == 3"
		if(bottom_left_corner == 1 || bottom_right_corner == 1 || bottom_center == 1 || bottom_left_corner == 3 || bottom_right_corner == 3 || bottom_center == 3)
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 31121F9C
			/// @DnDParent : 62F3789E
			/// @DnDArgument : "x" "0"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "real(y&$ffffffc0)"
			x += 0;
			y = real(y&$ffffffc0);
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 09603D35
			/// @DnDParent : 62F3789E
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_idle_1"
			/// @DnDSaveInfo : "spriteind" "63beb5fa-e624-4a44-a125-c7d91ebd2c22"
			sprite_index = spr_idle_1;
			image_index += 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0B796DD1
			/// @DnDInput : 3
			/// @DnDParent : 62F3789E
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "expr_1" "false"
			/// @DnDArgument : "expr_2" "false"
			/// @DnDArgument : "var" "climbing"
			/// @DnDArgument : "var_1" "jump"
			/// @DnDArgument : "var_2" "fall"
			climbing = false;
			jump = false;
			fall = false;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4B28BC77
		/// @DnDParent : 36F3EA85
		/// @DnDArgument : "var" "bottom_center"
		/// @DnDArgument : "value" "2"
		if(bottom_center == 2)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3FC8917E
			/// @DnDParent : 4B28BC77
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "can_climb"
			can_climb = true;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0F55D46F
	/// @DnDParent : 2FBC65C1
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 77FAA9EB
		/// @DnDParent : 0F55D46F
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "climbing"
		climbing = false;
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 3B36C0D1
/// @DnDArgument : "key" "vk_left"
var l3B36C0D1_0;
l3B36C0D1_0 = keyboard_check(vk_left);
if (l3B36C0D1_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D3860C8
	/// @DnDParent : 3B36C0D1
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "dir"
	dir = -1;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 793759F8
	/// @DnDParent : 3B36C0D1
	/// @DnDArgument : "xscale" "dir"
	image_xscale = dir;
	image_yscale = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0BD6F550
	/// @DnDInput : 2
	/// @DnDParent : 3B36C0D1
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "expr_1" "false"
	/// @DnDArgument : "var" "climbing"
	/// @DnDArgument : "var_1" "can_climb"
	climbing = false;
	can_climb = false;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 63111755
	/// @DnDParent : 3B36C0D1
	/// @DnDArgument : "expr" "!jump && !fall"
	if(!jump && !fall)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 269ABD65
		/// @DnDParent : 63111755
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_walk"
		/// @DnDSaveInfo : "spriteind" "a1c9c65c-fb97-4a62-bd28-e633b2e3b1ad"
		sprite_index = spr_walk;
		image_index += 0;
	}

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 3721A6CC
	/// @DnDParent : 3B36C0D1
	/// @DnDArgument : "x" "-x_speed"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x += -x_speed;
	y += 0;

	/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 66A8C6D4
	/// @DnDParent : 3B36C0D1
	/// @DnDArgument : "x" "-(sprite_get_width(sprite_index)/2)"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "var" "above_bottom_left_corner"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "layername" ""Tiles_Collisions""
	var l66A8C6D4_0 = layer_tilemap_get_id("Tiles_Collisions");
	var above_bottom_left_corner = undefined;
	if(l66A8C6D4_0 > -1) {
		var l66A8C6D4_1 = tilemap_get_at_pixel(l66A8C6D4_0, x + -(sprite_get_width(sprite_index)/2), y + -1);
		if(l66A8C6D4_1 > -1) above_bottom_left_corner = tile_get_index(l66A8C6D4_1);
	}

	/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 483A2809
	/// @DnDParent : 3B36C0D1
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "var" "above_bottom_center"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "layername" ""Tiles_Collisions""
	var l483A2809_0 = layer_tilemap_get_id("Tiles_Collisions");
	var above_bottom_center = undefined;
	if(l483A2809_0 > -1) {
		var l483A2809_1 = tilemap_get_at_pixel(l483A2809_0, x + 0, y + -1);
		if(l483A2809_1 > -1) above_bottom_center = tile_get_index(l483A2809_1);
	}

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30DC20D3
	/// @DnDParent : 3B36C0D1
	/// @DnDArgument : "var" "below_bottom_left_corner"
	/// @DnDArgument : "value" "0"
	var below_bottom_left_corner = 0;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 544FBB07
	/// @DnDParent : 3B36C0D1
	/// @DnDArgument : "expr" "y&$3f>0"
	if(y&$3f>0)
	{
		/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
		/// @DnDVersion : 1
		/// @DnDHash : 01B54100
		/// @DnDParent : 544FBB07
		/// @DnDArgument : "x" "-(sprite_get_width(sprite_index)/2)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "var" "below_bottom_left_corner"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "layername" ""Tiles_Collisions""
		var l01B54100_0 = layer_tilemap_get_id("Tiles_Collisions");
		var below_bottom_left_corner = undefined;
		if(l01B54100_0 > -1) {
			var l01B54100_1 = tilemap_get_at_pixel(l01B54100_0, x + -(sprite_get_width(sprite_index)/2), y + 1);
			if(l01B54100_1 > -1) below_bottom_left_corner = tile_get_index(l01B54100_1);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 314C3AE3
	/// @DnDParent : 3B36C0D1
	/// @DnDArgument : "expr" "above_bottom_left_corner == 3 || below_bottom_left_corner == 3"
	if(above_bottom_left_corner == 3 || below_bottom_left_corner == 3)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 3E079D5B
		/// @DnDParent : 314C3AE3
		/// @DnDArgument : "x" "real(x&$ffffffc0)+(sprite_get_width(sprite_index)/2)"
		/// @DnDArgument : "y" "0"
		/// @DnDArgument : "y_relative" "1"
		x = real(x&$ffffffc0)+(sprite_get_width(sprite_index)/2);
		y += 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3BA0F154
	/// @DnDParent : 3B36C0D1
	/// @DnDArgument : "var" "above_bottom_center"
	/// @DnDArgument : "value" "2"
	if(above_bottom_center == 2)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 43130AD6
		/// @DnDParent : 3BA0F154
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "can_climb"
		can_climb = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3B04DA6D
	/// @DnDParent : 3B36C0D1
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 68DF3985
		/// @DnDParent : 3B04DA6D
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "can_climb"
		can_climb = false;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 596A0B91
		/// @DnDParent : 3B04DA6D
		/// @DnDArgument : "speed" "anim_speed"
		image_speed = anim_speed;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0FEC7FC5
	/// @DnDParent : 3B36C0D1
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "op" "1"
	if(x < 0)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 0CC3E8BF
		/// @DnDParent : 0FEC7FC5
		/// @DnDArgument : "x" "room_width"
		/// @DnDArgument : "y" "0"
		/// @DnDArgument : "y_relative" "1"
		x = room_width;
		y += 0;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 51C36855
else
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 6E76BE14
	/// @DnDParent : 51C36855
	/// @DnDArgument : "key" "vk_right"
	var l6E76BE14_0;
	l6E76BE14_0 = keyboard_check(vk_right);
	if (l6E76BE14_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 39B95E02
		/// @DnDParent : 6E76BE14
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "dir"
		dir = 1;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 2C85774D
		/// @DnDParent : 6E76BE14
		/// @DnDArgument : "xscale" "dir"
		image_xscale = dir;
		image_yscale = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2B4D61A5
		/// @DnDInput : 2
		/// @DnDParent : 6E76BE14
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "expr_1" "false"
		/// @DnDArgument : "var" "climbing"
		/// @DnDArgument : "var_1" "can_climb"
		climbing = false;
		can_climb = false;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 0BFC36B2
		/// @DnDParent : 6E76BE14
		/// @DnDArgument : "expr" "!jump && !fall"
		if(!jump && !fall)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 09C6C52C
			/// @DnDParent : 0BFC36B2
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_walk"
			/// @DnDSaveInfo : "spriteind" "a1c9c65c-fb97-4a62-bd28-e633b2e3b1ad"
			sprite_index = spr_walk;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 13FD8E99
		/// @DnDParent : 6E76BE14
		/// @DnDArgument : "x" "x_speed"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "0"
		/// @DnDArgument : "y_relative" "1"
		x += x_speed;
		y += 0;
	
		/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
		/// @DnDVersion : 1
		/// @DnDHash : 31889F1D
		/// @DnDParent : 6E76BE14
		/// @DnDArgument : "x" "sprite_get_width(sprite_index)/2"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "var" "above_bottom_right_corner"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "layername" ""Tiles_Collisions""
		var l31889F1D_0 = layer_tilemap_get_id("Tiles_Collisions");
		var above_bottom_right_corner = undefined;
		if(l31889F1D_0 > -1) {
			var l31889F1D_1 = tilemap_get_at_pixel(l31889F1D_0, x + sprite_get_width(sprite_index)/2, y + -1);
			if(l31889F1D_1 > -1) above_bottom_right_corner = tile_get_index(l31889F1D_1);
		}
	
		/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
		/// @DnDVersion : 1
		/// @DnDHash : 59AFD17A
		/// @DnDParent : 6E76BE14
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "var" "above_bottom_center"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "layername" ""Tiles_Collisions""
		var l59AFD17A_0 = layer_tilemap_get_id("Tiles_Collisions");
		var above_bottom_center = undefined;
		if(l59AFD17A_0 > -1) {
			var l59AFD17A_1 = tilemap_get_at_pixel(l59AFD17A_0, x + 0, y + -1);
			if(l59AFD17A_1 > -1) above_bottom_center = tile_get_index(l59AFD17A_1);
		}
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2BE3D042
		/// @DnDParent : 6E76BE14
		/// @DnDArgument : "var" "below_bottom_right_corner"
		/// @DnDArgument : "value" "0"
		var below_bottom_right_corner = 0;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 1860AA8E
		/// @DnDParent : 6E76BE14
		/// @DnDArgument : "expr" "y&$3f>0"
		if(y&$3f>0)
		{
			/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
			/// @DnDVersion : 1
			/// @DnDHash : 12219471
			/// @DnDParent : 1860AA8E
			/// @DnDArgument : "x" "sprite_get_width(sprite_index)/2"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "var" "below_bottom_right_corner"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "layername" ""Tiles_Collisions""
			var l12219471_0 = layer_tilemap_get_id("Tiles_Collisions");
			var below_bottom_right_corner = undefined;
			if(l12219471_0 > -1) {
				var l12219471_1 = tilemap_get_at_pixel(l12219471_0, x + sprite_get_width(sprite_index)/2, y + 1);
				if(l12219471_1 > -1) below_bottom_right_corner = tile_get_index(l12219471_1);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 1B9CC162
		/// @DnDParent : 6E76BE14
		/// @DnDArgument : "expr" "above_bottom_right_corner == 3 || below_bottom_right_corner == 3"
		if(above_bottom_right_corner == 3 || below_bottom_right_corner == 3)
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 083E8D9F
			/// @DnDParent : 1B9CC162
			/// @DnDArgument : "x" "real(x&$ffffffc0)+obj_game_manager.tile_size-(sprite_get_width(sprite_index)/2)"
			/// @DnDArgument : "y" "0"
			/// @DnDArgument : "y_relative" "1"
			x = real(x&$ffffffc0)+obj_game_manager.tile_size-(sprite_get_width(sprite_index)/2);
			y += 0;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3BF86F41
		/// @DnDParent : 6E76BE14
		/// @DnDArgument : "var" "above_bottom_center"
		/// @DnDArgument : "value" "2"
		if(above_bottom_center == 2)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 171631B2
			/// @DnDParent : 3BF86F41
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "can_climb"
			can_climb = true;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 41A2A02F
		/// @DnDParent : 6E76BE14
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 798540DA
			/// @DnDParent : 41A2A02F
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "can_climb"
			can_climb = false;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 6A9EB192
			/// @DnDParent : 41A2A02F
			/// @DnDArgument : "speed" "anim_speed"
			image_speed = anim_speed;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 16E05EFF
		/// @DnDParent : 6E76BE14
		/// @DnDArgument : "var" "x"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "room_width"
		if(x > room_width)
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 25B17878
			/// @DnDParent : 16E05EFF
			/// @DnDArgument : "x" "0"
			/// @DnDArgument : "y" "0"
			/// @DnDArgument : "y_relative" "1"
			x = 0;
			y += 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2CE4BB74
	/// @DnDParent : 51C36855
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 5B5F4947
		/// @DnDParent : 2CE4BB74
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_idle_1"
		/// @DnDSaveInfo : "spriteind" "63beb5fa-e624-4a44-a125-c7d91ebd2c22"
		sprite_index = spr_idle_1;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 41A8B791
		/// @DnDParent : 2CE4BB74
		/// @DnDArgument : "speed" "anim_speed"
		image_speed = anim_speed;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 30839CAB
/// @DnDArgument : "var" "can_climb"
/// @DnDArgument : "value" "true"
if(can_climb == true)
{
	/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 6D83F43D
	/// @DnDParent : 30839CAB
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "var" "above_bottom_center"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "layername" ""Tiles_Collisions""
	var l6D83F43D_0 = layer_tilemap_get_id("Tiles_Collisions");
	var above_bottom_center = undefined;
	if(l6D83F43D_0 > -1) {
		var l6D83F43D_1 = tilemap_get_at_pixel(l6D83F43D_0, x + 0, y + -1);
		if(l6D83F43D_1 > -1) above_bottom_center = tile_get_index(l6D83F43D_1);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 051FF478
	/// @DnDParent : 30839CAB
	/// @DnDArgument : "var" "above_bottom_center"
	/// @DnDArgument : "value" "2"
	if(above_bottom_center == 2)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 6BDAD3D8
		/// @DnDParent : 051FF478
		/// @DnDArgument : "key" "vk_up"
		var l6BDAD3D8_0;
		l6BDAD3D8_0 = keyboard_check(vk_up);
		if (l6BDAD3D8_0)
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 70326416
			/// @DnDParent : 6BDAD3D8
			/// @DnDArgument : "x" "0"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "y_speed"
			/// @DnDArgument : "y_relative" "1"
			x += 0;
			y += y_speed;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 43E1F517
			/// @DnDParent : 6BDAD3D8
			/// @DnDArgument : "imageind" "0.3"
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_climb"
			/// @DnDSaveInfo : "spriteind" "467e5281-364d-45bc-8df9-c91fb215ab95"
			sprite_index = spr_climb;
			image_index += 0.3;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 73214285
			/// @DnDParent : 6BDAD3D8
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "climbing"
			climbing = true;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 6618BB08
		/// @DnDParent : 051FF478
		/// @DnDArgument : "key" "vk_down"
		var l6618BB08_0;
		l6618BB08_0 = keyboard_check(vk_down);
		if (l6618BB08_0)
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 02B989CC
			/// @DnDParent : 6618BB08
			/// @DnDArgument : "x" "0"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "-y_speed"
			/// @DnDArgument : "y_relative" "1"
			x += 0;
			y += -y_speed;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 67A69ABC
			/// @DnDParent : 6618BB08
			/// @DnDArgument : "imageind" "-0.3"
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_climb"
			/// @DnDSaveInfo : "spriteind" "467e5281-364d-45bc-8df9-c91fb215ab95"
			sprite_index = spr_climb;
			image_index += -0.3;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 740722F6
			/// @DnDParent : 6618BB08
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "climbing"
			climbing = true;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0D12E014
		/// @DnDParent : 051FF478
		/// @DnDArgument : "var" "climbing"
		/// @DnDArgument : "value" "true"
		if(climbing == true)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3F626808
			/// @DnDInput : 2
			/// @DnDParent : 0D12E014
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "expr_1" "false"
			/// @DnDArgument : "var" "jump"
			/// @DnDArgument : "var_1" "fall"
			jump = false;
			fall = false;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 6C99856A
			/// @DnDParent : 0D12E014
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_climb"
			/// @DnDSaveInfo : "spriteind" "467e5281-364d-45bc-8df9-c91fb215ab95"
			sprite_index = spr_climb;
			image_index += 0;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 33F21757
			/// @DnDParent : 0D12E014
			/// @DnDArgument : "speed" "0"
			image_speed = 0;
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 56CF2B6A
			/// @DnDParent : 0D12E014
			/// @DnDArgument : "x" "real(x&$ffffffc0)+obj_game_manager.tile_size-(sprite_get_width(sprite_index)/2)"
			/// @DnDArgument : "y" "0"
			/// @DnDArgument : "y_relative" "1"
			x = real(x&$ffffffc0)+obj_game_manager.tile_size-(sprite_get_width(sprite_index)/2);
			y += 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1DB7C01D
	/// @DnDParent : 30839CAB
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4FAFEAE1
		/// @DnDParent : 1DB7C01D
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "can_climb"
		can_climb = false;
	}
}
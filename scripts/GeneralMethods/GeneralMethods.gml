//nine_slice_box_stretched(sprite, x1, y1, x2, y2, index)
//Creates a nine sliced box with a given size and background
function nine_slice_box_stretched(sprite, x1, y1, x2, y2, index) {
	var _size = sprite_get_width(sprite) / 3;
	var _x1 = x1;
	var _y1 = y1;
	var _x2 = x2;
	var _y2 = y2;
	var _index = index;
	var _w = _x2 - _x1;
	var _h = _y2 - _y1
	//MIDDLE
	draw_sprite_part_ext(sprite, _index, _size, _size, 1, 1, _x1 + _size,_y1 + _size, _w - (_size * 2), _h - (_size * 2), c_white,1);
	//CORNERS
	//TOP LEFT
	draw_sprite_part(sprite, _index, 0, 0, _size, _size, _x1, _y1);
	//TOP RIGHT
	draw_sprite_part(sprite, _index, _size * 2, 0, _size, _size, _x1 + _w - _size, _y1);
	//BOTTOM LEFT
	draw_sprite_part(sprite, _index, 0, _size * 2, _size, _size, _x1, _y1 + _h - _size);
	//BOTTOM RIGHT
	draw_sprite_part(sprite, _index, _size * 2, _size * 2, _size, _size, _x1 + _w - _size, _y1 + _h - _size);
	//EDGES
	//LEFT
	draw_sprite_part_ext(sprite, _index, 0, _size, _size, 1, _x1, _y1 + _size, 1, _h - (_size * 2), c_white, 1);
	//RIGHT
	draw_sprite_part_ext(sprite, _index, _size * 2, _size, _size, 1, _x1 + _w - _size, _y1 + _size, 1, _h - (_size * 2), c_white, 1);
	//TOP
	draw_sprite_part_ext(sprite, _index, _size, 0, 1, _size, _x1 + _size, _y1, _w - (_size * 2), 1, c_white, 1);
	//BOTTOM
	draw_sprite_part_ext(sprite, _index, _size, _size * 2, 1, _size, _x1 + _size, _y1 + _h - (_size), _w - (_size * 2), 1, c_white,1);
}

//gamepad_any_button_check_pressed(slot)
//Checks if any button is pressed on the gamepad
//Returns Bool
function gamepad_any_button_check_pressed(slot) {
	return 
		gamepad_button_check_pressed(slot, gp_face1) or
		gamepad_button_check_pressed(slot, gp_face2) or
		gamepad_button_check_pressed(slot, gp_face3) or
		gamepad_button_check_pressed(slot, gp_face4) or
		gamepad_button_check_pressed(slot, gp_shoulderl) or
		gamepad_button_check_pressed(slot, gp_shoulderlb) or
		gamepad_button_check_pressed(slot, gp_shoulderr) or
		gamepad_button_check_pressed(slot, gp_shoulderrb) or
		gamepad_button_check_pressed(slot, gp_select) or
		gamepad_button_check_pressed(slot, gp_start) or
		gamepad_button_check_pressed(slot, gp_stickl) or
		gamepad_button_check_pressed(slot, gp_stickr) or
		gamepad_button_check_pressed(slot, gp_padu) or
		gamepad_button_check_pressed(slot, gp_padd) or
		gamepad_button_check_pressed(slot, gp_padl) or
		gamepad_button_check_pressed(slot, gp_padr) 
}

//script_execute_array(argument0, argument1)
//Executes a given script and passing it an argument array
function script_execute_array(argument0, argument1) {
	var _src = argument0;
	var _args = argument1;

	switch (array_length(_args)){

		case 1: return script_execute(_src, _args[0]);
	
		case 2: return script_execute(_src, _args[0], _args[1]);
	
		case 3: return script_execute(_src, _args[0], _args[1], _args[2]);
	
		case 4: return script_execute(_src, _args[0], _args[1], _args[2], _args[3]);
	
		case 5: return script_execute(_src, _args[0], _args[1], _args[2], _args[3], _args[4]);
	
		case 6: return script_execute(_src, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5]);
	
		case 7: return script_execute(_src, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6]);
	
		case 8: return script_execute(_src, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7]);
	
		default: show_error("script_execute_array: argument count not supported!", false);
	}
}

//isDefined(varr)
//Checks if a variable is defined or not
//Returns Bool
function isDefined(varr) {
	if varr != noone return true
}
/// @description Insert description here
// You can write your code in this editor

if (floating) {
	y -= spd
	if (y <= ystart - distance) floating = false;
} else {
	y += spd
	if (y >= ystart + distance) floating = true;
}

if (place_meeting(x,y,obj_player)) {
	if (keyboard_check_pressed(ord("C"))) {
		// chamar balao
		if (!instance_exists(obj_npc_box)) {
			instance_create_layer(0,0,"player",obj_npc_box, {
				theme: theme,
				face: face,
				name: name,
				pharase: pharase,
			})		
		}
	}
}
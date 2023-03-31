// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

enum states {
	idle,
	walk,
	attack,
	take_damage
}

function scr_player_colision_move(){
	repeat(abs(hspd)){
		if (!place_meeting(x + sign(hspd), y, obj_solid)) {
			x += sign(hspd)
		}
	}
	repeat(abs(vspd)){
		if (!place_meeting(x, y + sign(vspd), obj_solid)) {
			y += sign(vspd)
		}
		if (vspd < 0) {
			if(place_meeting(x, y - 1, obj_solid)) {
				vspd = 0
				break
			}
		}
	}
}

function scr_player_change_sprite() {
	switch state {
		case states.idle:
			sprite = spr_player_idle
		break;
		case states.walk:
			sprite = spr_player_walk
		break;
		case states.attack:
			if (sprite != spr_player_attack) image_index = 0;
			sprite = spr_player_attack
		break;
	}
}

function scr_player_jump(in_floor, release_jump) {
	if (in_floor) {
		vspd = 0
		if (jump) {
			vspd = -jump_height 
		}
	} else {
		if (release_jump and vspd < 0) {
			vspd = vspd / 2
		}
	}
}
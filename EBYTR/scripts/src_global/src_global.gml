// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.grv = 0.2

enum states {
	idle,
	walk,
	attack,
	take_damage,
	death,
}

function src_global_gravity() {
	var _in_floor = place_meeting(x, y + 1, obj_solid)
	if (! _in_floor) {
		vspd += global.grv
	} else {
		vspd = 0
	}
}
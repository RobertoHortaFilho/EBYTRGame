/// @description Insert description here
// You can write your code in this editor

top = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
right = keyboard_check(ord("A"))
left = keyboard_check(ord("D"))
jump = keyboard_check_pressed(vk_space)
var release_jump = keyboard_check_released(vk_space)
var in_floor = place_meeting(x, y + 1, obj_solid)

hspd = (left - right) * max_spd

if (right) {
	side = -1
} else if (left) {
	side = 1
}

if (in_floor) {
	vspd = 0
	if (jump) {
		vspd = -jump_height 
	}
} else {
	vspd += grv
	show_debug_message(vspd)
	if (release_jump and vspd < 0) {
		vspd = vspd / 2
	}
}


scr_player_change_sprite()
scr_player_colision_move()

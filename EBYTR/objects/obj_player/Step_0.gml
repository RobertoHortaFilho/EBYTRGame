/// @description Insert description here
// You can write your code in this editor

top = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
right = keyboard_check(ord("A"))
left = keyboard_check(ord("D"))
jump = keyboard_check_pressed(vk_space)

hspd = (left - right) * max_spd

if (place_meeting(x, y + 1, obj_solid)) {
	vspd = 0
	grv = grv_base
	if (jump) {
		vspd = - jump_height
	}
} else {
	vspd += grv
	grv = lerp(grv, grv_max, .03)
}


scr_player_colision_move()

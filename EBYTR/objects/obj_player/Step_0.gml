/// @description Insert description here
// You can write your code in this editor

top = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
right = keyboard_check(ord("A"))
left = keyboard_check(ord("D"))
jump = keyboard_check_pressed(vk_space)
attack = keyboard_check_pressed(ord("Q"))
var release_jump = keyboard_check_released(vk_space)
var in_floor = place_meeting(x, y + 1, obj_solid)

switch state {
	case states.idle:
		scr_player_jump(in_floor, release_jump)

		hspd = 0
		
		if (attack) {
			state = states.attack
			break;
		}

		if (top or down or right or left or jump) {
			state = states.walk
		}
		break;
	case states.walk:
		scr_player_jump(in_floor, release_jump)

		hspd = (left - right) * max_spd
		if (right) {
			side = -1
		} else if (left) {
			side = 1
		}

		if (attack) {
			state = states.attack
			break;
		}
		if (hspd = 0) {
			state = states.idle
		}
		break;
	case states.attack:
		hspd = 0
		src_global_gravity()
		
		var frame_rate = (room_speed / sprite_get_speed(sprite)) / sprite_get_number(sprite)
		var next_frame_number = image_index + frame_rate
		
		if (next_frame_number > sprite_get_number(sprite) / 4 * 3) {
			hspd = 2 * side
			// create attack
			if (!alarm[0]) {
				alarm[0] = room_speed/2
				instance_create_layer(x+ (6 * side), y - 20, "attacks", obj_player_attack,
				{
					spd: 6,
					dir: side,
				})
			}
			
		}
		if (next_frame_number >= sprite_get_number(sprite)) {
			state = states.idle
		}
		break;
	
}

show_debug_message(image_speed)

vspd += grv
scr_player_change_sprite()
scr_colision_move()

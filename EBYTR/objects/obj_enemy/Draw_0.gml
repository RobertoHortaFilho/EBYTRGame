/// @description Insert description here
// You can write your code in this editor

draw_self()

if (state == states.take_damage) {
	if (!alarm[0]) alarm[0] = 5;
	if (!alarm[1]) alarm[1] = room_speed / 2;
	if blink {
		gpu_set_fog(true, c_white, 0, 1000)
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale* 1.02, image_yscale * 1.02, image_angle, -1, .8)
		gpu_set_fog(false, c_white, 0, 1000)
	};
}
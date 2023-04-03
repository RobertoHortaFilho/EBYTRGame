// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_enemy_slip(){
	if (place_meeting(x + direct, y, obj_solid)) {
		direct *= -1
	}
	if (!collision_point(x + (direct * 5), y + 2, obj_solid, true, true) and
		collision_point(x, y + 2, obj_solid, true, true)) {
		direct *= -1
	}
}
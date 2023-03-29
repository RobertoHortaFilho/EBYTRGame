// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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
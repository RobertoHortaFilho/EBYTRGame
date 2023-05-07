/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player)) {
	target = obj_player
} else {
	target = noone
}

if (target) {
	x = lerp(x , target.x + 60, .2)
	y = lerp(y , target.y, .2)
}

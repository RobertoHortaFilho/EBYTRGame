/// @description Insert description here
// You can write your code in this editor
src_global_gravity()

switch (state) {
	case states.idle:
		hspd = hspd * .3
		state = states.walk
		break;
	case states.walk:
		scr_enemy_slip()
		hspd = spd * direct
		image_xscale = direct * -1
		instance_create_layer(x + (6 * image_xscale), y, "Enemys", obj_enemy_sintexe_rail)
		break;
	case states.take_damage:
		if (take_dmg_ctrl) {
			vspd = -2
			take_dmg_ctrl = false
			life -= 1
		}
		hspd = knock_spd * knockback
		break;
	case states.death:
		if sprite_index != spr_enemy_sintexe_death {
			sprite_index = spr_enemy_sintexe_death
		}
		break;
}

if (life <= 0) {
	state = states.death
}

scr_colision_move()
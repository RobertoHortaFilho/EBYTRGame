// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.grv = 0.2

global.shootType = spr_player_attack_comum

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

//zeze = ["Aoba T23, Você vai precisar aprender a se defender nesse mundo","Logo a frente tem um erro comum de sintexe aperte 'X' para disparar e acabar com ele!"]

//oliva = ["Fala ai ....., ok eu confesso que nao Conversei Com o Sargento (CSS) esse nao é meu forte! hahahaha", "Mas vamos aos assuntos que interessa vou deixar esses seus ataques MARAVILHOSOS... de funcional!"]

//back = ["Fala Deev, pessoal do fronte me passou que voce ta precisando de uns upgrades ai! Realmente esses bugs nao sao nada facil.", "A gente vai ver o que da pra fazer, umas explosoes devem resolver todos os problemas"]
/// @description Insert description here
// You can write your code in this editor

var lay_id = layer_get_id("map");
var back_id = layer_background_get_id(lay_id);
layer_background_xscale(back_id, .5);
layer_background_yscale(back_id, .5);

//var xx = camera_get_view_width(view_camera[0])
var xx = view_get_wport(view_camera[0])
var yy = 0

draw_sprite_ext(spr_player_status, 0, xx - 30, yy + 48, 3, 3, 0, image_blend, .8)
draw_sprite_ext(spr_player_face, 0, xx, yy, 3, 3, 0, image_blend, .8)
 /// @description Insert description here
// You can write your code in this editor


var scale = 3

draw_sprite_ext(box, image_index, 0, 0, scale, scale, 0, -1, .9)
draw_sprite_ext(theme, image_index, 0, 0, scale, scale, 0, -1, 1)
draw_sprite_ext(face, image_index, 0, 0, scale, scale, 0, -1, 1)

var sep = 20
draw_set_color(c_white)
draw_set_font(fnt_pixel_title)
draw_text_ext(440, 54, string_upper(name), sep, 15)
draw_set_font(fnt_pixel)

var text_x = 223
var text_y = 90
draw_text_ext(text_x, text_y, string_upper(selected_pharase), 20, 520)

draw_set_color(-1)

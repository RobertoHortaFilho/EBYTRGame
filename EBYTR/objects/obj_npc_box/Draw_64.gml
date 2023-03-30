 /// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("R"))) {
	letter_index = 0
}

if (keyboard_check_pressed(ord("E"))) {
	letter_index = string_length(selected_pharase)
}

if ( letter_index < string_length(selected_pharase)) {
	letter_index += .4
}

var scale = 3

draw_sprite_ext(box, image_index, 0, 0, scale, scale, 0, -1, .9)
draw_sprite_ext(theme, image_index, 0, 0, scale, scale, 0, -1, 1)
draw_sprite_ext(face, image_index, 0, 0, scale, scale, 0, -1, 1)

var sep = 20
draw_set_color(c_white)
draw_set_font(fnt_pixel_title)
draw_text_ext(440, 54, string_upper(name), sep, 15)
draw_set_font(fnt_pixel)

var text_x = 222
var text_y = 88
var pharase_new = string_copy(selected_pharase, 0, letter_index)
draw_text_ext(text_x, text_y, pharase_new, 22, 520)

draw_set_color(-1)

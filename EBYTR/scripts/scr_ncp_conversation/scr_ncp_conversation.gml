// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_ncp_conversation(){
	if keyboard_check_pressed(skip_conversation) {
		if !(letter_index >= string_length(selected_pharase)) {
			letter_index = string_length(selected_pharase)
			return;
		}
		pharase_index += 1
		letter_index = 0
		if (pharase_index < array_length(pharase)) {
			selected_pharase = pharase[pharase_index]
		} else {
			instance_destroy()
		}
	}
}
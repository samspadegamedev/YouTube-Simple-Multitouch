/// @description Button



if (my_touch == -1) {
	
	for (var i = 0; i < 10; i += 1) {
		if (device_mouse_check_button_pressed(i, mb_any)) {
			if (position_meeting(device_mouse_x(i), device_mouse_y(i), id)) {
				my_touch = i;
				image_index = 1;
				audio_play_sound(snd_button_click, 1, false);
			}
		}
	}
	
} else {

	if (device_mouse_check_button_released(my_touch, mb_any)) {
		my_touch = -1;
		image_index = 0;
	}
	

}



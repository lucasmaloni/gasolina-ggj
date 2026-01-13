if image_alpha < 1{
	image_alpha += .01;
}

if image_alpha >= 1 {
	if keyboard_check_pressed(vk_space){
		game_restart();
	}
}
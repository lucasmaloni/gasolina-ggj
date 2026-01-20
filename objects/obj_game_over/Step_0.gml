if image_alpha < 1{
	image_alpha += .02;
}

if image_alpha >= 1 {
	if keyboard_check_pressed(vk_space){
		game_restart();
	}
}

image_xscale = 1.6;
image_yscale = 1.6;
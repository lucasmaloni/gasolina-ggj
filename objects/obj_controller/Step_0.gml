layer_vspeed(layer_pista_id, global.world_speed);

if (instance_exists(obj_player)){
	global.distance = 1 ;
}

if (global.player_lives = 0 && global.game_over == false) {
		obj_player.state = "death";
		instance_create_layer(44, 20,"Instances", obj_game_over);//cria a instancia da tela de gameover
		layer_vspeed(layer_pista_id, 0);						     //para a estrada
		instance_destroy(obj_controller);						 //destroi o controller
		
	}
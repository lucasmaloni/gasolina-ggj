if (instance_exists(obj_player)){
	global.distance = 1 ;
}

// Verificação de game over do jogo
if (global.player_lives = 0 && global.game_over == false) {
		obj_player.state = "death";
		instance_create_layer(44, 20,"Instances", obj_game_over);//cria a instancia da tela de gameover
		layer_vspeed(layer_pista_id, 0);						     //para a estrada
		instance_destroy(obj_controller);						 //destroi o controller
		
}

layer_vspeed(layer_pista_id, global.world_speed);

var base_speed = 6;
var boost = 0;

if (instance_exists(obj_player)){
	
	if (keyboard_check(ord("W"))) {
		boost = 2;
	} else if (keyboard_check(ord("S"))) {
		boost = -2;
	}
}

global.world_speed = lerp(global.world_speed, base_speed + boost, 0.05);
layer_vspeed(layer_pista_id, global.world_speed);
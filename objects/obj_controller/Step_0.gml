//Condição de game over
if ((global.player_lives <= 0 || global.current_fuel <= 0) && global.game_over == false) {
    
    global.game_over = true;
    
    if (instance_exists(obj_player)) {
        obj_player.state = "death";
    }

    //cria a tela de Game Over
    instance_create_layer(130, 200, "Instances", obj_game_over);
	
    
    //pra a estrada visualmente
    layer_vspeed(layer_pista_id, 0);
    
    //para a velocidade global
    global.world_speed = 0;
	
	//destroi o controller 
	if (instance_exists(obj_controller)){
		instance_destroy(obj_controller);
	}
	
	//para o som do carro ao morrer
	audio_stop_sound(snd_car)
} 
else if (global.distance >= 1000 && global.game_over == false) {
    
    global.game_over = true;
    global.distance = 1000;
	global.score = (global.distance*global.player_lives)+global.current_fuel;
    
    if (instance_exists(obj_player)) {
        obj_player.state = "victory";
    }
    
	layer_set_visible(layer_victory, true);
	
    layer_vspeed(layer_pista_id, 0);
    global.world_speed = 0;
    
    // Limpa a pista e para os alarmes
    instance_destroy(obj_enemy_1);
    instance_destroy(obj_enemy_2);
    alarm[0] = 0;
	alarm[1] = 0;
	
    show_debug_message("VITÓRIA!"); //Adicionar layer de vitoria

	if (instance_exists(obj_controller)){
		instance_destroy(obj_controller);
	}
	
	//para o som do carro ao ganhar
	audio_stop_sound(snd_car)
}

if (global.game_over == false) {

    // Lógica de aceleração/freio
    var base_speed = 6;
    var boost = 0;

    if (instance_exists(obj_player)){
        if (keyboard_check(ord("W"))) {
            boost = 2;
        } else if (keyboard_check(ord("S"))) {
            boost = -2;
        }
    }

    // Aplica a velocidade suavizada (Lerp)
    global.world_speed = lerp(global.world_speed, base_speed + boost, 0.05);
    
    // Move a textura da estrada
    layer_vspeed(layer_pista_id, global.world_speed);

    // Soma a distância
    global.distance += (global.world_speed * global.meters_per_pixel);
}
if !recently_hit {
	
	player_lives -= 1;		//remove 1 de vida
	recently_hit = true;	//muda a variavel 
	state = "knockback";	//muda o estado
	
	knockback_force = 6;
	kb_dir = point_direction(other.x, other.y, x, y);
	
	//Se a colisão for diretamente na traseira, o computador escolhe uma das diagonais para jogar o player
	if (kb_dir > 250 && kb_dir < 290)
	{
		kb_dir += choose(45, -45);
	}
	
	alarm[0] = 60;	//tempo de invunerabilidade
	
	var freeze_time = current_time + 50;
    while (current_time < freeze_time) { /* espera o tempo passar */ }
	
	if player_lives = 0 {
		state = "death";
		instance_create_layer(44, 20,"Instances", obj_game_over);//cria a instancia da tela de gameover
		layer_vspeed("bkg_road", 0);						     //para a estrada
		instance_destroy(obj_controller);						 //destroi o controller
		
	}	
}
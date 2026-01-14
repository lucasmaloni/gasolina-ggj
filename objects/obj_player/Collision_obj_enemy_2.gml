if !recently_hit {
	
	global.player_lives -= 1;		//remove 1 de vida
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
    while (current_time < freeze_time) { 
		/* espera o tempo passar 
		o que da o efeito de freeze/paralisação */ 
	}
		
}
// Evento de Movimento e Knockback
counter++;

if (state == "moving") {
	//Input de movimentação, A D movimentação horizontal, S W movimentação vertical
	var input_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var input_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));
	
	// Verificação para evitar uma velocidade diagonal maior que a normal
	if (input_x != 0 || input_y != 0) {
		var car_dir = point_direction(0, 0, input_x, input_y);
		x_speed = lengthdir_x(move_speed, car_dir);
		y_speed = lengthdir_y(move_speed, car_dir);
		
	} else {
		x_speed = 0;
		y_speed = 0;
	}
	
	x += x_speed;
	y += y_speed;
	
	x = clamp(x, min_x, max_x);
	y = clamp(y, min_y, max_y);
	
} else if (state == "knockback") {
	// Aqui é o caso de batida
	// A ideia é gerar um efeito físico com desaceleração e inércia
	
	// kb_dir deve ser definido no evento de colisão player e inimigo, assim como o estado de "knockback"
	x += lengthdir_x(knockback_force, kb_dir);
	y += lengthdir_y(knockback_force, kb_dir);
	
	
	// Aplica atrito reduzindo a força do knockback
	knockback_force = lerp(knockback_force, 0, friction_force);
	
	// Quando a força for muito pequena, carro volta ao normal
	if (knockback_force < 0.5) {
        state = "moving";
        knockback_force = 0; // Reseta para a próxima batida
		// Essa variavel será redefinida como 6 também no evento de colisão
		
        image_angle = 0; // Imagem volta ao normal
    }
}


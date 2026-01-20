// Stats e Vetores do Player e da movimentação
x_speed = 0;
y_speed = 0;
move_speed = 2;
friction_force = 0.15;
knockback_force = 6;
state = "moving";
counter = 0;
recently_hit = false

// Limites de localização do carro
min_x = 35; max_x = 99;
min_y = 0; max_y = 224;

max_fuel = 120;

audio_play_sound(snd_car, 0, false);
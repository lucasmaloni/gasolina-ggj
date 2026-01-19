// Definimos o limite maximo de gasolina como 120
// Se a quantidade de gasolina no momento do contato for ultrapassar os 120, setamos ela pra 120

if (global.current_fuel > max_fuel - 10){
	global.current_fuel = max_fuel;
} else {
	global.current_fuel += 10;
}

instance_destroy(obj_gas);

audio_play_sound(snd_gas, 0, false);
global.current_fuel += 10;

instance_destroy(obj_gas);

audio_play_sound(snd_gas, 0, false);
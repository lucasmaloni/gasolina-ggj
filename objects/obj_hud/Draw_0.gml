draw_set_font(font_game);
draw_set_colour(c_white);

draw_text(120, 20, "Vidas: " + string(global.player_lives));

draw_text(120, 40, "Distância: " + string(floor(global.distance)) + "m");

draw_text(120, 60, "Gas: " + string(global.current_fuel));
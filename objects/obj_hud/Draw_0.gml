draw_set_font(font_game);
draw_set_colour(c_white);

draw_text(140, 20, "Lives: " + string(global.player_lives));

draw_text(140, 40, "Distance: " + string(floor(global.distance)) + "m");

draw_text(140, 60, "Gas: " + string(floor(global.current_fuel)));
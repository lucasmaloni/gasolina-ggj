draw_set_font(font_game);
draw_set_colour(c_white);

draw_text(140, 200, "YOU WON!");
draw_text(140, 220, "Total Score: " + string(floor(global.score)));



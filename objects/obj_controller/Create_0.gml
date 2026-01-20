/* 
Definições de variaveis globais. A ideia é manter informações uteis
a diferentes elementos do jogo como globais para facilitar o acesso
e divisão de responsabilidades.
*/
global.distance = 0;
global.player_lives = 4;
global.meters_per_pixel = 0.1;
global.game_over = false;
global.score = 0;

global.world_speed = 3;
layer_pista_id = layer_get_id("bkg_road");
layer_victory = layer_get_id("layer_vic");

alarm[0] = random_range(0.5 * 30, 0.8 * 30);
alarm[1] = random_range(1 * 30, 1.4 * 30);
alarm[11] = 1;

// Dados de combustivel e uso dele in-game
global.current_fuel = 100;
global.fuel_use = 0.1;




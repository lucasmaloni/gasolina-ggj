/* 
Definições de variaveis globais. A ideia é manter informações uteis
a diferentes elementos do jogo como globais para facilitar o acesso
e divisão de responsabilidades.
*/
global.distance = 0;
global.player_lives = 3;
global.meters_per_pixel = 0.1;
global.game_over = false;

global.world_speed = 3;
layer_pista_id = layer_get_id("bkg_road");

alarm[0] = random_range(0.5 * 30, 0.8 * 30);
alarm[11] = 1;

// Dados de combustivel e uso dele in-game
global.current_fuel = 100;
global.fuel_use = 0.2;
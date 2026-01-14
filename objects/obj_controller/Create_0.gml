/* 
Definições de variaveis globais. A ideia é manter informações uteis
a diferentes elementos do jogo como globais para facilitar o acesso
e divisão de responsabilidades.
*/
global.distance = 0;
global.world_speed = 3;
global.player_lives = 3;
global.game_over = false;

layer_pista_id = layer_get_id("bkg_road");

alarm[0] = random_range(0.5 * 30, 0.8 * 30);
alarm[11] = 1;
if recently_hit {
	if counter mod 5 = 0 {   //module pega um numero e divide por esse numero (numero x/5 com resto 0)
		draw_self();
	}
	else {
		draw_sprite_ext(spr_player,0,x,y,1,1,0,c_white,0.25)
	}
}
else{
	draw_self();
}
if recently_hit {
    // Efeito de piscar (Flashing)
    if (counter mod 5 == 0) {
        // Desenha a sprite atual (seja correndo ou batendo) normalmente
        draw_self(); 
    }
    else {
        // Desenha a sprite atual, mas transparente (fantasma)
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 0.25);
    }
}
else {
    // Vida normal
    draw_self();
}
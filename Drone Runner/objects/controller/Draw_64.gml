draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);

draw_text(10, 10, "Moedas: " + string(global.coins));
draw_text(10, 25, "Kills: " + string(global.kills));


if (global.estado_jogo == "gameover") {
    
    var _largura_tela = display_get_gui_width();
    var _altura_tela = display_get_gui_height();

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);

    draw_text(_largura_tela / 2, _altura_tela / 2, "Pressione F para jogar novamente");
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
	
	if (keyboard_check_pressed(ord("F"))) {
        game_restart();
    }
}
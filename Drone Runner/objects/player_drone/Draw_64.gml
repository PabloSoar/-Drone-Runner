var _x = 1100;
var _y = 10;
var _largura = 200;
var _altura = 20;

var _cor_vida;
if (hp > hp_max * 0.5) {
    _cor_vida = c_lime;
} else if (hp > hp_max * 0.25) {
    _cor_vida = c_yellow;
} else {
    _cor_vida = c_red;
}

var _largura_hp = (_largura * hp) / hp_max;
if (hp < 0) { hp = 0; }

draw_set_color(c_dkgray);
draw_rectangle(_x, _y, _x + _largura, _y + _altura, false);

draw_set_color(_cor_vida);
draw_rectangle(_x, _y, _x + _largura_hp, _y + _altura, false);

draw_set_color(c_black);
draw_rectangle(_x, _y, _x + _largura, _y + _altura, true);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

var _texto_hp = "HP: " + string(floor(hp)) + " / " + string(hp_max);

draw_set_color(c_black);
draw_text(_x + _largura / 2 + 1, _y + _altura / 2 + 1, _texto_hp); // Sombra deslocada

draw_set_color(c_white);
draw_text(_x + _largura / 2, _y + _altura / 2, _texto_hp); // Texto principal

draw_set_halign(fa_left);
draw_set_valign(fa_top);
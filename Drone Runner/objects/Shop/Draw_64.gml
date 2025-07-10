if (!visible) exit;

draw_rectangle_color(100, 100, 700, 500, c_black, c_black, c_black, c_black, false);
draw_text(120, 110, "LOJA DE UPGRADES");

for (var i = 0; i < 3; i++) {
    var px = 130 + i * 190;
    var py = 160;

    var card = shop_cards[i];
    
    draw_rectangle_color(px, py, px+160, py+200, c_gray, c_gray, c_white, c_white, false);
    draw_text(px + 10, py + 10, card.name);
    draw_text(px + 10, py + 40, card.description);
    draw_text(px + 10, py + 70, "Preço: " + string(card.price));
}


draw_rectangle_color(120, 420, 300, 460, c_red, c_red, c_red, c_red, false);
draw_text(140, 430, "REROLL (" + string(global.reroll_cost) + ")");

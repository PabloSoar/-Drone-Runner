if (mouse_x > 130 && mouse_x < 290 && mouse_y > 160 && mouse_y < 360) {
    var card = shop_cards[0]; // exemplo do 1º card
    if (global.player_money >= card.price) {
        global.player_money -= card.price;
        card.apply_effect();

        if (card.type == "motor") {
            if (array_length(global.player_motors) < global.max_motors) {
                array_push(global.player_motors, card);
            } else {
                // abrir menu de substituição
            }
        }

        if (card.type == "attribute") {
            var key = card.name;
            global.player_upgrades[key] += 1; // ou modifique conforme necessário
        }
    }
}

if (mouse_x > 120 && mouse_x < 300 && mouse_y > 420 && mouse_y < 460) {
    if (global.player_money >= global.reroll_cost) {
        global.player_money -= global.reroll_cost;
        shop_cards = generate_shop_cards();
    }
}


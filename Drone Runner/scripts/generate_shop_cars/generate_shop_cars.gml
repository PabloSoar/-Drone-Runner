function generate_shop_cards() {
    var result = [];

    for (var i = 0; i < 3; i++) {
        var card = choose(global.all_cards);
        array_push(result, card);
    }

    return result;
}

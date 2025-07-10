global.all_cards = [];

function add_card(_type, _name, _desc, _price, _func) {
    var card = {
        type: _type,
        name: _name,
        description: _desc,
        price: _price,
        apply_effect: _func
    };
    array_push(global.all_cards, card);
}

add_card("motor", "Motor Vampiro", "Cura 5 HP a cada 3 kills", 10, function() {
    global.vampire_kill_counter = 0;
});

if (!global.shop_open && global.kills >= global.kills_to_shop) {
    global.shop_open = true;
    instance_create_layer(0, 0, "GUI", obj_shop).visible = true;
    obj_shop.shop_cards = generate_shop_cards();
    game_pause();
}
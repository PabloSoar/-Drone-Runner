function close_shop() {
    instance_destroy(obj_shop);
    global.shop_open = false;
    global.kills = 0;
    game_unpause();
}

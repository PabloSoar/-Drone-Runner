var max_moedas = 30;

if (instance_number(coin) < max_moedas) {
    
    var _x_aleatorio = random_range(32, room_width - 32);
    
    var _y_aleatorio = random_range(32, room_height - 32);
    
    instance_create_layer(_x_aleatorio, _y_aleatorio, "Moedas", coin);
}

alarm[0] = 20;
var max_inimigos = 30;

if (instance_number(drone_inimigo) < max_inimigos) {
    
    var _cam = view_camera[0];
    var _cam_x = camera_get_view_x(_cam);
    var _cam_y = camera_get_view_y(_cam);
    var _cam_w = camera_get_view_width(_cam);
    var _cam_h = camera_get_view_height(_cam);
    
    var _spawn_x, _spawn_y;
    

    do {
        _spawn_x = random_range(32, room_width - 32);
        _spawn_y = random_range(32, room_height - 32);
    } 
    until (!point_in_rectangle(_spawn_x, _spawn_y, _cam_x, _cam_y, _cam_x + _cam_w, _cam_y + _cam_h));
    
    instance_create_layer(_spawn_x, _spawn_y, "Inimigos", drone_inimigo);
}

alarm[1] = 120;
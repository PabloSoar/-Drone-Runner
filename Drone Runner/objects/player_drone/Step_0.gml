if (global.estado_jogo == "playing") {
	var _key_forward = keyboard_check(ord("W"));
	var _key_left = keyboard_check(ord("A"));
	var _key_right = keyboard_check(ord("D"));


	if (_key_forward) {
		part_particles_create(global.sistema_particulas, x, y, global.particula_fumaca, 1);
	    if boost == 0{ speed = min(max_speed, speed + acceleration);}
	} else {
	    speed = max(0, speed - (acceleration / 8));
	}

	if (_key_left) {
	    direction += turn_speed;
	}
	if (_key_right) {
	    direction -= turn_speed;
	}

	image_angle = direction - 90;
}

if (boost == 1) {
    part_particles_create(global.sistema_particulas, x, y, global.particula_fumaca_azul, 1);
}

shoot_cooldown = max(0, shoot_cooldown - 1);

if (keyboard_check(vk_space)) {
    
    if (shoot_cooldown <= 0) {
        
        instance_create_layer(x, y, "Drone", bullet);
        
        shoot_cooldown = attack_speed;
    }
}
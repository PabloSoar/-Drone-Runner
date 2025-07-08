if (part_system_exists(global.sistema_particulas)) {
    part_system_destroy(global.sistema_particulas);
}

// Agora, cria o sistema de partículas
global.sistema_particulas = part_system_create_layer("Moedas", false);

// --- Partícula de Fumaça (Laranja/Vermelha) ---
global.particula_fumaca = part_type_create();
part_type_shape(global.particula_fumaca, pt_shape_smoke);
part_type_size(global.particula_fumaca, 0.40, 0.8, -0.01, 0);
part_type_color3(global.particula_fumaca, c_yellow, c_orange, c_red);
part_type_alpha2(global.particula_fumaca, 0.8, 0);
part_type_direction(global.particula_fumaca, 180, 200, 0, 0);
part_type_speed(global.particula_fumaca, 1, 2, -0.05, 0);
part_type_life(global.particula_fumaca, 30, 40);

// --- Partícula de Fumaça (Azul) ---
global.particula_fumaca_azul = part_type_create();
part_type_shape(global.particula_fumaca_azul, pt_shape_smoke);
part_type_size(global.particula_fumaca_azul, 0.40, 0.8, -0.01, 0);
part_type_color3(global.particula_fumaca_azul, c_blue, c_aqua, c_white);
part_type_alpha2(global.particula_fumaca_azul, 0.8, 0);
part_type_direction(global.particula_fumaca_azul, 180, 200, 0, 0);
part_type_speed(global.particula_fumaca_azul, 1, 2, -0.05, 0);
part_type_life(global.particula_fumaca_azul, 100, 120);
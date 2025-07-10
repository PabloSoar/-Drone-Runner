global.estado_jogo = "playing";
global.sistema_particulas = noone;

instance_create_layer(random(room_width), random(room_height), "Moedas", coin);

alarm[0] = 20;

instance_create_layer(random(room_width), random(room_height), "Inimigos", drone_inimigo);

alarm[1] = 120;

global.coins = 0;
global.kills = 0;
global.boost = 1;
global.estado_jogo = "playing";
global.sistema_particulas = noone;
global.piercing_level = 1;

instance_create_layer(random(room_width), random(room_height), "Moedas", coin);

alarm[0] = 20;

instance_create_layer(random(room_width), random(room_height), "Inimigos", drone_inimigo);

alarm[1] = 120;

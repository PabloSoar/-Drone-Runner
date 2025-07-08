if hp == 1{
	global.estado_jogo = "gameover"
}
else{
	hp	-= 1;
}

with (other) {
    instance_destroy();
}
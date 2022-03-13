if global.gameOver
	exit;
	
instance_create_layer(x, y, "Pupil", oAttack);
instance_create_layer(x, y, "Pupil", oAttack);
audio_play_sound(sfxShoot, 0, false);
audio_play_sound(sfxShoot, 0, false);


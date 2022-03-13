if global.gameOver
	exit;

if oPlayer.invul <= 0
{
	oPlayer.hp -= 1;
	oPlayer.invul = room_speed;
}

if oPlayer.hp <= 0
{
	audio_stop_all();
	global.gameOver = true;
	room_goto(GameOver);
}

audio_play_sound(sfxExplosion, 0, false);

instance_destroy();
audio_stop_all();
global.gameOver = false;
audio_play_sound(sfxRain, 2, true);
audio_play_sound(sfxGame, 1, true);
audio_play_sound(sfxThunder, 0, false);
audio_play_sound(sfxThunder, 0, false);
oPlayer.hp = oPlayer.maxHP;
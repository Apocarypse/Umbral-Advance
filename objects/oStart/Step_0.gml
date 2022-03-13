if keyboard_check(vk_space) and image_index <= 0
{
	audio_play_sound(sfxStart, 0, false);
	image_speed = 1;
}
	
if AnimationEnd()
{
	image_speed = 0;
	alarm[0] = 1
}
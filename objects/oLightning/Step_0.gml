if AnimationEnd()
{
	image_speed = 0;
	image_index = 0;
	visible = false;
	
	if not alarm[0]
		alarm[0] = room_speed * random_range(3, 6);
}
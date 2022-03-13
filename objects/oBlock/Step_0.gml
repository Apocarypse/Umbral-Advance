if room == Game
{
	glowing = false;
	x -= global.scrollSpeed;
}
	
if not place_meeting(x, y + 1, oCol)
	y++;
	
if AnimationEnd()
	instance_destroy(self);
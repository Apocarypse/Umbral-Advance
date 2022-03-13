with oEye
	if AnimationEnd()
		oPupil.triggered = true
		
if triggered
{
	move_towards_point(clamp(oPlayer.x, oEye.x - 15, oEye.x + 10), fixedY, 0.3);
	visible = true;
	
	if not alarm[0]
	alarm[0] = room_speed * 2;
	
	if not alarm[1]
		alarm[1] = room_speed * 5;
	
	if not alarm[2]
		alarm[2] = room_speed * 11;
}
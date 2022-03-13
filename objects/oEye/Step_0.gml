if triggered
{
	image_speed = 1;
	image_angle -= 0.5;
}

else
	x += moveSpeed;

if AnimationEnd()
{
	oPupil.visible = true;
	image_speed = 0;
}
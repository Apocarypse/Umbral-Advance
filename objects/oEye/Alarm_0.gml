image_speed += 0.1;

if image_index < image_number - 1
	alarm[0] = 10;

else
{
	image_speed = 0;
	instance_create_layer(x - 4, y - 5, "Pupil", oPupil);
	triggered = true;
}
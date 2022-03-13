var roll = random(100);

if roll >= 25
{
	instance_create_layer(400, 208, "Blocks", oBlock);
	
	if roll >= 50
	{
		instance_create_layer(400, 196, "Blocks", oBlock);
		
		if roll >= 75
			instance_create_layer(400, 180, "Blocks", oBlock);
	}
}

if not alarm[0]
	alarm[0] = room_speed * 1;
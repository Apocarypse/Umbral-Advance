function MakeParticle(sprite, useRandomAngle, pX, pY, xScale, angle)
{
	var thisParticle = instance_create_layer(pX, pY, "Particles", oParticle);
	with thisParticle
	{
		if useRandomAngle
			image_angle = irandom(720);
		else
			image_angle = angle;
			
		sprite_index = sprite;
		image_xscale = xScale;
	}
}
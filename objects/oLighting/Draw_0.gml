if not surface_exists(lightingSurface)
	lightingSurface = surface_create(room_width, room_height);

surface_set_target(lightingSurface);

draw_clear_alpha(c_black, darkness);

with oGlow
{
	if host.glowing
	{	
		var wobbleAmountX = image_xscale;
		var wobbleAmountY = image_yscale;
	
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(sprite_index, image_index, x, y, wobbleAmountX, wobbleAmountY, 0, c_white, 1);
		gpu_set_blendmode(bm_add);
		draw_sprite_ext(sprite_index, image_index, x, y, wobbleAmountX, wobbleAmountY, 0, host.color, host.intensity);
	    gpu_set_blendmode(bm_normal);
	}
}


surface_reset_target();

draw_surface(lightingSurface, 0, 0);
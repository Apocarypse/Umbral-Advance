pSystem = part_system_create_layer("Particles", false);

ptFog = part_type_create();

part_type_shape(ptFog, pt_shape_cloud);
part_type_size(ptFog, 2, 2, 0, 0);
part_type_speed(ptFog, 0.01, 0.02, 0, 0);
part_type_direction(ptFog, 180, 180, 0, 0);
part_type_alpha3(ptFog, 0.1, 0.1, 0.1);
part_type_life(ptFog, 9999999999, 999999999999);

repeat(200)
{
	var randomX = random_range(0, room_width)
	var randomY = random_range(0, room_height);

	part_particles_create(pSystem, randomX, randomY, ptFog, 1);
}

pRainSystem = part_system_create_layer("Particles", false);
pRainEmitter = part_emitter_create(pRainSystem);
ptRain = part_type_create();
part_emitter_region(pRainSystem, pRainEmitter, 0, room_width, room_height, room_height - 1000, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(pRainSystem, pRainEmitter, ptRain, 30);
part_type_alpha3(ptRain, 0, 1, 0);
part_type_color3(ptRain, c_white, c_purple, c_gray);
part_type_life(ptRain, game_get_speed(gamespeed_fps), game_get_speed(gamespeed_fps) * 2);
part_type_scale(ptRain, 1, 1);
part_type_gravity(ptRain, 0.15, 250);
part_type_sprite(ptRain, sRain, 0, 0, 1);
part_type_size(ptRain, 0.5, 0.5, 0, 0);
part_type_orientation(330, 330, 0, 0, 0, 0);

pDustSystem = part_system_create();
pEmitter = part_emitter_create(pDustSystem);
ptDust = part_type_create();
part_emitter_region(ptDust, pEmitter, 0, display_get_width(), room_height / 1.3, room_height / 3, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(pDustSystem, pEmitter, ptDust, 1); //3
part_type_alpha3(ptDust, 0, 1, 0);
part_type_color3(ptDust, c_white, c_fuchsia, c_gray);
part_type_life(ptDust, game_get_speed(gamespeed_fps), game_get_speed(gamespeed_fps) * 2);
part_type_scale(ptDust, 1, 1);
part_type_gravity(ptDust, 0.01, 180);
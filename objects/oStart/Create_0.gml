image_speed = 0;

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
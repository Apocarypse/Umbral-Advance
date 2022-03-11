x = host.x;
y = host.y;
sprite_index = asset_get_index(sprite_get_name(host.sprite_index) + "Glow")
image_xscale = host.image_xscale;
image_yscale = host.image_yscale;
image_index = host.image_index;
image_alpha = host.image_alpha;
image_angle = host.image_angle;
visible = host.visible;

if image_xscale == 0
	image_xscale = 1;

sineWave = 0.15 + (1 + sin(2 * pi * current_time / 1000 * 0.30)) * 0.01;

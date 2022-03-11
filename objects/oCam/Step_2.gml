#macro view view_camera[0]

camera_set_view_size(view, viewWidth, viewHeight);

if instance_exists(oPlayer)
{
	var _x = clamp(oPlayer.x - viewWidth / 2, 0, room_width - viewWidth);
	
	camera_set_view_pos(view, _x, y);
	
	
	var currentX = camera_get_view_x(view);
	
	x = lerp(currentX, _x, 0.1);
	
	camera_set_view_pos(view, x, y);
}
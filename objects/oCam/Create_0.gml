// zoom
zoom = 5;
viewWidth = global.viewWidth / zoom;
viewHeight = global.viewHeight / zoom;

y = oPlayer.y - 180;


// window size
windowScale = 5;

window_set_size(viewWidth * windowScale, viewHeight * windowScale);
alarm[0] = 1;

surface_resize(application_surface, viewWidth * windowScale, viewHeight * windowScale);
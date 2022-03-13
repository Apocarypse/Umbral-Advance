window_set_caption("Umbral Advance");

randomize();

global.viewWidth = 1920;
global.viewHeight = 1080;
global.keyLeft = vk_left;
global.keyRight = vk_right;
global.keyJump = vk_space;
global.scrollSpeed = 0.3;
global.gameOver = false;

if room == Intro
	alarm[0] = room_speed * 15;
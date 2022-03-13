wobble = 0.1;
color = c_white;
intensity = 0.001;
glow = new MakeGlow(self);
glowing = true;
glowAmount = 1.5;
sineMod = 0.10;
visible = true;
image_speed = 1;
audio_play_sound(sfxThunder, 0, false);

alarm[0] = room_speed * 15;
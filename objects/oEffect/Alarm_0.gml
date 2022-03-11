fx = fx_create("_filter_edgedetect");
fx_set_parameter(fx, "g_Threshold", 0);
layer_set_fx("Controllers", fx);

oLighting.darkness = 0;
oPlayer.canMove = true;
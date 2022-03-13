if global.gameOver
	exit;
	
move_towards_point(oPlayer.x + (instance_number(oAttack) * 5), oPlayer.y, 1 * max( instance_number(oAttack), 2));
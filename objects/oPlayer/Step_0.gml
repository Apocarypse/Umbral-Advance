if not canMove
	exit;

#region input

var keyLeft = keyboard_check(global.keyLeft);
var keyRight = keyboard_check(global.keyRight);
var keyJump = keyboard_check_pressed(global.keyJump);

var move = keyRight - keyLeft;

horizontalSpeed = move * moveSpeed;
verticalSpeed += fallSpeed;

var dir = sign(horizontalSpeed);

if keyJump and not jumping
{
	jumping = true;
	verticalSpeed -= jumpSpeed;
}

#endregion

#region collision

if place_meeting(x + horizontalSpeed, y, oCol)
{
	while not place_meeting(x + dir, y, oCol)
		x += dir;
		
	horizontalSpeed = 0;
}

x += horizontalSpeed;

if place_meeting(x, y + verticalSpeed, oCol)
{
	jumping = false;
	
	while not place_meeting(x, y + sign(verticalSpeed), oCol)
		y += sign(verticalSpeed);
	
	verticalSpeed = 0;
}

y += verticalSpeed;

#endregion

#region animation

if horizontalSpeed != 0
	image_xscale = sign(horizontalSpeed);
	
image_speed = horizontalSpeed != 0 ? 1 : 0;

if image_speed == 0
	image_index = 0;
	
#endregion
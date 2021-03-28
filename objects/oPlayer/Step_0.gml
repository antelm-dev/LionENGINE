//onFloor = position_meeting(x + hSpeed + sign(hSpeed)*10, y + vSpeed + sign(vSpeed)*10, oArea);

//SET DIRECTION AND MOVEMENT
inputDir =  round(point_direction(0, 0, LXAxis, LYAxis));
isMoving = LXAxis != 0 or LYAxis != 0;

//CONTINUE TO CURRENT PLAYER'S STATE
if !global.gamePaused and state != 2 {
	event_user(state);
} else {
	hSpeed = 0; vSpeed = 0;
}





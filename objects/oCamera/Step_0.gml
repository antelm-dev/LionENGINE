//SET FOLLOWING OF CAMERA
if instance_exists(follow) {
	xTo = follow.x;
	yTo = follow.y;
} 

//SET CAMERA DELAY
if !global.gamePaused and !instance_exists(oText) {
	x += (xTo - x) / camDelay;
	y += (yTo - y) / camDelay;
} 

//LIMITS CAMERA POSITION TO ROOM SIZE
x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

//SET SCREEN SHAKE
x += irandom_range(-shakeRemain, shakeRemain);
y += irandom_range(-shakeRemain, shakeRemain);
shakeRemain = max(0, shakeRemain - ((1/shakeLength) * shakeMagnitude));

//SET CAMERA POSITION
camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);

//SET PARALAX BACKGROUND
if !global.gamePaused {
	cloudPos += 0.02;
	layer_x("bg_last", camera_get_view_x(cam));
	layer_y("bg_last", (camera_get_view_y(cam) - 75) / 1.1);
	layer_x("bg_first", camera_get_view_x(cam) / 1.3);
	layer_y("bg_first", (camera_get_view_y(cam) - 50) / 1.1);
	layer_x("bg_second", camera_get_view_x(cam) / 1.4 + cloudPos);
	layer_y("bg_second", (camera_get_view_y(cam) - 75) / 1.2);
}
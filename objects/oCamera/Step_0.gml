if instance_exists(follow) {
	xTo = follow.x;
	yTo = follow.y;
} 
if !global.gamePaused and !instance_exists(oText) {
	x += (xTo - x) / camDelay;
	y += (yTo - y) / camDelay;
} 


x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

x += irandom_range(-shakeRemain, shakeRemain);
y += irandom_range(-shakeRemain, shakeRemain);

shakeRemain = max(0, shakeRemain - ((1/shakeLength) * shakeMagnitude));

camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);

layer_x("bg_last", camera_get_view_x(cam));
layer_y("bg_last", (camera_get_view_y(cam) - 75) / 1.1);
layer_x("bg_first", camera_get_view_x(cam) / 1.3);
layer_y("bg_first", (camera_get_view_y(cam) - 75) / 1.1);
layer_x("bg_second", camera_get_view_x(cam) / 1.4);
layer_y("bg_second", (camera_get_view_y(cam) - 75) / 1.2);

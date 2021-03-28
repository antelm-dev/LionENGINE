draw_self();

//DRAW CONTROL TO PRESS IF AN ENTITY IS NEAR
if activate != noone {
	with activate draw_key(global.keyAccept, x, y);
}

/*
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);





function create_textBox(msg, bg){
	var _obj;
	if instance_exists(oText) _obj = oTextQueued;
	else _obj = oText;
	with instance_create_layer(0, 0, "Text", _obj) {
		message = msg;
		background = bg;
		if instance_exists(other) originInstance = other.id;
		else originInstance = noone;
	}
	with oPlayer {
		if state != 2 {
			lastState = state;
			state = 2;
		}
	}
}


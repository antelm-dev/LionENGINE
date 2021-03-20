/// @description Detect Input device

global.inputDevice = "";

var j = 0;

for (i = 0; i <= gamepad_get_device_count(); i++;) {
	if gamepad_is_connected(i) {
		global.controllers[j] = i;
		gamepad_set_axis_deadzone(global.controllers[j], 0.2);
		j++
		global.inputDevice = "gamepad";
		break;
	} 
}

if global.inputDevice == "" { 
	global.inputDevice = "keyboard";
}


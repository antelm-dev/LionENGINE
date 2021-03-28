/// @description Detect Input device

global.inputDevice = "";

var j = 0;

//CHECK ALL GAMEPAD SLOTS
//=> IF A GAMEPAD IS CONNECTED SET INPUT DEVICE TO GAMEPAD AND STOCK USED SLOT IN CONTROLLERS ARRAY
for (i = 0; i <= gamepad_get_device_count(); i++;) {
	if gamepad_is_connected(i) {
		global.controllers[j] = i;
		gamepad_set_axis_deadzone(global.controllers[j], 0.2);
		j++
		global.inputDevice = "gamepad";
		break;
	} 
}

//IF INPUT DEVICE IS NOT DEFINED SET IT TO KEYBOARD
if global.inputDevice == "" { 
	global.inputDevice = "keyboard";
}


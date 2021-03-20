switch (global.inputDevice) {
	case "gamepad": 
		global.LStick_HAxis = gamepad_axis_value(global.controllers[0], gp_axislh);
		global.LStick_VAxis = gamepad_axis_value(global.controllers[0], gp_axislv);
		global.RStick_HAxis = gamepad_axis_value(global.controllers[0], gp_axisrh);
		global.RStick_VAxis = gamepad_axis_value(global.controllers[0], gp_axisrv);
		global.LStick_HAxis = gamepad_axis_value(global.controllers[0], gp_axislh);
		global.pressedAccept = gamepad_button_check_pressed((global.controllers[0]), global.btnA);
		global.pressedReturn = gamepad_button_check_pressed((global.controllers[0]), global.btnB);
		pressedPause = gamepad_button_check_pressed((global.controllers[0]), global.btnStart);
		break;
	case "keyboard":
		global.pressedAccept = keyboard_check_pressed(global.keyAccept);
		global.pressedReturn = keyboard_check_pressed(global.keyReturn);
		pressedPause = keyboard_check_pressed(global.keyQuit);
		
}




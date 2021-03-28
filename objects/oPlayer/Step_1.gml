//SET CONTROLS ACCORDING TO CURRENT INPUT DEVICE 
switch (global.inputDevice) {
	case "gamepad":
		kR = gamepad_button_check(global.controllers[0], global.DpadRIGHT);
		kL = gamepad_button_check(global.controllers[0], global.DpadLEFT);
		kD = gamepad_button_check(global.controllers[0], global.DpadDOWN);
		kU = gamepad_button_check(global.controllers[0], global.DpadUP);
		kDodge = gamepad_button_check_pressed(global.controllers[0], global.btnLb);
		kAttack = gamepad_button_check_pressed(global.controllers[0], global.btnX);
		kAccept = gamepad_button_check_pressed(global.controllers[0], global.btnA);
		kReturn = gamepad_button_check_pressed(global.controllers[0], global.btnB);
		kStrafe = gamepad_button_check_pressed(global.controllers[0], global.btnRb);
		LXAxis = global.LStick_HAxis + (kR - kL);
		LYAxis = global.LStick_VAxis + (kD - kU);	
		break;
	case "keyboard":
		kR = keyboard_check(global.keyRIGHT);
		kL = keyboard_check(global.keyLEFT);
		kD = keyboard_check(global.keyDOWN);
		kU = keyboard_check(global.keyUP);
		kDodge = keyboard_check_pressed(global.key1);
		kAccept = keyboard_check_pressed(global.keyAccept);
		kReturn = keyboard_check_pressed(global.keyReturn);
		kAttack = keyboard_check_pressed(global.key2)
		LXAxis = kR - kL;
		LYAxis = kD - kU;	
		break;
}

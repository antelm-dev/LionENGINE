switch (global.inputDevice) {
	case "gamepad":
		kR = gamepad_button_check_pressed(global.controllers[0], global.DpadRIGHT);
		kL = gamepad_button_check_pressed(global.controllers[0], global.DpadLEFT);
		kD = gamepad_button_check_pressed(global.controllers[0], global.DpadDOWN);
		kU = gamepad_button_check_pressed(global.controllers[0], global.DpadUP);
		kDodge = gamepad_button_check_pressed(global.controllers[0], global.btnLb);
		kAttack = gamepad_button_check_pressed(global.controllers[0], global.btnX);
		kAccept = gamepad_button_check_pressed(global.controllers[0], global.btnA);
		kReturn = gamepad_button_check_pressed(global.controllers[0], global.btnB);
		kStrafe = gamepad_button_check_pressed(global.controllers[0], global.btnRb);
		LXAxis = global.LStick_HAxis;
		LYAxis = global.LStick_VAxis;	
		break;
	case "keyboard":
		kR = keyboard_check(global.keyRIGHT);
		kL = keyboard_check(global.keyLEFT);
		kD = keyboard_check(global.keyDOWN);
		kU = keyboard_check(global.keyUP);
		kDodge = keyboard_check_pressed(global.key1);
		kAccept = keyboard_check_pressed(global.keyAccept);
		kReturn = keyboard_check_pressed(global.keyReturn);
		LXAxis = kR - kL;
		LYAxis = kD - kU;	
		break;
}

inputDir =  round(point_direction(0, 0, LXAxis, LYAxis));
isMoving = LXAxis != 0 or LYAxis != 0;

x += hSpeed;
y += vSpeed;

if !global.gamePaused event_user(state);
else {
	hSpeed = 0; vSpeed = 0;
}


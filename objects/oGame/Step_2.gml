if pressedPause {
	global.gamePaused = !global.gamePaused;
	if global.gamePaused {
		with all {
			gamePausedImageSpeed = image_speed;
			image_speed = 0;
		}
	} else {
		with all {
			image_speed = gamePausedImageSpeed;
		}
	}
}


if keyboard_check_pressed(vk_f1) game_restart();
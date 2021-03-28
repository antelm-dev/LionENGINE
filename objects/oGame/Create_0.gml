randomize();

//INIT CONTROLS
{
	//INIT GAMEPAD INPUT
	global.LStick_HAxis = 0;
	global.LStick_VAxis = 0;
	global.RStick_HAxis = 0;
	global.RStick_VAxis = 0;
	global.DpadUP = gp_padu;
	global.DpadDOWN = gp_padd;
	global.DpadLEFT = gp_padl;
	global.DpadRIGHT = gp_padr;
	global.btnA = gp_face1;
	global.btnB = gp_face2;
	global.btnX = gp_face3;
	global.btnY = gp_face4;
	global.btnL =  gp_shoulderl;
	global.btnLb =  gp_shoulderlb;
	global.btnR =  gp_shoulderr;
	global.btnRb =  gp_shoulderrb;
	global.btnStart =  gp_start;
	global.btnSelect =  gp_select;
	global.btnLStick =  gp_stickl;
	global.btnRStick =  gp_stickr;
	
	//INIT KEYBOARD INPUT
	global.keyRIGHT = vk_right;
	global.keyLEFT = vk_left;
	global.keyDOWN = vk_down;
	global.keyUP = vk_up;
	global.keyAccept = vk_enter;
	global.keyQuit = vk_escape;
	global.keyReturn = vk_backspace;
	global.key1 = ord("Z");
	global.key2 = ord("X");
	global.key3 = ord("");
	global.key4 = ord("");
	global.key5 = ord("");
	global.key6 = ord("");
	global.key7 = ord("");
	global.key8 = ord("");
	global.key9 = ord("");
	global.key10 = ord("");
	global.key11 = ord("");
	global.key12 = ord("");
	
	global.controllers = [];
	event_user(0);
}


// INIT GLOBALS AND GAME CONTROLS
global.iCamera = instance_create_layer(0, 0, layer, oCamera);
global.textSpeed = .25;
pressedPause = noone;
global.btnOK = noone;
global.btnReturn = noone;
global.gamePaused = false;
surfPause = noone;
fullscreen = false;

instance_create_layer(0, 0, layer, oDebug);
surface_resize(application_surface, RES_W, RES_H);
room_goto(ROOM_START);
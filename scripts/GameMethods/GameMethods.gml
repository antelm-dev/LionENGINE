//create_textBox(msg, bg, resp)
//Creates a Text Box with a given message / background and possible responses
function create_textBox(msg, bg, resp){
	var _obj;
	//if instance_exists(oTextQueued) ticket++;
	if instance_exists(oText) _obj = oTextQueued;
	else _obj = oText;
	with instance_create_layer(0, 0, "Text", _obj) {
		message = msg;
		background = bg;
		responses = [];
		if instance_exists(other) originInstance = other.id;
		else originInstance = noone;
		if (is_array(resp)) {
			responses = resp;
			for (var i = 0; i < array_length(responses); i++) {
			    var _markerPosition = string_pos(":", responses[i]);
				responseScripts[i] = real(string_copy(responses[i], 1, _markerPosition - 1));
				responses[i] = string_delete(responses[i], 1, _markerPosition);
			}
		} else {
			responses = [-1]
			responseScripts = [-1];
		}
	}
	with oPlayer {
		if state != 2 {
			state = 2;
		}
	}
}

//dialogue_response(arg)
//Handles dialogues responses
function dialogue_response(arg) {
	switch (arg) {
		case 1 : create_textBox("Ah, tu veux du gateau a la fraise ?", 0, ["3:Pourquoi pas !","4:Ou ca ?!"]) break;
		case 2 : create_textBox("Je vais bien merci.", 0) break;
		case 3 : case 4 : 
			create_textBox("Il faut que tu ailles au village de la foret !\n", 0); 
			create_textBox("Ils preparent d'excellent gateaux,\n" + 
						   "tu vas te regaler petit filou !", 0);
			break;
		default : case 0 : break;
	}
	
}

//draw_key(key, x, y)
//Draw a game key corresponding to input device
function draw_key(key, x, y) {
	switch global.inputDevice {
		case "gamepad" :
			switch (key) {
				case global.keyAccept : draw_sprite(sPSBtns, 2, x, y - sprite_get_height(self.sprite_index) - 8); break;		
			}
			break;
		case "keyboard" :
			switch (key) {
				case global.keyAccept : draw_text(x, y, "Enter"); break;		
			}
			break;
	}
}

//animateSprite()
//Handles player's animation
function animateSprite() {
	var _totalFrames = sprite_get_number(sprite_index) / 8;
	image_index = localFrame + (CARDINAL_DIR * _totalFrames);
	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE * spd + 0.05
	if localFrame >= _totalFrames {
		animationEnd = true;
		localFrame -= _totalFrames;
	} else animationEnd = false;
}
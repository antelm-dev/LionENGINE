//LIMITS SELECTABLE RESPONSES TO 0 AND MAX GIVEN RESPONSES
var _max = array_length(responses) - 1;
var _min = 0;
responseSelected += global.pressedDOWN - global.pressedUP
if (responseSelected > _max) responseSelected = _min;
if (responseSelected < _min) responseSelected = _max;

//ANIMATE TEXT
if !global.gamePaused {
	textProgress += global.textSpeed;
}

//ANIAMTE TEXT BOX
lerpProgress += (1 - lerpProgress) / 50;
if !closed{
	x1 = lerp(x1, x1Target, lerpProgress);
	x2 = lerp(x2, x2Target, lerpProgress);
} 

//SET MESSAGE LENGTH AND SEE IS IT AS BEEN FULLY DISPLAYED
var _messageLength = string_length(message);
msgComplete = textProgress >= _messageLength 

//FULLY DISPLAY MESSAGE IF ACCEPT KEY OR RETURN KEY IS PRESSED AND 
//=> IF IT IS ALREADY, CLOSE AND SET PLAYER STATE TO FREE STATE OR CREATE A NEW TEXT BOX IF THERE'S ONE OR MORE WAITING
if global.pressedAccept or global.pressedReturn  {
	if msgComplete {
		
		if responses[0] != -1 {
			with originInstance {
				dialogue_response(other.responseScripts[other.responseSelected]);
			}
		}
		if instance_exists(oTextQueued) {
			for (var i = 0; i < instance_number(oTextQueued); i++;) {
				with (instance_find(oTextQueued, i)) ticket--;
			}
		} else {
			oPlayer.state = 0;
		}
		
		closed = true;
		
	} else if textProgress > 2 {
		textProgress = _messageLength;
	}
}

//HANDLES CLOSING ANIMATION
if closed {
	print = "";
	x1 += 10;
	x2 -= 10;
	if (-x1 + x2) < 50 instance_destroy();
} else print = string_copy(message, 1, textProgress);
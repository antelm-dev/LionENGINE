lerpProgress += (1 - lerpProgress) / 50;
textProgress += global.textSpeed;
if !closed{
	x1 = lerp(x1, x1Target, lerpProgress);
	x2 = lerp(x2, x2Target, lerpProgress);
} 
var _messageLength = string_length(message);
msgComplete = textProgress >= _messageLength 

if global.pressedAccept or global.pressedReturn  {
	if msgComplete {
		if instance_exists(oTextQueued) {
			oTextQueued.ticket--
			instance_destroy();
		} else {
			oPlayer.state = oPlayer.lastState;
			closed = true;
		}
	} else if textProgress > 2 {
		textProgress = _messageLength;
	}
}
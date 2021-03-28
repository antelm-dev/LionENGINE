/// @description Dodge State
//SET H AND V SPEED
hSpeed = lengthdir_x(spd, direction);
vSpeed = lengthdir_y(spd, direction);

moveDistanceRemaining = max(0, moveDistanceRemaining - abs(spd));

//CONTINUE TO FREE STATE IF DODGE FRAMES ARE OVER
if moveDistanceRemaining < 1 {
	state = 0;
}

//SET SPRITE
if sign(spd) > 0 sprite_index = sprDodge;
else sprite_index = sprDodgeB;
var _totalFrames = sprite_get_number(sprite_index)/8;
image_index = (CARDINAL_DIR * _totalFrames) + min(((1 - (moveDistanceRemaining / distanceDodge)) * (_totalFrames)), _totalFrames - 1);





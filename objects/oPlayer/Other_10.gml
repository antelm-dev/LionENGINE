/// @description Free State
//SET STICK VELOCITY AND SPEED
var magnitude = max(abs(LXAxis),abs(LYAxis));

if magnitude <= 0.3 spd = 0.3;
else if magnitude <= 0.6 spd = 0.5;
else if magnitude > 0.6  spd = 0.8;

//SET H AND V SPEED
hSpeed = lengthdir_x(isMoving * spd, inputDir);
vSpeed = lengthdir_y(isMoving * spd, inputDir);

//CONTINUE TO DODGE STATE
if kDodge {
	if isMoving {
		moveDistanceRemaining = distanceDodge;
		spd = 1.2;
	} else {
		moveDistanceRemaining = distanceDodge/2; 
		spd = -1;
	}
	state = 1;
}

if kAttack {
	state = 4;
}



//CHECKS IF AN ENTITY IS NEAR AND IF ACCEPT KEY IS PRESSED
var _activateX = lengthdir_x(10, direction);
var _activateY = lengthdir_y(10, direction);
if position_meeting(x + _activateX, y + _activateY, oEntity) activate = instance_position(x + _activateX, y + _activateY, oEntity);
else activate = noone;
if kAccept {	
	if activate != noone and activate.entityActivateScript != -1 {
		state = 2;
		if (activate.entityNPC) {
			with (activate) {
				direction = point_direction(self.x, self.y, other.x, other.y);
				image_index = CARDINAL_DIR;
			}
		}
		script_execute_array(activate.entityActivateScript, activate.entityActivateArgs);
	}
}



//SET SPRITE
var _currentSpr = sprite_index;
if isMoving != 0 {
	direction = inputDir;
	sprite_index = sprWalk;
} else sprite_index = sprIdle;
if _currentSpr != sprite_index localFrame = 0;
 
animateSprite();
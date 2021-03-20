/// @description Free State

var magnitude = max(abs(LXAxis),abs(LYAxis));

if magnitude <= 0.3 spd = 0.3;
else if magnitude <= 0.6 spd = 0.5;
else if magnitude > 0.6  spd = 0.8;

hSpeed =  lengthdir_x(isMoving * spd, inputDir);
vSpeed =  lengthdir_y(isMoving * spd, inputDir);

if kDodge {
	if isMoving {
		moveDistanceRemaining = distanceDodge;
		spd = 1;
	} else {
		moveDistanceRemaining = distanceDodge/2; 
		spd = -1;
	}
	state = 1;
}

var _activateX = lengthdir_x(10, direction);
var _activateY = lengthdir_y(10, direction);
if position_meeting(x + _activateX, y + _activateY, oEntity)
		activate = instance_position(x + _activateX, y + _activateY, oEntity);
	else activate = noone;
if kAccept {	
	if activate != noone and activate.entityActivateScript != -1 {
		script_execute_array(activate.entityActivateScript, activate.entityActivateArgs)
		if (activate.entityNPC) {
			with (activate) 
				direction = point_direction(x, y, other.x, other.y);
				image_index = CARDINAL_DIR;
		}
	}
}

collisionCheck();

var _currentSpr = sprite_index;
if isMoving != 0 {
	direction = inputDir;
	sprite_index = sprWalk;
} else sprite_index = sprIdle;
if _currentSpr != sprite_index localFrame = 0;
 
animateSprite();
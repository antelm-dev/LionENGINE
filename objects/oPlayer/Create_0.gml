spd = 0;
hSpeed = 0;
vSpeed = 0;
distanceDodge = 20;
lastState = 0;
state = 0;
activate = noone;
collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0;
localFrame = 0;
sprIdle = sPlayerIdle;
sprWalk = sPlayerWalk;
sprDodge = sPlayerDodge;
sprDodgeB = sPlayerBackwardsDodge;
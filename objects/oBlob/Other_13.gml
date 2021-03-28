/// @description Dead State
sprite_index = spriteDie;
hSpeed = -lengthdir_x(spd/2, direction);
vSpeed = -lengthdir_y(spd/2, direction);
deathFrames--;
if deathFrames < 1 instance_destroy();


function collisionCheck(){
	var _collision = false;
	
	if (tilemap_get_at_pixel(collisionMap, x + sign(hSpeed), y)) {
		x -= x mod TILE_SIZE;
		if (sign(hSpeed) == 1) x +=  TILE_SIZE - 1; 
		hSpeed = 0;
		_collision = true;
	}
	
	if (tilemap_get_at_pixel(collisionMap, x , y + sign(vSpeed))) {
		y -= y mod TILE_SIZE;
		if (sign(vSpeed) == 1) y +=  TILE_SIZE - 1; 
		vSpeed = 0;
		_collision = true;
	}
	
	return _collision;
}

function animateSprite() {
	var _totalFrames = sprite_get_number(sprite_index) / 8;
	image_index = localFrame + (CARDINAL_DIR * _totalFrames);
	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE * spd + 0.05
	if localFrame >= _totalFrames {
		animationEnd = true;
		localFrame -= _totalFrames;
	} else animationEnd = false;
}

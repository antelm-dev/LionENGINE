//CHECK COLLISIONS
var _colBottom = false;
var _colTop = false;
var _colRight = false;
var _colLeft = false;
//instCol = instance_position(x + hSpeed + 1 * sign(hSpeed), y + vSpeed + 1 * sign(vSpeed), OBJECT);
var _hCol = position_meeting(x + hSpeed + 1 * sign(hSpeed), y, oWall);
var _vCol = position_meeting(x, y + vSpeed + 1 * sign(vSpeed), oWall);
if _hCol{
	if (bbox_right + hSpeed >= oWall.bbox_left) { 
	    hSpeed = 0;
		_colRight = true;
	} else if (bbox_left + hSpeed <= oWall.bbox_right) { 
	    hSpeed = 0;
		_colLeft = true;
	}
}
if _vCol{
	if (bbox_bottom + vSpeed >= oWall.bbox_top)  { 
	    vSpeed = 0;
		_colBottom = true;
	} else if (bbox_top + vSpeed <= oWall.bbox_bottom) { 
	    vSpeed = 0;
		_colTop = true;
	}
}

//SET POSITION IN ROOM
x += hSpeed;
y += vSpeed;

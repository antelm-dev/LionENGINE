//screenShake(magnitude, frames) 
//Make the screen shake !
function screenShake(magnitude, frames) {
	with (oCamera) 
	{
		if (argument[0] > shakeRemain) 
		{
			shakeMagnitude = argument[0];
			shakeRemain = shakeMagnitude;
			shakeLength = argument[1];
		}
	}
}

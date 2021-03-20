function screenShake(magnitude, frames) 
{
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

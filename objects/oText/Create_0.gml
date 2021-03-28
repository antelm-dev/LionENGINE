//SET TEXT BOX SIZE AT ANIMATION BEGIN
x1 = RES_W/2-10;
y1 = RES_H - 70;
x2 = RES_W / 2+10;
y2 = RES_H;

//SET TEXT BOX SIZE AT ANIMATION END
x1Target = 0;
x2Target = RES_W;

//INIT VARIABLES
lerpProgress = 0;
textProgress = 0;
msgComplete = false;
closed = false;
print = "";
responseSelected = 0;

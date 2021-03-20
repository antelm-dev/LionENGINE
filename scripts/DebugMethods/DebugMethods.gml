function drawControls(){
	draw_set_font(fnt_game);
	draw_set_colour(c_white);
	
	switch (inputDevice) {
		case "gamepad" : 
			if displayGUI {	
				var Dpad; 
				var buttons;
				Dpad = instance_create_layer(20, room_height-30, "Instances", oDpad);
				buttons = instance_create_layer(room_width-40, room_height-30, "Instances", oButtons);
				Dpad.visible = true;
				buttons.visible = true;		
				draw_set_colour(c_white);		
				if (global.DpadUP == true) {
				with (Dpad) {
					draw_triangle(x+15, y-10, x+20, y-15, x+25, y-10, 0);
				}
				
			};
				if (global.DpadDOWN == true) {
				with (Dpad) {
					draw_triangle(x+15, y+10, x+20, y+15, x+25, y+10, 0);
				}
				
			};
				if (global.DpadLEFT == true) {
				with (Dpad) {
					draw_triangle(x+5, y, x+10, y+5, x+10, y-5, 0);
				}
				
			};
				if (global.DpadRIGHT == true) {
				with (Dpad) {
					draw_triangle(x+30, y+5, x+30, y-5, x+35, y, 0);
				}
			};			
				if (global.btnA == true) {
				with (buttons) {
					draw_set_colour(c_blue);
					draw_circle(x, y+12, 6, false);
				}
			}
				if (global.btnB == true) {
				with (buttons) {
					draw_set_colour(c_red);
					draw_circle(x+12, y, 6, false);
				}
			}
				if (global.btnX == true) {
				with (buttons) {
					draw_set_colour(c_green);
					draw_circle(x-12, y, 6, false);
				}
			}
				if (global.btnY == true) {
				with (buttons) {
					draw_set_colour(c_yellow);
					draw_circle(x, y-12, 6, false);
				}
			}
			} else if !displayGUI {
				if instance_exists(oDpad) and instance_exists(oButtons){
					instance_destroy(oDpad);
					instance_destroy(oButtons);
				};
			}
			break;
			
		case "keyboard":
			break;
	}
}

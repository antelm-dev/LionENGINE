draw_set_colour(c_black);
draw_roundrect(x,y+10,x+40,y-10,0);
draw_roundrect(x+10,y-20,x+30,y+20,0);
draw_set_colour(c_gray);
draw_triangle(x+15, y-10, x+20, y-15, x+25, y-10, 1);
draw_triangle(x+15, y+10, x+20, y+15, x+25, y+10, 1);
draw_triangle(x+5, y, x+10, y+5, x+10, y-5, 1);
draw_triangle(x+30, y+5, x+30, y-5, x+35, y, 1);

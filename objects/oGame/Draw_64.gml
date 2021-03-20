draw_set_font(fnt_game);
draw_set_colour(c_white);

if global.gamePaused {
	if !surface_exists(surfPause) {
		surfPause = surface_create(RES_W, RES_H);
		surface_set_target(surfPause);
		draw_clear_alpha(c_black,0.3);
		draw_set_halign(fa_center);
		draw_text(surface_get_width(surfPause)/2, RES_H/2, "PAUSE")
		surface_reset_target();
	} else {
		draw_surface(surfPause, 0, 0);
	}
}
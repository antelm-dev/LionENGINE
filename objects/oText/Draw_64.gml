if closed {
	message = "";
	x1 += 10;
	x2 -= 10;
	if (-x1 + x2) < 50 instance_destroy();
}

nine_slice_box_stretched(sTextBox, x1, y1, x2, y2, background);
draw_set_font(fnt_game);

draw_set_valign(fa_top);
draw_set_color(c_black);

var _print = string_copy(message, 1, textProgress);
draw_text(x1 + 8, y1 + 8, _print);
draw_set_color(c_white);
draw_text(x1 + 8, y1 + 7, _print);
if msgComplete draw_triangle(x2 - 16, y2 - 16, x2 - 14, y2-13, x2 - 12, y2 - 16, false);
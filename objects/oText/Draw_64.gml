//CREATE BOX
nine_slice_box_stretched(sTextBox, x1, y1, x2, y2, background);

//SHOW AVAILABLE RESPONSES 
if (responses[0] != -1 and msgComplete and !closed) {
	for (var i = 0; i < array_length(responses); i++) {
		print += "\n";
		if (i == responseSelected) print += "> ";
		print += responses[i];
		if (i == responseSelected) print += " <";
	}
}

//DRAW TEXT ON TEXTBOX
draw_set_font(fnt_game);
draw_set_valign(fa_top);
draw_set_color(c_black);
draw_text(x1 + 8, y1 + 8, print);
draw_set_color(c_white);
draw_text(x1 + 8, y1 + 7, print);
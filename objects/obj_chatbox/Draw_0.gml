if (active) {
    draw_sprite(spr_chatbox, 0, x, y);
    draw_sprite(spr_profile, 0, x - 800, y + 10); 
    draw_set_font(fnt_dialogue);
	draw_text(x - 600, y - 200, speaker); // name
    draw_text(x - 600, y - 100, dialogue_pages[current_page]); // show
}

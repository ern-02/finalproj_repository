if (active) {
	global.canmove = false;
    draw_sprite(spr_chatbox, 0, x, y);
    draw_sprite(spr_profile, 0, x - 800, y + 10); 
    draw_set_font(fnt_dialogue);
	draw_text(x - 600, y - 200, speaker); // name
    draw_text(x - 600, y - 100, dialogue_pages[current_page]); // show
	
	draw_set_font(fnt_functionable)
	draw_text(x - 150, y + 100 , "---Press enter to continue.---")
}

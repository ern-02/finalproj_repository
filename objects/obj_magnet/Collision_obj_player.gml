// copy and paste these code to every stuff that could interact with player

if (!instance_exists(obj_chatbox)) {
    var dialogue_instance = instance_create_layer(x, y, "Dialogue", obj_chatbox);  
	dialogue_instance.active = true;
    dialogue_instance.speaker = "NPC Name"; 
	dialogue_instance.spr_speaker_avatar = spr_profile; 
		
	dialogue_instance.x = room_width / 2;
	dialogue_instance.y = room_height - sprite_height - 240;
	dialogue_instance.dialogue_pages = global.dialogue_pages_magnet; // change this global variable to the global variable that belong to the stuff
	dialogue_instance.current_page = 0;
}

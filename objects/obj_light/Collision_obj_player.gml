if (!instance_exists(obj_chatbox)) {
    var dialogue_instance = instance_create_layer(x, y, "Instances", obj_chatbox);  // 确保对话框出现在合适的位置
	dialogue_instance.active = true;
    dialogue_instance.speaker = "NPC Name"; // 更改为适当的说话者名称
	dialogue_instance.spr_speaker_avatar = spr_profile; // 更改为适当的头像精灵
		
	dialogue_instance.x = room_width / 2;
	dialogue_instance.y = room_height - sprite_height - 240;
	dialogue_instance.dialogue_pages = global.dialogue_pages_bell;
	dialogue_instance.current_page = 0;
}

/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(ord("D"))){
	if(keyboard_check(vk_shift)){
		x+=10;
	}else{
		x+=5;
	}
}

if(keyboard_check(ord("A"))){
	if(keyboard_check(vk_shift)){
		x-=10;
	}else{
		x-=5;
	}
	
}


if(global.lightgot = true){
	if(mouse_check_button_pressed(mb_left)){
		var bullet =instance_create_layer(x,y,"Instances",obj_bullet);
		bullet.speed = 10;
		bullet.direction = point_direction(x,y,mouse_x,mouse_y);
		bullet.image_angle = bullet.direction;
	}
}


if(keyboard_check(ord("D"))){
	sprite_index = spr_playermoveleft;
}else if(keyboard_check(ord("A"))){
	sprite_index = spr_playermoveright;
}
else if(is_dodging){
	sprite_index = spr_playerhidden;  
}

else{
	sprite_index = spr_player;
}

if(global.coalgot == true){
	if (keyboard_check_pressed(ord("E"))) {
	    is_dodging = !is_dodging;  
	}
}
	


// The code below is the logic of jumping and whether player 
//is on the ground

is_on_ground = place_meeting(x, y + 1, obj_floor);

// jump
if (is_on_ground && keyboard_check_pressed(vk_space)) {
    vspeed = jump_speed;
    is_on_ground = false;
}

// hold the space, big jump
if (!is_on_ground && keyboard_check(vk_space)) {
    jump_hold_time++;
    if (jump_hold_time <= 10) { 
        vspeed = max(jump_speed - (gravity * jump_hold_time), max_jump_height);
    }
}

// gravity
if (!is_on_ground) {
    vspeed += gravity;
}

// apply to the vertical position
y += vspeed;

// reset it after on the ground
if (is_on_ground) {
    vspeed = 0;
    jump_hold_time = 0;
}

// code below is used to trigger the chatbox

if (keyboard_check_pressed(vk_enter)) {
     if (!instance_exists(obj_chatbox)) {
        // 如果对话框实例不存在，创建并激活它
        var dialogue_instance = instance_create_layer(x, y, "Instances", obj_chatbox);

        dialogue_instance.active = true;
        dialogue_instance.speaker = "NPC Name"; // 更改为适当的说话者名称
        dialogue_instance.spr_speaker_avatar = spr_profile; // 更改为适当的头像精灵
		
		dialogue_instance.x = room_width / 2;
		dialogue_instance.y = room_height - sprite_height - 10;
		dialogue_instance.dialogue_pages = global.dialogue_pages1;
		dialogue_instance.current_page = 0;
		
    }
	else {
        var inst = instance_find(obj_chatbox, 0);
        if (inst.active) {
            inst.current_page += 1; // 翻页
            if (inst.current_page >= array_length(inst.dialogue_pages)) {
                inst.active = false; // 如果是最后一页，则关闭对话框
                inst.current_page = 0; // 可选：重置页面索引
				instance_destroy(inst);
				
            }
		}
	}
}







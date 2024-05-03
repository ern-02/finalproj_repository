/// @description Insert description here
// You can write your code in this editor
/*if(keyboard_check(ord("D")) && global.canmove){
	if(keyboard_check(vk_shift)){
		x+=10;
	}else{
		x+=5;
	}
}

if(keyboard_check(ord("A")) && global.canmove){
	if(keyboard_check(vk_shift)){
		x-=10;
	}else{
		x-=5;
	}
	
}*/
leftkey = keyboard_check(ord("A"));
rightkey = keyboard_check(ord("D"));

xspd = (rightkey - leftkey) * move_speed;


if(global.lightgot = true){
	if(keyboard_check(ord("F"))){
// Check the direction of the player and spawn the beam accordingly
		var beam_x = x;
		var beam_y = y;

		// Adjust these values based on the size of your player sprite and beam sprite
		var offset_x = sprite_width / 2 + sprite_get_width(spr_lightbeam) / 2;
		var offset_y = 0; // Change this if needed

		// Depending on the player's facing, adjust the beam's creation point
		switch (image_xscale) {
		    case 1: // Facing right
			    beam_x += offset_x;
				break;
			case -1: // Facing left
			    beam_x -= offset_x;
			    break;
		}

		// Create the beam object at the calculated position
		instance_create_layer(beam_x, beam_y + offset_y, "Instances", obj_lightbeam);
	}
}

if(place_meeting(x + xspd,y,obj_icewall)){
	xspd = 0;
}

if(place_meeting(x + xspd,y,obj_wall)){
	xspd = 0;
}


if(keyboard_check(ord("D")) && global.canmove){
	sprite_index = spr_playermoveleft;
}else if(keyboard_check(ord("A")) && global.canmove){
	sprite_index = spr_playermoveright;
}
else if(keyboard_check(ord("F")) && global.lightgot){
	sprite_index = spr_playertorch;
}
else if(is_dodging && room == Room2){
	sprite_index = spr_playerhidden;  
}else if(keyboard_check(ord("R")) && global.magnetused){
	sprite_index = spr_playermagnet;
}

else{
	sprite_index = spr_player;
}

if(global.coalgot == true){
	if (keyboard_check_pressed(ord("E"))) {
	    is_dodging = !is_dodging;  
	}
}
	
	
if(global.magnetgot == true){
	if(keyboard_check_pressed(ord("R"))){
		global.magnetused = true;
	}
}


// The code below is the logic of jumping and whether player 
//is on the ground

is_on_ground = place_meeting(x, (y ) + 1, obj_floor);

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

x += xspd;

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
        var dialogue_instance = instance_create_layer(x, y, "Dialogue", obj_chatbox);

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
				global.canmove = true;
				
            }
		}
	}
}

if(alive == false){
	room_goto(deathscreen);
}

if(y > room_height){
	alive = false;
	room_goto(deathscreen);
}

global.playerpositionx = x
global.playerpositiony = y;






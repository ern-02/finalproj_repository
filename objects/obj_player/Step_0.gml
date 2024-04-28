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


if(keyboard_check_pressed(vk_space)){
	y-=10;
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
}else if(global.coalgot = true){
	if(keyboard_check_pressed(ord("E"))){
		sprite_index = spr_playerhidden;
	}
}else{
	sprite_index = spr_player;
}
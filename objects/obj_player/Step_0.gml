/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(ord("D"))){
	x+=5;
}

if(keyboard_check(ord("A"))){
	x-=5;
}

if(global.lightgot = true){
	if(mouse_check_button_pressed(mb_left)){
		var bullet =instance_create_layer(x,y,"Instances",obj_bullet);
		bullet.speed = 10;
		bullet.direction = point_direction(x,y,mouse_x,mouse_y);
		bullet.image_angle = bullet.direction;
	}
}

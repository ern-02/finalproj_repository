/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,obj_player)){
	instance_destroy(obj_player);
}

if(global.nightmare == false){
	instance_destroy(id);
}

if(place_meeting(x,y,obj_bullet)){
	instance_destroy(id);
	global.solved = true;
}


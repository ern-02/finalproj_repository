/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,obj_player)){
	global.lightgot = true;
	instance_destroy(id);
}

if(global.nightmare == true){
	instance_destroy(id);
}


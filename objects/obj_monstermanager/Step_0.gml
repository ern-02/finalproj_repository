/// @description Insert description here
// You can write your code in this editor

if(global.solved == true){
	instance_destroy(id);
}

if(global.nightmare == true){
	if(room == Room1){
		instance_create_layer(x,y,"Instances",obj_monster);
	}else if(room == Room3){
		instance_create_layer(x,y,"Instances",obj_monster3);
	}
}

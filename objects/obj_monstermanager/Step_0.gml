/// @description Insert description here
// You can write your code in this editor
if(global.nightmare == true && keyboard_check_pressed(ord("Q"))){
	instance_create_layer(x,y,"Instances",obj_monster);
}

if(global.solved == true){
	instance_destroy(id);
}



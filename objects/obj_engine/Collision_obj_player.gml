/// @description Insert description here
// You can write your code in this editor
if(global.coalgot == true && keyboard_check_pressed(ord("E"))){
	sprite_index = spr_enginerunning;
	if(!interacted){
		global.enginecount++;
	}
	interacted = true;
	//global.nightmare = true;
}
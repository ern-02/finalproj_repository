/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_player) && keyboard_check_pressed(vk_space)){
	if(global.dream == true){
		global.dream = false;
		global.nightmare = true;
	}else{
		global.nightmare = false;
		global.dream = true;
	}
}




/// @description Insert description here
// You can write your code in this editor
if(room == ending1){
	if(keyboard_check_pressed(vk_space)){
		room_goto(ending2);
	}
}else if(room == ending2){
	if(keyboard_check_pressed(vk_space)){
		room_goto(ending3);
	}
}else if(room == ending3){
	if(keyboard_check_pressed(vk_space)){
		room_goto(startscreen);
	}
}
/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_player)){
	if(keyboard_check(vk_space)){
		if(room == Room1){
			room_goto(Room2);
		}if(room == Room2){
			room_goto(Room3);
		}
	}
}
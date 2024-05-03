/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_enter)){
	global.nightmare = false;
	global.dream = true;
	global.solved = false;
	global.lightgot = false;
	global.coalgot = false;
	global.magnetgot = false;
	global.magnetused = false;
	global.playerpositionx = 0;
	global.playerpositiony = 0;
	global.enginecount = 0;
	room_goto(Room1);
}
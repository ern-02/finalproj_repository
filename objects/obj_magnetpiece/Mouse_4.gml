/// @description Insert description here
// You can write your code in this editor
if(global.magnetused == true){
	var player_instance = instance_find(obj_player, 0); // Find the player instance
	if (player_instance != noone) { // Check if the player instance exists
		player_instance.x = x; // Move the player's x-coordinate to the clickable object's x-coordinate
		player_instance.y = y; // Move the player's y-coordinate to the clickable object's y-coordinate
	}
}
/// @description Insert description here
// You can write your code in this editor
// Define the speed at which the monster moves

// Calculate the direction from the monster to the player
var dir = point_direction(x, y, obj_player.x, obj_player.y);

// Update the monster's position to move towards the player
x += lengthdir_x(movespeed, dir);
y += lengthdir_y(movespeed, dir);

if(global.nightmare == false){
	instance_destroy(id);
}

if(y > room_height){
	instance_destroy(id);
}
/// @description Insert description here
// You can write your code in this editor
// Step Event of obj_monster

// Move the monster
x += speed * move_dir;

// Check for direction change
if ((move_dir == 1 && x >= x_end) || (move_dir == -1 && x <= x_start)) {
    move_dir *= -1; // Reverse direction
}

if(global.dream == true{
	instance_destroy(id);
	instance_create_layer(x,y,"Instances",obj_npc2);
}
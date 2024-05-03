/// @description Insert description here
// You can write your code in this editor
if(exists){
	sprite_index = spr_icemelting;  // dead sprite
    image_speed = 0.25;
    exists = false;
    instance_destroy(other);
    alarm[0] = sprite_get_number(spr_icemelting) + 30 / image_speed;

}
/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)) {
    // Get the position of the player
    var player_x = obj_player.x;
    var player_y = obj_player.y;

    // Calculate the direction from the enemy to the player
    var direct = point_direction(x, y, player_x, player_y);

    // Move towards the player
    x += lengthdir_x(speed, direction);
    y += lengthdir_y(speed, direction);

    // Optionally, you can make the enemy face towards the player
    image_angle = direction;  // This line will make the enemy sprite rotate towards the player
}
if (alive) {
    sprite_index = spr_monsterdead;  // dead sprite
    image_speed = 0.25;  
    alive = false;  
    instance_destroy(other);  
    alarm[0] = sprite_get_number(spr_monsterdead) + 30 / image_speed;  // 设置警报以在动画结束后移除敌人

}

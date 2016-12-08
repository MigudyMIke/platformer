///scr_Attack_Ranged()
if(alarm[2] <= 0){
    bullet = instance_create(x, y - 16, obj_Player_Bullet);
    if(down and !place_meeting(x, y + 1, obj_Floor)){
        bullet.direction = 270;
    }
    else if(up){
        bullet.direction = 90;
    }
    else if(facing == MOVING_RIGHT){
        bullet.direction = 0;
    }
    else if(facing == MOVING_LEFT){
        bullet.direction = 180;
    }
    bullet.speed = 7;
    alarm[2] = room_speed / 4;
}
attack_state = scr_Attack_None;
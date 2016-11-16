///scr_Player_Attack()
if(!instance_exists(obj_Attack_Placeholder)){
    attack = instance_create(facing * 16 + x, y - 16, obj_Attack_Placeholder);
}
attack.image_speed = 2 / room_speed;
attack.x = x + facing * 16;
attack.y = y - 16
if(attack.image_index == attack.image_number - 1){
    state = scr_Player_Movement;
    with(attack) instance_destroy();
}

//Continue falling while attacking
if(!place_meeting(x, y + min(fall_speed, max_fall_speed), obj_Floor)){
        y += min(fall_speed, max_fall_speed);
        fall_speed += grav;
    }
else{
    while(!place_meeting(x, y + sign(fall_speed), obj_Floor)){
        y += sign(fall_speed);
    }
    fall_speed = 0;
}

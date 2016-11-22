///scr_Attack_Melee()
if(!instance_exists(obj_Attack_Placeholder)){
    attack = instance_create(x + facing * 16, y - 16, obj_Attack_Placeholder);
    attack.alarm[0] = room_speed / 2;
}
attack.x = x + facing * 16;
attack.y = y - 16;
if(attack.alarm[0] <= 0){
    attack_state = scr_Attack_None;
    with(attack) instance_destroy();
}

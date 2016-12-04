///scr_Player_Knockback()
if(alarm[0] > 0){
    if(!place_meeting(x + lengthdir_x(knockback, kb_direction), y, obj_Floor)){
        x += lengthdir_x(knockback, kb_direction);
    }
    else{
        while(!place_meeting(x + lengthdir_x(knockback, kb_direction), y, obj_Floor)){
        x += sign(lengthdir_x(knockback, kb_direction));
        }
    }
    if(!place_meeting(x, y + lengthdir_y(knockback, kb_direction), obj_Floor)){
        y += lengthdir_y(knockback, kb_direction);
        fall_speed = lengthdir_y(knockback, kb_direction);
    }
    else{
        while(!place_meeting(x, y + sign(lengthdir_y(knockback, kb_direction)), obj_Floor)){
            y += sign(lengthdir_y(knockback, kb_direction));
        }
        fall_speed = 0;
    }
    if(image_alpha == 1){
        image_alpha = 0;
    }
    else{
        image_alpha = 1;
    }
}
else{
    state = scr_Player_Invincibility_Frames;
    alarm[1] = room_speed;
}

//Stop attacking when knockedback
if(instance_exists(obj_Attack_Placeholder)){
    attack_state = scr_Attack_None;
    with(obj_Attack_Placeholder) instance_destroy();
}

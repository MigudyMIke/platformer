///scr_Player_Movement()
scr_Detect_Input();

if(attack_state == scr_Attack_None){
    move_h = right - left;
}
else{
    move_h = 0;
}
//Sprite Facing
if(move_h > 0){
//Place code for sprite facing right here.  
//If sprite is symmetrical, image_xscale = 1 will work fine.
//If asymmetrical, change the sprite_index.
facing = MOVING_RIGHT;
}
else if(move_h < 0){
//Place code for sprite facing left here.  
//If sprite is symmetrical, image_xscale = -1 will work fine.
//If asymmetrical, change the sprite_index.
facing = MOVING_LEFT;
}

//Collision detection
if(!place_meeting(x + move_speed * move_h, y, obj_Floor)){
    x += move_h * move_speed;
}
else{
    while(!place_meeting(x + move_h, y, obj_Floor)){
        x += sign(move_h);
    }
}
if(place_meeting(x + move_speed * move_h, y + min(fall_speed, max_fall_speed), obj_Slope)){
    while(place_meeting(x, y, obj_Slope)){
        y -= 1;
    }
}



//Jumping
if(up and first_jump){
    if(fall_speed == 0){
        audio_play_sound (snd_jump, 10, false);
    }
    second_jump = false;
    fall_speed = max(max_jump, fall_speed + jump_grav);
    if(fall_speed == max_jump){
        first_jump = false;
        second_jump_start = true;
    }
}
if(keyboard_check_released(vk_up) and second_jump_start){
    first_jump = false;
    second_jump = true;
}

//If walking off an edge, not able to jump in midair unless obtained double jump
if(!place_meeting(x, y - 1, obj_Solids) and !up){
    first_jump = false;
}

//Double Jump
if(have_jetpack and up and second_jump and !first_jump){
    if(second_jump_start){
        audio_play_sound (snd_jump, 10, false);
        fall_speed = 0;
        second_jump_start = false;
    }
    fall_speed = max(max_jump, fall_speed + jump_grav);
    if(fall_speed == max_jump){
        second_jump = false;
    }
}
if(keyboard_check_released(vk_up) and !second_jump_start){
    second_jump = false;
}

//Dashing
if(have_dash and x_key and alarm[4] > 0){
    if(!place_meeting(x + move_speed * 3 * facing, y, obj_Floor)){
        x += 3 * move_speed * facing;
    }
    else{
        while(!place_meeting(x + facing, y, obj_Floor)){
            x += sign(facing);
        }
    }
    fall_speed = 0;
    alarm[3] = room_speed / 2;
}
else if(alarm[3] <= 0){
    alarm[4] = room_speed / 3;
}
if(keyboard_check_released(ord('X')) and alarm[3] > 0){
    alarm[4] = 0;
}


//Falling and gravity
if(!place_meeting(x, y + min(fall_speed, max_fall_speed), obj_Solids)){
        y += min(fall_speed, max_fall_speed);
        fall_speed += grav;
    }
else{
    while(!place_meeting(x, y + sign(fall_speed), obj_Solids)){
        y += sign(fall_speed);
    }
    fall_speed = 0;
}

//Reset jumping
if(place_meeting(x, y - 1, obj_Solids)){
    first_jump = false;
    second_jump = false;
}
else if(place_meeting(x, y + 1, obj_Solids)){
    first_jump = true;
    second_jump = true;
    second_jump_start = true;
}

//Attack
if(space and attack_state == scr_Attack_None){
    attack_state = current_attack;
}
script_execute(attack_state);

//Switch weapons
if(z){
    if(current_attack == scr_Attack_Melee){
        current_attack = scr_Attack_Ranged;
    }
    else if(current_attack == scr_Attack_Ranged){
        current_attack = scr_Attack_Melee;
    }
}

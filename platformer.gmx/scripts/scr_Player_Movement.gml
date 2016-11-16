///scr_Player_Movement()
scr_Detect_Input();

move_h = right - left;

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

//Jumping
if(up and can_jump){
    if(fall_speed = 0){
        audio_play_sound (snd_jump, 10, false);
    }
    fall_speed = max(max_jump, fall_speed + jump_grav);
    if(fall_speed == max_jump){
        can_jump = false;
    }
}
if(keyboard_check_released(vk_up)){
    can_jump = false;
}

//If walking off an edge, not able to jump in midair
if(!place_meeting(x, y - 1, obj_Floor) and !up){
    can_jump = false;
}

//Falling and gravity
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

//Reset jumping
if(place_meeting(x, y - 1, obj_Floor)){
    can_jump = false;
}
else if(place_meeting(x, y + 1, obj_Floor)){
    can_jump = true;
}

//Attack
if(space){
    state = scr_Player_Attack;
}

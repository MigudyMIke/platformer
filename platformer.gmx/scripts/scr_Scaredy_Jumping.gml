///scr_Scaredy_Jumping

if(alarm[0] > 0){
    if(!place_meeting(x, y - 5, obj_Floor)){
        y -= 5;
    }
    else{
        while(!place_meeting(x, y - 1, obj_Floor)){
            y -= 1;
        }
    }
    if (facing = MOVING_LEFT){
        x -= 0.7;
    }else{
        x += 0.7;
    }
}

if(alarm[1] > 0){
    if(place_meeting(x + (move_speed * facing), y, obj_Floor)){
        while(!place_meeting(x + facing, y, obj_Floor)){
            x += sign(facing);
        audio_play_sound(snd_jump, 100, false);
        }
    }
    else{
        x += facing * scared_move_speed;
    }
}

if(alarm[0] == 0){
    alarm[1] = 15;
    alarm[0] = -1;
}

if(alarm[1] == 0){
    state = scr_Scaredy_Walk;
    alarm[1] = -1;
}

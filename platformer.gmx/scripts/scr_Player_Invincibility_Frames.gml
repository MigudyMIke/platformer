///scr_Player_Invincibility_Frames()
if(alarm[1] > 0){
    scr_Player_Movement();
    if(image_alpha == 1){
        image_alpha = 0;
    }
    else{
        image_alpha = 1;
    }
}
else{
    image_alpha = 1;
    state = scr_Player_Movement;
}

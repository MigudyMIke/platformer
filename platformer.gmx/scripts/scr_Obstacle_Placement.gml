///scr_Obstacle_Placement();
x = mouse_x;
y = mouse_y;
if(place_meeting(x, y, obj_Snap)){
    snap = instance_place(x, y, obj_Snap);
    x = snap.x;
    y = snap.y;
    canPlace = true;
    image_blend = c_white;
}
else{
    canPlace = false;
    image_blend = c_red;
}
if(mouse_check_button_pressed(mb_left) and alarm[0] <= 0 and canPlace){
    with(snap) instance_destroy();
    state = scr_Obstacle_Wait;
    active = true;
}
if(mouse_check_button(mb_right)){
    instance_destroy();
    var_obj_count -= 1
}

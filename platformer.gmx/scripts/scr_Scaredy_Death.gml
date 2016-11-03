///scr_Scaredy_Pause();
if (mouse_check_button_released(mb_right)){
    room_restart();
    var_obj_count = 0;
    var_key = 0;
    if object_exists(obj_lock_box)
    {
        if (obj_lock_box.x < 0)
        {
            obj_lock_box.x = obj_lock_box.x + 10000;
        }
    }
    with(obj_room_restart){
        instance_destroy();
    }
}

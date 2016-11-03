///scr_Obstacle_Wait
active = true;
destroy = collision_point(mouse_x, mouse_y, obj_Obstacle, true, false);
if(destroy != noone and obj_Scared.state == scr_Scaredy_Pause){
    if(destroy.object_index != obj_Floor){
        if(destroy.canPlace){
            if(mouse_check_button_pressed(mb_right)){
                instance_create(destroy.x, destroy.y, obj_Snap);
                var_obj_count -= 1;
                with(destroy) instance_destroy();
            }
        }
    }
}

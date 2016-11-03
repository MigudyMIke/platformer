if (mouse_x == min(obj_new_game.x) && mouse_x == max(obj_new_game.x) && mouse_y == min(obj_new_game.y) && max(obj_new_game.y))
{
    obj_new_game.image_index = 1;
    if (mouse_check_button_pressed(mb_left))
    {
        obj_new_game.image_index = 2;
        room_goto(rm_Test);
    }
}else{
    obj_new_game.image_index = 0;
}
if (mouse_x == min(obj_exit.x) && mouse_x == max(obj_exit.x) && mouse_y == min(obj_exit.y) && max(obj_exit.y))
{
    obj_exit.image_index = 1;
    if (mouse_check_button_pressed(mb_left))
    {
        obj_exit.image_index = 2;
        game_end();
    }
}else{
    obj_exit.image_index = 0;
}

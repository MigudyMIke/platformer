switch(var_save)
{
    case 1:
        if (file_exists("Save1.sav"))
        {
            ini_open("Save1.sav");
            var_health_max = ini_read_real("Save1", "stats", 0);
            var_health_more = ini_read_real("Save1", "stats", 0);
            var_health = ini_read_real("Save1", "stats", 0);
            var_room = ini_read_real("Save1", "room", rm_Test);
            
            ini_close();
            
            room_goto(var_room);
            instance_create( 480, 480, obj_Player);
        }else{
            instance_create(x, y, obj_no_save);
        }
    case 2:
        if (file_exists("Save2.sav"))
        {
            ini_open("Save2.sav");
            var_health_max = ini_read_real("Save1", "stats", 0);
            var_health_more = ini_read_real("Save1", "stats", 0);
            var_health = ini_read_real("Save1", "stats", 0);
            var_room = ini_read_real("Save1", "room", rm_Test);
            
            ini_close();
            
            room_goto(var_room);
            instance_create( 480, 480, obj_Player);
        }else{
            instance_create(x, y, obj_no_save);
        }
    case 3:
        if (file_exists("Save3.sav"))
        {
            ini_open("Save3.sav");
            var_health_max = ini_read_real("Save1", "stats", 0);
            var_health_more = ini_read_real("Save1", "stats", 0);
            var_health = ini_read_real("Save1", "stats", 0);
            var_room = ini_read_real("Save1", "room", rm_Test);
            
            ini_close();
            
            room_goto(var_room);
            instance_create( 480, 480, obj_Player);
        }else{
            instance_create(x, y, obj_no_save);
        }
    case 4:
        if (file_exists("Save4.sav"))
        {
            ini_open("Save4.sav");
            var_health_max = ini_read_real("Save1", "stats", 0);
            var_health_more = ini_read_real("Save1", "stats", 0);
            var_health = ini_read_real("Save1", "stats", 0);
            var_room = ini_read_real("Save1", "room", rm_Test);
            
            ini_close();
            
            room_goto(var_room);
            instance_create( 480, 480, obj_Player);
        }else{
            instance_create(x, y, obj_no_save);
        }
}


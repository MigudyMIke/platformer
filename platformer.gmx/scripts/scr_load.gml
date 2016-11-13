if (file_exists("Save.sav"))
{
    ini_open("Save.sav");
    var_health_max = ini_read_real("Save1", "stats", 0);
    var_health = ini_read_real("Save1", "stats", 100);
    var_health = ini_read_real("Save1", "stats", 100);
    var_room = ini_read_real("Save1", "room", rm_Test);
    
    ini_close();
    room_goto(var_room);
}else{
    //show "no save"
}

if (file_exists("Save4.sav")) file_delete("Save4.sav");
ini_open("Save4.sav");
ini_write_real("Save4", "room", var_room);
ini_write_real("Save4", "stats", var_health_more);
ini_write_real("Save4", "stats", var_health_max);
ini_write_real("Save4", "stats", var_health);

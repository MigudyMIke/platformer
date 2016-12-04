if (file_exists("Save3.sav")) file_delete("Save3.sav");
ini_open("Save3.sav");
ini_write_real("Save3", "room", var_room);
ini_write_real("Save3", "stats", var_health_more);
ini_write_real("Save3", "stats", var_health_max);
ini_write_real("Save3", "stats", var_health);

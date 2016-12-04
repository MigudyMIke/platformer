if (file_exists("Save1.sav")) file_delete("Save1.sav");
ini_open("Save1.sav");
ini_write_real("Save1", "room", var_room);
ini_write_real("Save1", "stats", var_health_more);
ini_write_real("Save1", "stats", var_health_max);
ini_write_real("Save1", "stats", var_health);

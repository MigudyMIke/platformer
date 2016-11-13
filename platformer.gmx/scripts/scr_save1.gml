if (file_exists("Save.sav")) file_delete("Save.sav");
ini_open("Save.sav");
ini_write_real("Save1", "room", var_room);
ini_write_real("Save1", "stats", var_more_health);
ini_write_real("Save1", "stats", var_health_max);
ini_write_real("Save1", "stats", var_health);


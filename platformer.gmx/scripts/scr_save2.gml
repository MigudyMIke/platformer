if (file_exists("Save2.sav")) file_delete("Save2.sav");
ini_open("Save2.sav");
ini_write_real("Save2", "room", var_room);
ini_write_real("Save2", "stats", var_health_more);
ini_write_real("Save2", "stats", var_health_max);
ini_write_real("Save2", "stats", var_health);

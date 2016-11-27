//stats
var_health = 100;
var_health_max = 100;
var_health_more = 0;
if(!instance_exists(obj_Player)){
    instance_create( 448, 2912, obj_Player);
}
else{
    obj_Player.x = 448;
    obj_Player.y = 2912;
}

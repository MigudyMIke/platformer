//draw heath, ammo, map?, and other.
draw_set_color( c_black);
draw_rectangle( view_xview[view_current] + 5, view_yview[view_current] + 5,view_xview[view_current] + 100, view_yview[view_current] + 25, 0);
draw_set_color( c_white);
draw_set_font (fnt_code);
draw_text( view_xview[view_current] + 10, view_yview[view_current] + 10, string(var_health) + "%");
draw_self();

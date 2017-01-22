///apply_light(light, size)
var light = argument0;
var size = argument1

draw_set_blend_mode(bm_subtract);
surface_set_target(light);
draw_ellipse_color(x-size/2-view_xview, y-size/2-view_yview, x+size/2-view_xview, y+size/2-view_yview, c_white, c_black, false);
surface_reset_target();
draw_set_blend_mode(bm_normal);



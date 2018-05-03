var x_percentage = argument0;
var y_percentage = argument1;
var edge_offset = argument2;
var fighters = argument3;

var scale_factor = 0;

var width = window_get_width();
var height = window_get_height();

if(room_width > room_height){
    scale_factor = (width * x_percentage) / room_width;}
else{
    scale_factor = (height * y_percentage)/ room_height;}
    
var minimap_width = room_width * scale_factor;
var minimap_height = room_height * scale_factor;

var left_corner_x = edge_offset;
var left_corner_y = height - minimap_height - edge_offset;
var right_corner_x = minimap_width + left_corner_x;
var right_corner_y = height - edge_offset;
    
draw_set_alpha(0.75);
draw_roundrect_colour(left_corner_x - edge_offset, left_corner_y - edge_offset, 
    right_corner_x + edge_offset, right_corner_y + edge_offset, c_green, c_black, false);
draw_roundrect_colour(left_corner_x - edge_offset, left_corner_y - edge_offset, 
    right_corner_x + edge_offset, right_corner_y + edge_offset, c_black, c_olive, true);
draw_set_alpha(1);

for (var i = 0; i < ds_list_size(fighters); i++)
{
   var fighter = fighters[| i];
   var fighter_minimap_pos_x = fighter.x * scale_factor + left_corner_x;
   var fighter_minimap_pos_y = fighter.y * scale_factor + left_corner_y;
   var fighter_direction = fighter.direction;
   
   if(object_get_parent(fighter.object_index) == obj_enemy){
    draw_set_colour(c_red);}
   else{
    draw_set_colour(c_yellow);}
    
   draw_triangle(lengthdir_x(10, fighter_direction) + fighter_minimap_pos_x, 
        lengthdir_y(15, fighter_direction) + fighter_minimap_pos_y,
        lengthdir_x(5, fighter_direction + 90) + fighter_minimap_pos_x,
        lengthdir_y(5, fighter_direction + 90) + fighter_minimap_pos_y,
        lengthdir_x(5, fighter_direction - 90) + fighter_minimap_pos_x,
        lengthdir_y(5, fighter_direction - 90) + fighter_minimap_pos_y, false);
}

// Draw the target location, if any
if(instance_exists(obj_location_goal))
{
    draw_circle_colour(obj_location_goal.x * scale_factor + left_corner_x,
        obj_location_goal.y * scale_factor + left_corner_y, 5, 
        c_orange, c_orange, false);
}

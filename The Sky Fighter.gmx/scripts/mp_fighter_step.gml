var goal_x = argument0;
var goal_y = argument1;
var scan_radius = argument2;
var scan_angle = argument3;

// Get the direction to the goal point
var goal_dir = point_direction(x, y, goal_x, goal_y);

// Create a collision line towards the goal point
var path_clear = collision_line(x, y, 
    x + lengthdir_x(scan_radius, goal_dir), 
    y + lengthdir_y(scan_radius, goal_dir), 
    obj_parent_fighter, false, true);
    
// If the path is clear, turn towards it. 
// Turn hard if it's in a totally different direction or slowly if there's barely any difference
// TODO: Make 45 degrees into a macro
var direction_difference = abs(direction - goal_dir);
if(direction_difference >= 45)
{
    turn_ratio = 1;
}
else
{
    turn_ratio = direction_difference / 45;
}



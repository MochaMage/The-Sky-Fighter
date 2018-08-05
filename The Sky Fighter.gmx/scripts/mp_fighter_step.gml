/// mp_fighter_step(goal_x, goal_y, scan_radius, scan_angle, scan_angle_step);
var goal_x = argument0;
var goal_y = argument1;
var scan_radius = argument2;
var scan_angle = argument3;
var scan_angle_step = argument4;

// Direction to the goal
var goal_dir = point_direction(x, y, goal_x, goal_y);

// Scan in the direction towards the goal for the path
// with no collision that requires the least amount of turning
var left_path = noone;
var right_path = noone;

// Check to the left of the straight path to the goal
// GM's direction angles increase counter-clockwise so
// add the angle difference i to the goal direction
for(var i = 0; i <= scan_angle/2; i += scan_angle_step)
{
    if(left_path == noone)
    {
        var path_obstructed = collision_line(x, y, 
            x + lengthdir_x(scan_radius, goal_dir + i), 
            y + lengthdir_y(scan_radius, goal_dir + i), 
            obj_parent_fighter, false, true);
        if(!path_obstructed)
        {
            left_path = i;
        }
    }
    if(right_path == noone)
    {
        var path_obstructed = collision_line(x, y, 
            x + lengthdir_x(scan_radius, goal_dir - i), 
            y + lengthdir_y(scan_radius, goal_dir - i), 
            obj_parent_fighter, false, true);
        if(!path_obstructed)
        {
            right_path = i;
        }
    }
    if(left_path == noone && right_path == noone)
    {
        break;
    }
}

var target_dir = goal_dir;

if(left_path < right_path)
{
    turn_ratio = -1;
}
else
{
    turn_ratio = 1;
}

var direction_difference = direction - target_dir;
//turn_ratio = clamp(direction_difference/45, -1, 1);

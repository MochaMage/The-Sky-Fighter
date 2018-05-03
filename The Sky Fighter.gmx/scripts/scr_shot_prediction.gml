var predator_x = argument0;
var predator_y = argument1;
var predator_dir = argument2;
var bullet_speed = argument3;
var prey_x = argument4;
var prey_y = argument5;
var prey_dir = argument6;
var prey_speed = argument7;
var steps_ahead = argument8;

for(var step = 1; step <= steps_ahead; step++)
{
    var bullet_future_x = predator_x + lengthdir_x(bullet_speed * step, predator_dir);
    var bullet_future_y = predator_y + lengthdir_y(bullet_speed * step, predator_dir);
    
    var prey_future_x = prey_x + lengthdir_x(prey_speed * step, prey_dir);
    var prey_future_y = prey_y + lengthdir_y(prey_speed * step, prey_dir);
    
    var intersection = point_in_circle(bullet_future_x, bullet_future_y, 
        prey_future_x, prey_future_y, 48);
        
    if(intersection){
        return true}
}

return false;

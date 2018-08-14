var _x = noone;
var _y = noone;
var is_dark = false;

if(argument_count == 3)
{
    var _x = argument[0];
    var _y = argument[1];
    var is_dark = argument[2];
}
else
{
    var is_dark = argument[0];
}

var cloud_sprite = spr_white_clouds;
if(is_dark)
{
    cloud_sprite = spr_dark_clouds;
}

if(_y == noone)
{
    var cloud_height = sprite_get_height(cloud_sprite);
    _y = -1 * cloud_height;
}
if(_x == noone)
{

    _x = random_range(0, room_width);
}

var cloud = instance_create(_x, _y, obj_cloud);
with(cloud)
{
    direction = 270;
    image_index = random_range(0, sprite_get_number(cloud_sprite) - 1);
    speed = random_range(other.MAX_CLOUD_SPEED / 2, other.MAX_CLOUD_SPEED);
    var scale = random_range(1, other.LARGEST_SCALE);
    image_xscale = scale;
    image_yscale = scale;
    
    if(random(100) < 50)
    {
        depth = CLOUD_OVER_DEPTH;
        image_alpha = random_range(0.01, 0.5);
    }
    else
    {
        depth = CLOUD_UNDER_DEPTH;
        speed = speed / 2;
        image_alpha = random_range(0.5, 0.65);
    }
}

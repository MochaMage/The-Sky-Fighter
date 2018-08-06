player = argument0;
player_num = argument1;

var x_pos = player_num * (window_get_width() / 2);
var y_pos = 0;

draw_set_alpha(0.85);
draw_healthbar(x_pos, y_pos + 25, x_pos + UI_BAR_WIDTH, y_pos + 35, 
    player.gun_heat, c_black, c_green, c_red, 0, true, true);
var bullet_size = sprite_get_height(spr_bullet);
var bullet_scale = 10 / bullet_size;

draw_sprite_ext(spr_bullet, 0, x_pos + UI_BAR_WIDTH / 2, y_pos + 30, bullet_scale , bullet_scale, 0, c_white, 0.75);

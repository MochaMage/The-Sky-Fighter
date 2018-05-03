player = argument0;
player_num = argument1;

var y_pos = 0;

draw_set_alpha(0.85);
draw_healthbar(0, BAR_GUN_Y_POS, 0 + UI_BAR_WIDTH, BAR_GUN_Y_POS + UI_BAR_HEIGHT, 
    player.gun_heat, c_black, c_green, c_red, 0, true, true);
var bullet_size = sprite_get_height(spr_bullet);
var bullet_scale = (UI_BAR_HEIGHT / 2) / bullet_size;

draw_sprite_ext(spr_bullet, 0, 0 + UI_BAR_WIDTH / 2, 
    BAR_GUN_Y_POS + UI_BAR_HEIGHT / 2, bullet_scale , bullet_scale, 0, c_white, 0.75);

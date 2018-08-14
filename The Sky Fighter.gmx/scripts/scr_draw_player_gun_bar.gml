var x_pos = view_xport[player_slot - 1];
var y_pos = view_yport[player_slot - 1];

draw_set_alpha(0.85);
draw_healthbar(x_pos, y_pos + BAR_GUN_Y_POS, x_pos + UI_BAR_WIDTH, y_pos + BAR_GUN_Y_POS + UI_BAR_HEIGHT, 
    gun_heat, c_black, c_green, c_red, 0, true, true);
var bullet_size = sprite_get_height(spr_bullet);
var bullet_scale = (UI_BAR_HEIGHT / 2) / bullet_size;

draw_sprite_ext(spr_bullet, 0, x_pos + UI_BAR_WIDTH / 2, 
    y_pos + BAR_GUN_Y_POS + UI_BAR_HEIGHT / 2, bullet_scale , bullet_scale, 0, c_white, 0.75);

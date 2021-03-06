var x_pos = view_xport[player_slot - 1];
var y_pos = view_yport[player_slot - 1];

draw_set_alpha(0.85);
draw_healthbar(x_pos, y_pos, x_pos + UI_BAR_WIDTH, y_pos + UI_BAR_HEIGHT, 
    hp, c_black, c_red, c_green, 0, true, true);
var heart_size = sprite_get_height(spr_heart);
var heart_scale = UI_BAR_HEIGHT / heart_size;

draw_sprite_ext(spr_heart, 1, x_pos + UI_BAR_WIDTH / 2, 
    y_pos + UI_BAR_HEIGHT/2, heart_scale , heart_scale, 0, c_white, 0.75);

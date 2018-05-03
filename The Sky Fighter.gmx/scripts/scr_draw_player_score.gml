var player = argument0;
var player_num = argument1;

draw_set_alpha(1);
draw_set_colour(c_black);
draw_text(0, TEXT_SCORE_Y_POS, "Score: " + string(global.scores[? string(player_num + 1)]));


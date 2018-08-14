var x_pos = view_xport[player_slot - 1];
var y_pos = view_yport[player_slot - 1];

draw_set_alpha(1);
draw_set_colour(c_black);
draw_text(x_pos, y_pos + TEXT_SCORE_Y_POS, "Score: " + string(global.scores[? string(player_slot)]));


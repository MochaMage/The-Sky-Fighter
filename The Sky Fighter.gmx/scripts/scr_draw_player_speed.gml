var x_pos = view_xport[player_slot - 1];
var y_pos = view_yport[player_slot - 1];

var interval = 100 / PLAYER_AFTERBURNER_SPEED;
var spd = speed * interval;
draw_healthbar(x_pos, y_pos + BAR_SPEED_Y_POS, x_pos + UI_BAR_WIDTH, 
    y_pos + BAR_SPEED_Y_POS + UI_BAR_HEIGHT, spd, c_black, c_aqua, c_blue, 0, true, true);

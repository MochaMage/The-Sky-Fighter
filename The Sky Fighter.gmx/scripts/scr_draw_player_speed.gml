player = argument0;
player_num = argument1;

var x_pos = player_num * (window_get_width() / 2);
var y_pos = 0;

var interval = 100 / player.PLAYER_AFTERBURNER_SPEED;
var spd = player.speed * interval;
draw_healthbar(x_pos, y_pos + 35, x_pos + UI_BAR_WIDTH, y_pos + 45, spd, c_black, c_aqua, c_blue, 0, true, true);

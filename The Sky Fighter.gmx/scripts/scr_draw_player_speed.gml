player = argument0;
player_num = argument1;

var interval = 100 / player.PLAYER_AFTERBURNER_SPEED;
var spd = player.speed * interval;
draw_healthbar(0, BAR_SPEED_Y_POS, UI_BAR_WIDTH, 
    BAR_SPEED_Y_POS + UI_BAR_HEIGHT, spd, c_black, c_aqua, c_blue, 0, true, true);

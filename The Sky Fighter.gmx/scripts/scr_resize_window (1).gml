var base_w = argument0;
var base_h = argument1;

window_set_fullscreen(false);
window_set_size(base_w, base_h);

var aspect = display_get_width() / display_get_height();
if (aspect > 1)
{
    //landscape
    display_set_gui_size(base_h * aspect, base_h);
}
else
{
    //portrait
    display_set_gui_size(base_w, base_w / aspect);
}

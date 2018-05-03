if(argument_count != 2)
{
    var base_w = 1280;
    var base_h = 720;
}
else
{
    var base_w = argument[0];
    var base_h = argument[1];
}

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

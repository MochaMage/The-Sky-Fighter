var x_percentage = argument0;
var x_offset = argument1;

if(global.objectives_completed)
{
    var _y = display_get_gui_height() / 2;
    var _x = display_get_gui_width() / 2;
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text_colour(_x, _y, "Objectives Completed", c_olive, c_olive, c_olive, c_olive, 1);
}
else
{
    var list = obj_objectives_controller.level_objectives;
    var pixels_per_line = 20;
    var y_pos = display_get_gui_height()/2 + pixels_per_line;
    var list_length = ds_list_size(list);
    var list_height = list_length * pixels_per_line;
    var list_width = display_get_gui_width() * x_percentage;
    
    draw_set_alpha(0.75);
    draw_rectangle_colour(x_offset, y_pos,
        x_offset + list_width, list_height + y_pos,
        c_olive, c_olive, c_black, c_black, false);
        
    draw_set_alpha(1);
    for(var i = 0; i < ds_list_size(list); i++)
    {
        var text = objective_to_text(list[| i]);
        if(list[| i].is_completed)
        {
            draw_text_colour(x_offset, pixels_per_line * i + y_pos, 
                text, c_lime, c_lime, c_lime, c_lime, 0.8);
        }
        else
        {
             draw_text_colour(x_offset, pixels_per_line * i + y_pos, 
                text, c_red, c_red, c_red, c_red, 1);  
        }
    }
}

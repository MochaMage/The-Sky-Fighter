do
{
//    goal_x = random_range(ROOM_BOUNDARY_PADDING, room_width - ROOM_BOUNDARY_PADDING);
//    goal_y = random_range(ROOM_BOUNDARY_PADDING, room_height - ROOM_BOUNDARY_PADDING);
    cell_x = random_range(2, room_width / MP_GRID_CELL_SIZE - 2);
    cell_y = random_range(2, room_height / MP_GRID_CELL_SIZE - 2);
}
until(mp_grid_get_cell(global.grid, cell_x, cell_y) == 0);

goal_x = cell_x * MP_GRID_CELL_SIZE;
goal_y = cell_y * MP_GRID_CELL_SIZE;

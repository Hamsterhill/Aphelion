
////setting Currently selected gridpoint
    if mouse_x>ship_grid_x and mouse_y>ship_grid_y and mouse_x < ship_grid_x + ship_gridSize * ship_maxSize_x and mouse_y< ship_grid_y + ship_gridSize* ship_maxSize_y
        {
        ship_gridCurrent_x=floor((mouse_x-ship_grid_x)/ship_gridSize)
        ship_gridCurrent_y=floor((mouse_y-ship_grid_y)/ship_gridSize)
        }else{
        ship_gridCurrent_x=-1
        ship_gridCurrent_y=-1
        }


////Clicking
if mouse_check_button_released(mb_left)
{
    //if inside menu
    if mouse_x > menu_x + menu_pad + menu_padCenter and mouse_y> menu_y + menu_pad*3+menu_titleHigh and mouse_x < menu_x + ship_gridSize+menu_pad*3 + menu_padCenter and mouse_y< menu_y + menu_high - menu_pad
        {
        menu_select = ceil((mouse_y-menu_y - menu_pad*3-menu_titleHigh)/(ship_gridSize + menu_pad*3 + menu_partsHigh))-1
        }  
}
///putting in grid
if mouse_check_button(mb_left)
{
    if mouse_x>ship_grid_x and mouse_y>ship_grid_y and mouse_x < ship_grid_x + ship_gridSize * ship_maxSize_x and mouse_y< ship_grid_y + ship_gridSize* ship_maxSize_y
        {
        ship_gridPart[ship_gridCurrent_x,ship_gridCurrent_y] = menu_select
        }
}
        


    

    
if mouse_check_button_released(mb_right)
    menu_select=-1


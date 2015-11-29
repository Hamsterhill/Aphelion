//draw menu
scr_draw_partsMenu()
//draw background grid in the center of the room in pink
draw_surface_ext(sur_ship_buildGrid,ship_grid_x,ship_grid_y,1,1,0,c_fuchsia,.5)
//draw ship
draw_surface(sur_ship_build,ship_grid_x-8,ship_grid_y-8)


//draw selection in hand
if menu_select!=-1
    if ship_gridCurrent_x+ship_gridCurrent_y > -1{
        draw_sprite(ship_partSprite[menu_select],ship_partSpriteIndex[menu_select],ship_grid_x + ship_gridCurrent_x*ship_gridSize+2,ship_grid_y + ship_gridCurrent_y * ship_gridSize+2) 
    }else{
        draw_sprite(ship_partSprite[menu_select],ship_partSpriteIndex[menu_select],mouse_x,mouse_y)
    }



//test draw
draw_text(room_width/2,16,"Selection: "+string(menu_select)+" Grid: "+string(ship_gridCurrent_x)+"X/"+string(ship_gridCurrent_y)+"Y")

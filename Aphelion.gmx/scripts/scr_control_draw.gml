//draw menu
scr_draw_partsMenu()
//draw background grid in the center of the room in pink
draw_surface_ext(sur_ship_buildGrid,ship_grid_x,ship_grid_y,1,1,0,c_fuchsia,.5)
for (i=0; i<ship_maxSize_x; i+=1)
{
    for (k=0; k<ship_maxSize_y; k+=1)
    {
        if ship_gridPart[i,k] > -1{
        if menu_select=-1 and i = ship_gridCurrent_x and k = ship_gridCurrent_y draw_set_alpha(.5)
        draw_sprite(ship_partSprite[ship_gridPart[i,k]],ship_partSpriteIndex[ship_gridPart[i,k]],ship_grid_x + i*ship_gridSize+2,ship_grid_y + k * ship_gridSize+2)
        draw_set_alpha(1)
        }
    };
    
};


//draw selection in hand
if menu_select!=-1
    if ship_gridCurrent_x+ship_gridCurrent_y > -1{
        draw_sprite(ship_partSprite[menu_select],ship_partSpriteIndex[menu_select],ship_grid_x + ship_gridCurrent_x*ship_gridSize+2,ship_grid_y + ship_gridCurrent_y * ship_gridSize+2) 
    }else{
        draw_sprite(ship_partSprite[menu_select],ship_partSpriteIndex[menu_select],mouse_x,mouse_y)
    }



//test draw
draw_text(room_width/2,16,"Selection: "+string(menu_select)+" Grid: "+string(ship_gridCurrent_x)+"X/"+string(ship_gridCurrent_y)+"Y")

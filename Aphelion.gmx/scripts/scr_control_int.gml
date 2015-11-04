ship_maxSize_x=15
ship_maxSize_y=10
ship_gridSize=34
ship_grid_x=(room_width-ship_maxSize_x*ship_gridSize)/2
ship_grid_y=(room_height-ship_maxSize_y*ship_gridSize)/2
ship_gridCurrent_x=-1
ship_gridCurrent_y=-1
ship_rooms=0
ship_roomType[0]=-1
ship_roomSize[0]=0



//test var
testicals=0


scr_int_partsMenu()
//parts menu var's int
menu_pad = 4;
menu_select = -1 //-1 = no selection
menu_x = 8;
menu_y = 8;
menu_title = "Parts";
menu_titleFont = fon_partsMenu_title; draw_set_font(menu_titleFont)
menu_titleWide = string_width(menu_title) + 1
menu_titleHigh = string_height(menu_title)+ 1
menu_partsFont = fon_partsMenu_parts;draw_set_font(menu_partsFont)
menu_partsHigh = string_height(ship_partName[0])
menu_wide = max(menu_pad*4 + ship_gridSize, menu_titleWide + menu_pad*2)
menu_padCenter = (menu_wide - menu_pad*4 - ship_gridSize+1)/2-.5
menu_high = menu_pad*4 + parts*(ship_gridSize + menu_pad*3 + menu_partsHigh) + menu_titleHigh;




scr_constructionGrid_int()
sur_ship_buildGrid = scr_int_grid_surface(ship_maxSize_x,ship_maxSize_y,ship_gridSize)//Setup surface for grid to building area
sur_ship_build = surface_create(ship_maxSize_x*ship_gridSize+16,ship_maxSize_y*ship_gridSize+16)


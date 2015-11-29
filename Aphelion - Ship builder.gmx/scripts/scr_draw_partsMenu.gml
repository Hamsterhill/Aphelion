//Draw background
draw_rectangle_color(menu_x,menu_y,menu_x + menu_wide,menu_y + menu_high,c_gray,c_gray,c_dkgray,c_gray,0)
draw_rectangle_color(menu_x,menu_y,menu_x + menu_wide,menu_y + menu_high,c_white,c_white,c_white,c_white,1)
draw_rectangle_color(menu_x-1,menu_y-1,menu_x+1 + menu_wide,menu_y+1 + menu_high,c_white,c_white,c_white,c_white,1)

//Draw title W/ shadow
draw_set_font(menu_titleFont)
draw_text_color(menu_x + menu_pad + 2 , menu_y + menu_pad + 3, menu_title ,c_black,c_black,c_black,c_black,.75)
draw_text_color(menu_x + menu_pad , menu_y + menu_pad , menu_title ,c_white,c_white,c_white,c_white,1)

//Draw Parts W/ names
draw_set_font(menu_partsFont)
for (i=0; i<parts; i+=1)
{
    if i = menu_select{
    draw_roundrect_color(menu_x + menu_pad + menu_padCenter, menu_y + menu_pad*3+menu_titleHigh + i *(ship_gridSize + menu_pad*3 + menu_partsHigh),menu_x + max(string_length(ship_partName[i]),ship_gridSize+menu_pad*3) + menu_padCenter, menu_y + menu_pad*2+menu_titleHigh + (i+1) *(ship_gridSize + menu_pad*3 + menu_partsHigh),c_gray,c_white,0)}
    else{draw_roundrect_color(menu_x + menu_pad + menu_padCenter, menu_y + menu_pad*3+menu_titleHigh + i *(ship_gridSize + menu_pad*3 + menu_partsHigh),menu_x + max(string_length(ship_partName[i]),ship_gridSize+menu_pad*3) + menu_padCenter, menu_y + menu_pad*2+menu_titleHigh + (i+1) *(ship_gridSize + menu_pad*3 + menu_partsHigh),c_gray,c_dkgray,0)
    }
   
    draw_roundrect_color(menu_x + menu_pad + menu_padCenter, menu_y + menu_pad*3+menu_titleHigh + i *(ship_gridSize + menu_pad*3 + menu_partsHigh),menu_x + max(string_length(ship_partName[i]),ship_gridSize+menu_pad*3) + menu_padCenter, menu_y + menu_pad*2+menu_titleHigh + (i+1) *(ship_gridSize + menu_pad*3 + menu_partsHigh),c_black,c_black,1)
    draw_sprite(ship_partSprite[i],ship_partSpriteIndex[i],menu_x+menu_pad*2 + menu_padCenter,menu_y + menu_pad*3+menu_titleHigh + i *(ship_gridSize + menu_pad*3 + menu_partsHigh)+menu_pad)
    draw_set_color(c_black)
    draw_text(menu_x+menu_pad*2+1 + menu_padCenter,menu_y + 1 + menu_pad*3+menu_titleHigh + i *(ship_gridSize + menu_pad*3 + menu_partsHigh)+menu_pad+ship_gridSize,ship_partName[i])
    draw_set_color(c_white)
    draw_text(menu_x+menu_pad*2 + menu_padCenter,menu_y + menu_pad*3+menu_titleHigh + i *(ship_gridSize + menu_pad*3 + menu_partsHigh)+menu_pad+ship_gridSize,ship_partName[i])
};





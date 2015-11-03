var menu_pad = 4;
var menu_x = 8;
var menu_y = 8;
var menu_wide = pad*4 + ship_gridsize
var menu_high = pad*2 + parts*(ship_gridsize+pad*2) 
draw_rectangle_color(menu_x,menu_y,menu_x + menu_wide,menu_y + menu_high,c_ltgray,c_gray,c_dkgray,c_dkgray,0)
draw_rectangle_color(menu_x,menu_y,menu_x + menu_wide,menu_y + menu_high,c_white,c_white,c_white,c_white,1)


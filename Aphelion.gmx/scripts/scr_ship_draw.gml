draw_sprite_ext(spr_ship,0,x,y,1,1,dir,c_fuchsia,1)


draw_rectangle_color(0,0,300,300,c_gray,c_gray,c_gray,c_gray,0)
draw_text(8,16,"Rpos" + string(joystick_rpos(joy[0])))
draw_text(8,16*2,"upos" + string(joystick_upos(joy[0])))
draw_text(8,16*3,"vpos" + string(joystick_vpos(joy[0])))
draw_text(8,16*4,"xpos" + string(joystick_xpos(joy[0])))
draw_text(8,16*5,"ypos" + string(joystick_ypos(joy[0])))
draw_text(8,16*6,"zpos" + string(joystick_zpos(joy[0])))




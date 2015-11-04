
surface_set_target(sur_ship_build)
draw_clear_alpha(c_black,0) //clear surface

for (i=0; i<ship_maxSize_x; i+=1)
{
    for (k=0; k<ship_maxSize_y; k+=1)
    {
    //draw floors
        if ship_gridPart[i,k] > -1{
        draw_sprite(ship_partSprite[ship_gridPart[i,k]],ship_partSpriteIndex[ship_gridPart[i,k]],10+i*ship_gridSize,10+k * ship_gridSize)
        }
        
    //draw walls
        //left
        if i>0{
            if ship_gridPart[i,k] > -1
            {//if current is not an outside block
                if ship_gridPart[i-1,k] = -1 {draw_sprite(spr_wall_ext,0,-9+i*ship_gridSize,10+k * ship_gridSize) }else{ //draw external walls
                if ship_gridPart[i-1,k] != ship_gridPart[i,k] draw_sprite(spr_wall_int,0,8+i*ship_gridSize,10+k * ship_gridSize)}//draw internal walls
            }else{ // if current is an outside block
                if ship_gridPart[i-1,k] != ship_gridPart[i,k] draw_sprite(spr_wall_ext,0,-5+i*ship_gridSize,10+k * ship_gridSize) //draw external walls
            }
        }else{if ship_gridPart[i,k] > -1 draw_sprite(spr_wall_ext,0,-9+i*ship_gridSize,10+k * ship_gridSize)}// secoundary draw external walls
        
        //up
        if k>0{
            if ship_gridPart[i,k] > -1
            {//if current is not an outside block
                if ship_gridPart[i,k-1] = -1 {draw_sprite_ext(spr_wall_ext,0,10+i*ship_gridSize,25+k * ship_gridSize,1,1,90,c_white,1) }else{ //draw external walls
                if ship_gridPart[i,k-1] != ship_gridPart[i,k] draw_sprite_ext(spr_wall_int,0,10+i*ship_gridSize,12+k * ship_gridSize,1,1,90,c_white,1)}//draw internal walls
            }else{ // if current is an outside block
                if ship_gridPart[i,k-1] != ship_gridPart[i,k] draw_sprite_ext(spr_wall_ext,0,10+i*ship_gridSize,29+k * ship_gridSize,1,1,90,c_white,1) //draw external walls
            }
        }else{if ship_gridPart[i,k] > -1 draw_sprite_ext(spr_wall_ext,0,10+i*ship_gridSize,25+k * ship_gridSize,1,1,90,c_white,1)}// secoundary draw external walls
        //draw last rows caps
        if i+1 =ship_maxSize_x and ship_gridPart[i,k] > -1  draw_sprite(spr_wall_ext,0,34-5+i*ship_gridSize,10+k * ship_gridSize)
        if k+1 =ship_maxSize_y and ship_gridPart[i,k] > -1  draw_sprite_ext(spr_wall_ext,0,10+i*ship_gridSize,34+29+k * ship_gridSize,1,1,90,c_white,1)
    //draw Corners
  
        if ship_gridPart[i,k] > -1{ // if not empty
        //3 other emptys around a full
            if i + k = 0 {draw_sprite(spr_wall_ext_corner2,0,4+i*ship_gridSize,4+k * ship_gridSize)}else{//if top left corner
                if i = 0 {if ship_gridPart[i,k-1] = -1 draw_sprite(spr_wall_ext_corner2,0,4+i*ship_gridSize,4+k * ship_gridSize)}else{//if on top row
                if k = 0 {if ship_gridPart[i-1,k] = -1 draw_sprite(spr_wall_ext_corner2,0,4+i*ship_gridSize,4+k * ship_gridSize)}else{//if on left row
                if ship_gridPart[i-1,k] = -1 and ship_gridPart[i,k-1] = -1 and ship_gridPart[i-1,k-1] = -1 {draw_sprite(spr_wall_ext_corner2,0,4+i*ship_gridSize,4+k * ship_gridSize)}else{ //if everywhere else 
                if ship_gridPart[i-1,k] > -1 and ship_gridPart[i,k-1] > -1 and ship_gridPart[i-1,k-1] = -1 {draw_sprite_ext(spr_wall_ext_corner2,0,12+i*ship_gridSize,12+k * ship_gridSize,1,1,-180,c_white,1)}else{ // draw the internal hull corner
                if ship_gridPart[i-1,k] = -1 and ship_gridPart[i,k-1] > -1 and ship_gridPart[i-1,k-1] > -1 {draw_sprite_ext(spr_wall_ext_corner2,0,12+i*ship_gridSize,8+k * ship_gridSize,1,1,-90,c_white,1)}else{ // draw the external rotated
                if ship_gridPart[i-1,k] > -1 and ship_gridPart[i,k-1] = -1 and ship_gridPart[i-1,k-1] > -1 {draw_sprite_ext(spr_wall_ext_corner2,0,8+i*ship_gridSize,12+k * ship_gridSize,1,1,90,c_white,1)}else{ // draw the external rotated
                if ship_gridPart[i-1,k] = -1 and ship_gridPart[i,k-1] = -1 and ship_gridPart[i-1,k-1] > -1 {draw_sprite(spr_wall_ext_corner3,0,4+i*ship_gridSize,4+k * ship_gridSize)}else{ // draw merged corner
                if ship_gridPart[i-1,k] > -1 and ship_gridPart[i,k-1] > -1 and ship_gridPart[i-1,k-1] > -1 { // if all blocks are full check for internal wall corners
                if ship_gridPart[i-1,k] != ship_gridPart[i,k] or ship_gridPart[i,k-1] != ship_gridPart[i,k] or ship_gridPart[i-1,k-1] != ship_gridPart[i,k] draw_sprite(spr_wall_int_corner,0,8+i*ship_gridSize,8+k * ship_gridSize)}
                }}}}}}}
            }
        //
        }else{// if is empty
        if i + k != 0 {//if top left corner
                if i = 0 {if ship_gridPart[i,k-1] > -1 draw_sprite_ext(spr_wall_ext_corner2,0,4+i*ship_gridSize,16+k * ship_gridSize,1,1,90,c_white,1)}else{//if on top row
                if k = 0 {if ship_gridPart[i-1,k] > -1 draw_sprite_ext(spr_wall_ext_corner2,0,16+i*ship_gridSize,4+k * ship_gridSize,1,1,-90,c_white,1)}else{//if on left row
                if ship_gridPart[i-1,k] > -1 and ship_gridPart[i,k-1] > -1 and ship_gridPart[i-1,k-1] = -1 {draw_sprite_ext(spr_wall_ext_corner3,0,16+i*ship_gridSize,4+k * ship_gridSize,1,1,-90,c_white,1)}else{ // draw the internal hull corner
                if ship_gridPart[i-1,k] = -1 and ship_gridPart[i,k-1] = -1 and ship_gridPart[i-1,k-1] > -1 {draw_sprite_ext(spr_wall_ext_corner2,0,16+i*ship_gridSize,16+k * ship_gridSize,1,1,180,c_white,1)}else{ // draw merged corner
                if ship_gridPart[i-1,k] > -1 and ship_gridPart[i,k-1] > -1 and ship_gridPart[i-1,k-1] > -1 {draw_sprite_ext(spr_wall_ext_corner2,0,8+i*ship_gridSize,8+k * ship_gridSize,1,1,0,c_white,1)}else{
                if ship_gridPart[i-1,k] = -1 and ship_gridPart[i,k-1] > -1 and ship_gridPart[i-1,k-1] = -1 {draw_sprite_ext(spr_wall_ext_corner2,0,4+i*ship_gridSize,16+k * ship_gridSize,1,1,90,c_white,1)}else{
                if ship_gridPart[i-1,k] > -1 and ship_gridPart[i,k-1] = -1 and ship_gridPart[i-1,k-1] = -1 {draw_sprite_ext(spr_wall_ext_corner2,0,16+i*ship_gridSize,4+k * ship_gridSize,1,1,-90,c_white,1)}
                }}}}}}
            }
        }
        //draw last rows corners
        if i+1 =ship_maxSize_x{
            if k=0 {if ship_gridPart[i,k] > -1{draw_sprite_ext(spr_wall_ext_corner2,0,16+34+i*ship_gridSize,4+k * ship_gridSize,1,1,-90,c_white,1)}}else{
            if ship_gridPart[i,k] > -1 and ship_gridPart[i,k-1] = -1 {draw_sprite_ext(spr_wall_ext_corner2,0,34+16+i*ship_gridSize,4+k * ship_gridSize,1,1,-90,c_white,1)}else{
            if ship_gridPart[i,k] = -1 and ship_gridPart[i,k-1] > -1 {draw_sprite_ext(spr_wall_ext_corner2,0,34+16+i*ship_gridSize,16+k * ship_gridSize,1,1,180,c_white,1)}
            }}
            if k+1 = ship_maxSize_y and ship_gridPart[i,k] > -1 draw_sprite_ext(spr_wall_ext_corner2,0,16+34+i*ship_gridSize,16+34+k * ship_gridSize,1,1,180,c_white,1)
            }

        if k+1 =ship_maxSize_y{
            if i=0 { if ship_gridPart[i,k] > -1 draw_sprite_ext(spr_wall_ext_corner2,0,4+i*ship_gridSize,34+16+k * ship_gridSize,1,1,90,c_white,1)}else{
                if ship_gridPart[i,k] > -1 and ship_gridPart[i-1,k] = -1 {draw_sprite_ext(spr_wall_ext_corner2,0,4+i*ship_gridSize,34+16+k * ship_gridSize,1,1,90,c_white,1)}else{
                if ship_gridPart[i,k] = -1 and ship_gridPart[i-1,k] > -1 {draw_sprite_ext(spr_wall_ext_corner2,0,16+i*ship_gridSize,34+16+k * ship_gridSize,1,1,180,c_white,1)}
            }}}
    
    
    };
};


surface_reset_target()

//outputs the surface name for a grid generated with the imput perameters
var max_x = argument0;
var max_y = argument1;
var gridSize = argument2;
var surface = surface_create(max_x*gridSize+1,max_y*gridSize+1)
surface_set_target(surface)
draw_set_color(c_white)
draw_line(0,max_y*gridSize-1,max_x*gridSize,max_y*gridSize-1)
draw_line(max_x*gridSize-1,0,max_x*gridSize-1,max_y*gridSize)
for (i=0; i<max_x; i+=1)
{
    draw_line(i*gridSize,max_y*gridSize,i*gridSize,0)

};
for (i=0; i<max_y; i+=1)
{
    draw_line(0,i*gridSize,max_x*gridSize,i*gridSize)
};

surface_reset_target()
return (surface);

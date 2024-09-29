// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_reverse_line_colour(x1,y1,x2,y2,colour){
	
	var dis = point_distance(x1, y1, x2, y2);
	var dir = point_direction(x1, y1, x2, y2)
	
	var lenX = lengthdir_x(dis,dir)
	var lenY = lengthdir_y(dis,dir) 
	
	draw_line_color(	
	x1,
	y1,
	x1 - lenX, 
	y1 - lenY,
	colour,
	colour
);
};

// Will re-name just a testing purpose
function draw_reverse_line_colour_2(x1,y1,x2,y2,colour){
	
	var dis = point_distance(x1, y1, x2, y2);
	var dir = point_direction(x1, y1, x2, y2);
	
	var lenX = lengthdir_x(dis,dir);
	var lenY = lengthdir_y(dis,dir);
	
	draw_text(0,200,"LenX : " + string(lenX));
	draw_text(0,220,"LenY : " + string(lenY));
	
	draw_text(0,260,"Orgin X : " + string(x1));
	draw_text(0,280,"Orgin Y : " + string(y1));
	
	draw_line_color(	
	x1,
	y1,
	x1 - lenX, 
	y1 - lenY,
	colour,
	colour
	);
};

	
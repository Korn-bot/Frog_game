// Draw a revers line
function draw_reverse_line_colour(OrginX,OrginY,DestinationX,DestinationY,colour){
	
	// Get the distance and direction from Orgin to Destination
	var dis = point_distance(OrginX, OrginY, DestinationX, DestinationY);
	var dir = point_direction(OrginX, OrginY, DestinationX, DestinationY)
	
	// Construct a new XY position based on the distance and direction
	var lenX = lengthdir_x(dis,dir)
	var lenY = lengthdir_y(dis,dir) 
	
	// Draw the line
	draw_line_color(	
	OrginX,
	OrginY,
	OrginX - lenX, 
	OrginY - lenY,
	colour,
	colour
);
};


	
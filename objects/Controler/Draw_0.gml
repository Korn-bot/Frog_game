/*(
////////////DEBUG LOG
draw_text(0,20,"Mouse X pos : " + string(mouse_x));
draw_text(0,40,"Mouse Y pos : " + string(mouse_y));

draw_text(0,80,"Mouse X pos from player : " + string(obj_Player.x));
draw_text(0,100,"Mouse Y pos from player : " + string(obj_Player.y));

draw_text(0,140,"Angle of Mouse based on player " + string(point_direction(obj_Player.x,obj_Player.y,mouse_x,mouse_y)));
draw_text(0,160,"Distance of Player to Mouse :  " + string(point_distance(obj_Player.x,obj_Player.y,mouse_x,mouse_y)));

draw_text(0,180,"CLAMPED Distance of Player to Mouse :  " + 
	string(point_distance(
		obj_Player.x,
		obj_Player.y,
		clamp(mouse_x,obj_Player.x-global.ClampRange,obj_Player.x+100),
		clamp(mouse_y,obj_Player.y-global.ClampRange,obj_Player.y+100)
		)
	)
);
draw_text(0,240,"Mouse X :  " + string(mouseX_snapshot));
draw_text(0,260,"Mouse Y :  " + string(mouseY_snapshot));
*/




//-------------------------------------------------------------------------------------------
// Grab Snapshot of mouse X and Y
if(mouse_check_button_pressed(mb_left)){
	mouseX_snapshot = mouse_x;
	mouseY_snapshot = mouse_y;

}
if(global.CanJump ==1 && global.on_ground == true){
	
	if(mouse_check_button(mb_left) ){	
	
		var current_mouse_X = mouseX_snapshot;
		var current_mouse_Y = mouseY_snapshot;
	
		// draw the line
		draw_line(current_mouse_X,current_mouse_Y,mouse_x,mouse_y);
	
		// Draw the cricle
		draw_circle_colour( current_mouse_X, current_mouse_Y, global.ClampRange, c_white, c_white, true);
	
		// if the line is greate then clamp_range from current x and y then stop drawing
		if(point_distance(current_mouse_X,current_mouse_Y,mouse_x,mouse_y) >= global.ClampRange){
			//show_message("out of bounds");
			mouse_clear(mb_left);
		}
	
		draw_reverse_line_colour(current_mouse_X,current_mouse_Y,mouse_x,mouse_y,c_red);
	}
}

	


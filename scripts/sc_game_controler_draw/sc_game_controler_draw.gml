function sc_game_controler_draw(){
	
	if(global.on_ground == true && global.CanJump == true){
	
		// Draw the ricle when the left buttons is pressed 
		if(mouse_check_button(mb_left) ){	
	
			// Draw all the shapes 
			draw_line(mouse_snapshot.data1,mouse_snapshot.data2,mouse_x,mouse_y); 
			draw_circle_colour(mouse_snapshot.data1, mouse_snapshot.data2, global.ClampRange, c_white, c_white, true); 
			draw_reverse_line_colour(mouse_snapshot.data1,mouse_snapshot.data2,mouse_x,mouse_y,c_red);
		
		}
	}
}
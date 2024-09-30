function sc_game_controler_step(){
	
//Global cheack if the player can jump or not 
	if(position_meeting(mouse_x,mouse_y,obj_Player)){
		global.CanJump = 1;
	}
	
	// Gain the snapshot of the Mouse 
	if(mouse_check_button_pressed(mb_left)){

		mouse_snapshot = new Vector2(mouse_x,mouse_y);
	}
	
	// Free the mouse if its outside of th clamp range
	if(point_distance(mouse_snapshot.data1,mouse_snapshot.data2,mouse_x,mouse_y) >= global.ClampRange){
		//wipe the current mouse action
		mouse_clear(mb_left);
			
	}
}
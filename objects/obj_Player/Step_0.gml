


// Collisions cheack with in a range + debug mode chill
if(collision_circle(self.x,self.y,ground_hit_raidus,obj_wall,false,true)){
	global.on_ground = true;	
	ground_hit_colour = c_white;
}
else
{
	global.on_ground = false;
	ground_hit_colour = c_red; 
}



if(mouse_check_button_pressed(mb_left)){
	
	//Grab the snapshot of the mouse position at click
	mouseX_snapshot = mouse_x;
	mouseY_snapshot = mouse_y;

}

// If we are hovering the player
if(global.CanJump ==1){	
	
	if(mouse_check_button(mb_left) && global.on_ground == true){
	
		// Left right turn
		if(get_mouse_sign(mouseX_snapshot,mouse_x) == 1 ){
			self.image_xscale = 1;
		}
		if(get_mouse_sign(mouseX_snapshot,mouse_x) == 0 ){
			self.image_xscale = -1;
		}
		if(get_mouse_sign(mouseX_snapshot,mouse_x) == "Error" ){
			show_message("Dickhead");
		}
	
		// Squish the sprite based on gab position to pull ration
		var dis = point_distance(
			mouseX_snapshot,
			mouseY_snapshot,
			mouse_x,
			mouse_y);
		
	
		var Normalised_distance = clamp(dis / 100,0,1);
	
		image_yscale = 1 - Normalised_distance;

	
		show_debug_message(Normalised_distance);
	}

	// baisic Movment Logic
	if(mouse_check_button_released(mb_left) && global.on_ground == true){
	
	
		// Get the plyer Cords
	    var playerX = self.x;
	    var playerY = self.y;


		// Cllamp the maximum mouse dist ance from player to Max range or ( Clamp range ) 
	    var clampX = clamp(mouse_x, playerX - global.ClampRange, playerX + global.ClampRange)
	    var clampY = clamp(mouse_y, playerY - global.ClampRange, playerY + global.ClampRange)

		// get the didstance of the mouse from the player
	    var point_dist = point_distance(playerX,playerY,clampX,clampY)
		
		// get the diesction from player to mouse 
	    var point_dir = point_direction(playerX, playerY, mouse_x, mouse_y)

	    var lengthDirX = lengthdir_x(point_dist, point_dir)
	    var lengthDirY = lengthdir_y(point_dist, point_dir)

	    physics_apply_impulse(
			playerX, 
			playerY,		
			lengthDirX, 
			lengthDirY
			)
	
		// Reset the squish
		self.image_xscale = self_image_Xscale;
		self.image_yscale = self_image_Yscale;	
		
		global.CanJump = 0;
	}

}


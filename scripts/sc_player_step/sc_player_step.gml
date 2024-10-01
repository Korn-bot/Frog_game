// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_player_step(){
	
	//Cheack if the object is in air or not 
	circle_to_wall_collision_check();
	
	if(global.on_ground == true && global.CanJump == true){
	
		// When the Mouse gets pressed 
		if(mouse_check_button_pressed(mb_left)){
	
			//Grab the snapshot of the mouse position at click
			mouse_snapshot = new Vector2(mouse_x,mouse_y);

		}
		// When the moust button is presssed
		if(mouse_check_button(mb_left)){
	
			// Left right turn of the sprite
			if(get_mouse_sign(mouse_snapshot.data1,mouse_x) == 1 ){
				self.image_xscale = 1;
			}
			if(get_mouse_sign(mouse_snapshot.data1,mouse_x) == 0 ){
				self.image_xscale = -1;
			}
			if(get_mouse_sign(mouse_snapshot.data1,mouse_x) == "Error" ){
				show_message("Dickhead");
			}
	
			// Grab the Distance of our mouse snapshot to current mouse possition
			var dis = point_distance(
				mouse_snapshot.data1,
				mouse_snapshot.data2,
				mouse_x,
				mouse_y);
		
			// Normalize and clamp that distance 
			var Normalised_distance = clamp(dis / 100,0,1);
			// set the Y scale of the image - our distance
			image_yscale = 1 - Normalised_distance;

	
		}
	
		// baisic Movment Logic
		if(mouse_check_button_released(mb_left)){
	
	
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
				-lengthDirX, 
				-lengthDirY
				)
	
			// Reset the squish when we realses
			self.image_xscale = self_image_Xscale;
			self.image_yscale = self_image_Yscale;	
		
			// set that we cant jump untill something turns it on
			global.CanJump = false;
		}
		
		
	}//-- end of the IF game state cheack
}//-- end of function
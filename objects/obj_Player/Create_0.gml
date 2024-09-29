
// ground_cheack 

ground_hit_raidus = 40;
ground_hit_colour = c_white;

self_image_Xscale = self.image_xscale;
self_image_Yscale = self.image_yscale;

mouseX_snapshot = 0;
mouseY_snapshot = 0; 



///// TEMP AREA 
function temp_draw(){

	var playerX = self.x;
	var playerY = self.y;

			// Cllamp the maximum mouse dist ance from player to Max range or ( Clamp range ) 
	var clampX = clamp(mouse_x, playerX - global.ClampRange, playerX + global.ClampRange)
	var clampY = clamp(mouse_y, playerY - global.ClampRange, playerY + global.ClampRange)

			// get the didstance of the mouse from the player
	var point_dist = point_distance(playerX,playerY,clampX,clampY)

	// get the diesction from player to mouse 
	var point_dir = point_direction(playerX, playerY, mouse_x, mouse_y)
	
	var Clamp_rever_dir = clamp(point_dir,0,360)

	draw_text(0,20,"Mouse Angle to player : " + string(Clamp_rever_dir) + "Deg ");

	
	draw_text(0,80,"Reverse Mouse Angle to player : " + string(Clamp_rever_dir) + "Deg ");


}
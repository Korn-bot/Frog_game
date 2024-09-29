
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
	var clampX = clamp(mouse_x, playerX - global.ClampRange, playerX + global.ClampRange);
	var clampY = clamp(mouse_y, playerY - global.ClampRange, playerY + global.ClampRange);

			// get the didstance of the mouse from the player
	var point_dist = point_distance(mouseX_snapshot,mouseY_snapshot,clampX,clampY);

	// get the diesction from player to mouse 
	var point_dir = point_direction(mouseX_snapshot, mouseY_snapshot, mouse_x, mouse_y);
	
	
	var lengthDirX = lengthdir_x(point_dist, point_dir);
	
	var lengthDirY = lengthdir_y(point_dist, point_dir);

	
	draw_text(0,20,"Mouse Snapshot X : " + string(mouseX_snapshot));
	draw_text(0,40,"Mouse Snapshot Y : " + string(mouseY_snapshot));
	
	draw_text(0,80,"X based on Distance/Dir Vector : " + string(lengthDirX));
	draw_text(0,100,"Y based on Distance/Dir Vector : " + string(lengthDirY));
	
	draw_text(0,120,"Negative X based on Distance/Dir Vector : " + string(-lengthDirX));
	draw_text(0,149,"Negative Y based on Distance/Dir Vector : " + string(-lengthDirY));

}

function circle_to_wall_collision_check(){
		//if we collide with a drawn circle , set " on ground " to true
	if(collision_circle(self.x,self.y,ground_hit_raidus,obj_wall,false,true)){
		global.on_ground = true;	
	}
	else
	{
		// else we are not on ground -> tldr we are in air
		global.on_ground = false;
	}
}
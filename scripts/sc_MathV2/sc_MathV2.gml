// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function get_mouse_sign(OrginX,DestinationX){


	if(OrginX < DestinationX ){
		return 0;	
	}
	
	// More Than
	if(OrginX > DestinationX ){
		 return 1;	
	}
	else {
		return " Error ";	
	}
	
}

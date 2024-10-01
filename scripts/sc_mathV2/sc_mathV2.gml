// Cheack if the mouse is left or right based on objects X 
function get_mouse_sign(OrginX,DestinationX){

	// Mouse is on the left side 
	if(OrginX < DestinationX ){
		return 0;	
	}
	
	// Mouse is on the Right side 
	if(OrginX > DestinationX ){
		 return 1;	
	}
	//Else Error I guess ?
	else {
		return " Error ";	
	}
	
}

// Generic Vector2 strut as this engine does not have one ?
function Vector2(n_data_1,n_data_2) constructor
{
		data1 = n_data_1;
		data2 = n_data_2;
}

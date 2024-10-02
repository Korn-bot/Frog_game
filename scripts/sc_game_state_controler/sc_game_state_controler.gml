function game_state_create(){

// Make the game sate enum to flip and manager here 
	enum game_state {
		
		mainmenu,
		game,
		options,
		quit
	}
	
	game_state = game_state.mainmenu;
	
	
}

function game_state_step(){
		
		// Gain the refrance of the room we are in
		current_room = room;
		
		switch(game_state){
			
			// while we are in game
			case game_state.game:
				
			
			
			break;
			
			// when in main menu
			case game_state.mainmenu:
			
				//Varaibles Manager
				global.CanJump = 0;
				global.on_ground = false;
				
				
			break;
			
			// when we open optinos
			case game_state.options:	
				
				//Varaibles Manager
				global.CanJump = 0;
				global.on_ground = false;
				
				
			break;
			
			// When we close the game
			case game_state.quit:	
				
				game_end();
								
			break;
			
			// Default state
			default:
			break;			
		}
		game_state = system_message_listender();

		
}

function system_message_listender(){
	
	// close the game
	if(keyboard_check(vk_escape)){
		return game_state.quit;	
	}
	else{	
		return game_state = game_state;
	}
}
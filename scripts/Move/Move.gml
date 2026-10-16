function Move(){
	
	speed = 4
	
	 if keyboard_check_pressed(ord("A")) {x = x - 4};
	 if keyboard_check_pressed(ord("D")) {x = x + 4};
	
	if place_meeting(x, y, FloorTest){
		y.speed = 0;
	}
		
}
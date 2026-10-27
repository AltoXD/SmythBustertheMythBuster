if instance_exists(objPlayer){
	
	if  (round((objPlayer.bbox_top) > y)){
		falling = false
	}
	
	if  (round((objPlayer.bbox_bottom) > y)) && falling = false{
		mask_index = sprPlatform;
	} 
	
	if keyboard_check(ord("S")) && (round((objPlayer.bbox_bottom) > y)) {
	 falling = true
	 mask_index = -1
	}
	
		if mask_index = sprPlatform {
			if objPlayer.vspeed_ < 0 {
			mask_index = -1;
		}
	}
}

show_debug_message(falling)
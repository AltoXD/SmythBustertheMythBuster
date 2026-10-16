speed = 0;

if keyboard_check_direct(ord("A")) {x = speed - 4};
if keyboard_check_direct(ord("D")) {x = speed + 4};
if keyboard_check_pressed(vk_space) {y = speed - 10}
	
if !place_meeting(x, y, FloorTest){
	y += 4;
}

show_debug_message(place_meeting(x, y+2, FloorTest) = true)
//movement controls var

rightKey = keyboard_check(ord("D"));
leftKey = keyboard_check(ord("A"));
jumpKeyPressed = keyboard_check_pressed(vk_space);

//xspeed and yspeed
hspeed_ = (rightKey - leftKey) * movespd;

//apply gravity to vspeed
vspeed_ += grav;

//jump
if jumpKeyPressed && place_meeting(x, y+1, FloorTest){
 vspeed_ = jumpspeed;
};

//collision
	//x collision
	if place_meeting( x + hspeed_, y, FloorTest){
		//move player as close to the wall as possible
		var _pixelcheck = sign(hspeed_);
		
		while !place_meeting( x + _pixelcheck, y, FloorTest){
			x += _pixelcheck;
		}
		
		//set speed to zero
		hspeed_ = 0;
	};


// y collision
if place_meeting(x + hspeed_, y + vspeed_, FloorTest){
	//move player as close to the wall as possible
	var _pixelcheck = sign(vspeed_);
	
	while !place_meeting(x + hspeed_, y + _pixelcheck, FloorTest){
		y += _pixelcheck;
	}
	
	//set speed to zero
	vspeed_ = 0;
};

//move the player
x += hspeed_;
y += vspeed_;


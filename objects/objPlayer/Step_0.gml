//movement controls var

rightKey = keyboard_check(ord("D"));
leftKey = keyboard_check(ord("A"));
jumpKeyPressed = keyboard_check_pressed(vk_space);
jumpKeyHold = keyboard_check(vk_space);

//xspeed and yspeed
hspeed_ = (rightKey - leftKey) * movespd;

//apply gravity to vspeed
vspeed_ += grav;


//jump

if place_meeting(x, y+1, FloorTest){
	jumpcount = 0;
}

else {
	if jumpcount == 0 {
		jumpcount = 1;
	}
}
	
//initiate the jump
if jumpKeyPressed && jumpcount < jumpMax{

	jumpcount++;
	
	//set the jump timer
	jumptimer = jumpholdframes;
}

//end the jump early by stopping the timer if the jump button is not being held
if !jumpKeyHold{jumptimer = 0;};

//jump speed based on the timer
if jumptimer > 0{

	//constantly set the yspeed to be the jump speed
	vspeed_ = jumpspeed;
	
	//count down the timer
	jumptimer--;
}



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
	//move player as close to the floor as possible
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

//platform jump through - test

	

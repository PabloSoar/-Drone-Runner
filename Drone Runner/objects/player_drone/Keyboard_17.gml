if (can_boost == true && boost == 0) {
    
    boost = 1;
    can_boost = false;
    
    speed = 20;
    
    alarm[0] = 5 * room_speed; 
    

    alarm[1] = boost_cooldown * room_speed;	
}
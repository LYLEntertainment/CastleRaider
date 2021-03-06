///
/// player jump state
///

// key input
get_input();

// movement
calculate_movement();

// check if we can move out of the state
if( on_ground() ) {
	// apply stretch
	scale_x = scale_max;
	scale_y = scale_min;
	
	if( horizontal_speed != 0 ) {
		state = states.WALK;
	} else {
		state = states.IDLE;
	}
	// create dust if landing
	if( vertical_speed > 0 ) {
		instance_create_layer(x, y, "Dust", obj_player_dust_land);
		audio_play_sound(snd_landing, 20, false);
	}
}

if( attack ) {
	state = states.ATTACK;
	image_index = 0;
}

// enable double jumps
if( jump ) {
	jumped();
}

// enable smaller jumps
if( vertical_speed < 0 && !jump_held ) {
	vertical_speed = max(vertical_speed, vertical_speed/jump_dampner);
}

// apply movement
collision();

// check player's hp
check_player_hp();

// apply animation
animation();
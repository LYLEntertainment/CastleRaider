horizontal_speed = 0;
max_hsp_initial = 2;
max_horizontal_speed = max_hsp_initial;

vertical_speed = 0;
spd = 2;
jump_speed = -6;
hsp_decimal = 0;
vsp_decimal = 0;

facing = choose(-1, 1);

// breathing
breath_timer_initial = random_range(room_speed * 1.75, room_speed * 2.25);
breath_timer = breath_timer_initial;
image_speed = 0;

// jump
// will he jump this chance
jump_chance = 0.5;
// how often to check for jump chance
jump_timer_initial = random_range(room_speed, room_speed * 1.5);
jump_timer = jump_timer_initial;

// states
enum frog_states
{
	IDLE,
	JUMP_START,
	JUMP,
	JUMP_LAND
}

state = frog_states.IDLE;

states_array[frog_states.IDLE] = frog_idle_state;
states_array[frog_states.JUMP_START] = frog_jump_start_state;
states_array[frog_states.JUMP] = frog_jump_state;
states_array[frog_states.JUMP_LAND] = frog_land_state;

sprites_array[frog_states.IDLE] = spr_frog_idle;
sprites_array[frog_states.JUMP_START] = spr_frog_jump_start;
sprites_array[frog_states.JUMP] = spr_frog_jump;
sprites_array[frog_states.JUMP_LAND] = spr_frog_jump_land;
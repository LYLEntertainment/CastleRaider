///
/// tiles
///

// get tile map
global.map = layer_tilemap_get_id("Collisions");
global.tile_size = 32;

// create player
if (!instance_exists(obj_player)) {
	instance_create_layer(x, y, "Player", obj_player);
}

enum Tile {
	w = 16,
	h = 16
}

enum Room {
	w = 480,
	h = 270
}

function random_sequence(a, b) {
	var random_numbers = ds_list_create()
	for (var i = a; i < b; i += 1) {
		ds_list_add(random_numbers, i)
	}
	ds_list_shuffle(random_numbers)
	return random_numbers
}

function snap_to_tile_x(xx) {
	return floor(xx / Tile.w) * Tile.w
}

function snap_to_tile_y(yy) {
	return floor(yy / Tile.h) * Tile.h
}

function snap_to_tile(xx, yy) {
	return {x: snap_to_tile_x(xx), y: snap_to_tile_y(yy)}
}

function array_remove(array, item) {
	for (var i = 0; i < array_length(array); i += 1) {
		if array[i] == item {
			array_delete(array, i, 1)
		}
	}
}


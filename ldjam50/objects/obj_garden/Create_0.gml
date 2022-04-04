
plants = []
ground_y = Tile.h * 14
time_place_prev = obj_time.now

window_set_size(1920, 1080)

function plant_at(xx, yy) {
	for (var i = 0; i < array_length(plants); i += 1) {
		var plant = plants[i]
		if plant.at(xx, yy) {
			return plant
		}
	}
	return false
}

function place(obj, xx) {
	if not plant_at(xx, ground_y) {
		var inst = instance_create_depth(xx, ground_y, 0, obj)
		array_push(plants, inst)
	}
}

function place_randomly(obj) {
	var sequence = random_sequence(0, Room.w / Tile.w)
	
	for (var i = 0; i < Room.w / Tile.w; i += 1) {
		var pos_x = sequence[| i]
		if not plant_at(pos_x * Tile.w, ground_y) {
			place(obj, pos_x * Tile.w)
			return true
		}
	}
	return false
}

function cut(xx, yy) {
	var plant = plant_at(xx, yy)
	plant.cut(xx, yy)
	if plant.root_at(xx, yy) {
		instance_destroy(plant)
		array_remove(plants, plant)
	}
}


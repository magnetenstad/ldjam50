
sprite = spr_plant

branches = []

time_grow_prev = obj_time.now

function at(xx, yy) {
	if (xx == x and yy == y) {
		return true	
	}
	for (var i = 0; i < array_length(branches); i += 1) {
		var branch = branches[i]
		if branch.x == xx and branch.y == yy {
			return true
		}
	}
	return false
}

function root_at(xx, yy) {
	return x == xx and y == yy
}

function cut(xx, yy) {
	var pop = 0
	var len = array_length(branches)
	for (var i = 0; i < len; i += 1) {
		var branch = branches[i]
		if branch.x == xx and branch.y == yy {
			pop = len - i
		}
		if pop != 0 {
			particle(branch.sprite, branch.x, branch.y, random_range(-3, 3), -2)
		}
	}
	repeat(pop) {
		array_pop(branches)
	}
	time_grow_prev = obj_time.now
}


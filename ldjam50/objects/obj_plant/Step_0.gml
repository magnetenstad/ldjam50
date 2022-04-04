
if obj_time.now - time_grow_prev >= 60 {
	time_grow_prev = obj_time.now
	
	var branch = {
		x: x,
		y: y - Tile.h,
		sprite: spr_plant
	}
	var len = array_length(branches)
	
	if len {
		var branch_prev = branches[len - 1]
		branch.x = branch_prev.x
		branch.y = branch_prev.y - Tile.w
		
		if irandom(branch.y / Tile.h) == 0 {
			branch.sprite = spr_seed
		} else if irandom((4 * Tile.h + branch.y) / (Tile.h * 3)) == 0 {
			branch.x += Tile.w * (1 - 2 * irandom(1))
			branch.y += Tile.h
			branch.sprite = spr_plant_hori
		}
	}

	if branch.y >= 0 and not obj_garden.plant_at(branch.x, branch.y) {
		array_push(branches, branch)
	}
}


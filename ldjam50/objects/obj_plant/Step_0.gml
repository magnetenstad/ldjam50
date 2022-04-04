
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
	}

	if branch.y >= 0 {
		
		if irandom(branch.y / Tile.h) == 0 {
			branch.sprite = spr_seed
		}
		
		array_push(branches, branch)
	}
}


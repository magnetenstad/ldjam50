
function particle(sprite, xx, yy, spd_x, spd_y) {
	var par = instance_create_depth(xx, yy, 0, obj_particle)
	par.spd_x = spd_x
	par.spd_y = spd_y
	par.sprite_index = sprite
}



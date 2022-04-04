
spd_x *= 0.98
spd_y += grav

x += spd_x
y += spd_y

if x < 0 or Room.w < x + Tile.w {
	spd_x *= -1
	x += spd_x
}

if sprite_index == spr_seed and y >= obj_garden.ground_y {
	obj_garden.place(obj_plant, snap_to_tile_x(x))
	instance_destroy()
}

if y >= Room.h {
	instance_destroy()
}


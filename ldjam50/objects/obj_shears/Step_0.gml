
x = mouse_x
y = mouse_y

pos = snap_to_tile(x, y)

enabled = obj_garden.plant_at(pos.x, pos.y)

if enabled and mouse_check_button_pressed(mb_left) {
	obj_garden.cut(pos.x, pos.y)
}



for (i = 0; i < array_length(branches); i += 1) {
	var branch = branches[i]
	draw_sprite(branch.sprite, 0, branch.x, branch.y)
}

draw_self()


minetest.register_craft({
	output = "moreblocks:circle_stone_bricks 16",
	recipe = {
		{"default:stone", "default:stone", "default:stone"},
		{"default:stone", "default:coalblock", "default:stone"},
		{"default:stone", "default:stone", "default:stone"},
	}
})

minetest.register_craft({
	output = "moreblocks:stone_tile 8",
	recipe = {
		{"default:stone_block", "default:stone_block"},
		{"default:stone_block", "default:stone_block"},
	}
})
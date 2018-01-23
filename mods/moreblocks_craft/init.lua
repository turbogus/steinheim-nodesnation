minetest.clear_craft({
	recipe = {
		{"default:stone", "default:stone", "default:stone"},
		{"default:stone", "", "default:stone"},
		{"default:stone", "default:stone", "default:stone"},
	}
})

minetest.register_craft({
	output = "moreblocks:circle_stone_bricks 5",
	recipe = {
		{"", "default:stone", ""}, 
		{"default:stone", "default:coal_lump", "default:stone"},
		{"", "default:stone", ""},
	}
})

minetest.clear_craft({
	recipe = {
		{"default:cobble", "default:cobble"},
		{"default:cobble", "default:cobble"},
	}
})

minetest.register_craft({
	output = "moreblocks:stone_tile 9",
	recipe = {
		{"default:cobble", "default:cobble", "default:cobble"},
		{"default:cobble", "default:stone", "default:cobble"},
		{"default:cobble", "default:cobble", "default:cobble"},
	}
})
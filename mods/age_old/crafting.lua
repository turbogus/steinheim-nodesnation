--[[ 
AGE_OLD: crafting recipes

Cree par onyx58
Code et graphismes sous licence CreativeCommons by-nc 4.0
--]]

minetest.register_craft({
	output = "age_old:sandstone_aged 9",
	recipe = {
		{"default:sandstone", "default:sand",
"default:sandstone"},
		{"default:sandstone", "default:sand",
"default:sandstone"},
		{"default:sandstone", "default:sand",
"default:sandstone"},
	}
})

minetest.register_craft({
	output = "age_old:sandstone_aged_baluster 4",
	recipe = {
		{"age_old:sandstone_aged", "age_old:sandstone_aged",
"age_old:sandstone_aged"},
		{"group:stick", "default:sand", "group:stick"},
		{"age_old:sandstone_aged", "age_old:sandstone_aged",
"age_old:sandstone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:sandstone_basrelief 4",
	recipe = {
		{"age_old:sandstone_aged", "age_old:sandstone_aged",
"age_old:sandstone_aged"},
		{"age_old:sandstone_aged", "age_old:sandstone_bricks",
"age_old:sandstone_aged"},
		{"age_old:sandstone_aged", "age_old:sandstone_aged",
"age_old:sandstone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:sandstone_basrelief2 4",
	recipe = {
		{"group:stick", "age_old:sandstone_aged",
"age_old:sandstone_aged"},
		{"age_old:sandstone_aged", "age_old:sandstone_bricks",
"age_old:sandstone_aged"},
		{"age_old:sandstone_aged", "age_old:sandstone_aged",
"group:stick"},
	}
})

minetest.register_craft({
	output = "age_old:sandstone_basrelief3 4",
	recipe = {
		{"age_old:sandstone_aged", "age_old:sandstone_aged",
"group:stick"},
		{"age_old:sandstone_aged", "age_old:sandstone_bricks",
"age_old:sandstone_aged"},
		{"group:stick", "age_old:sandstone_aged",
"age_old:sandstone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:sandstone_bricks 9",
	recipe = {
		{"age_old:sandstone_aged", "age_old:sandstone_aged",
"age_old:sandstone_aged"},
		{"age_old:sandstone_aged", "age_old:sandstone_aged",
"age_old:sandstone_aged"},
		{"age_old:sandstone_aged", "age_old:sandstone_aged",
"age_old:sandstone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:sandstone_bricks_alt 9",
	recipe = {
		{"age_old:sandstone_aged", "age_old:sandstone_aged",
"default:sandstone"},
		{"age_old:sandstone_aged", "default:sandstone",
"age_old:sandstone_aged"},
		{"default:sandstone", "age_old:sandstone_aged",
"age_old:sandstone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:sandstone_cracked 9",
	recipe = {
		{"age_old:sandstone_aged", "age_old:sandstone_aged",
"age_old:sandstone_aged"},
		{"age_old:sandstone_aged", "default:sand",
"age_old:sandstone_aged"},
		{"age_old:sandstone_aged", "age_old:sandstone_aged",
"age_old:sandstone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:sandstone_double_slab 9",
	recipe = {
		{"age_old:sandstone_aged", "age_old:sandstone_aged",
"age_old:sandstone_aged"},
		{"default:sandstone", "default:sandstone",
"default:sandstone"},
		{"age_old:sandstone_aged", "age_old:sandstone_aged",
"age_old:sandstone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:sandstone_facade 4",
	recipe = {
		{"age_old:sandstone_bricks", "age_old:sandstone_bricks",
		"age_old:sandstone_bricks"},
		{"age_old:sandstone_aged", "age_old:sandstone_aged",
"age_old:sandstone_aged"},
		{"age_old:sandstone_aged", "age_old:sandstone_aged",
"age_old:sandstone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:sandstone_floor 9",
	recipe = {
		{"default:sandstone", "age_old:sandstone_aged",
"default:sandstone"},
		{"age_old:sandstone_aged", "default:sandstone",
"age_old:sandstone_aged"},
		{"default:sandstone", "age_old:sandstone_aged",
"default:sandstone"},
	}
})

minetest.register_craft({
	output = "age_old:sandstone_pillar 4",
	recipe = {
		{"age_old:sandstone_aged", "default:sandstone",
"age_old:sandstone_aged"},
		{"age_old:sandstone_aged", "default:sandstone",
"age_old:sandstone_aged"},
		{"age_old:sandstone_aged", "default:sandstone",
"age_old:sandstone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:sandstone_tile 4",
	recipe = {
		{"age_old:sandstone_aged", "age_old:sandstone_aged",
"age_old:sandstone_aged"},
		{"age_old:sandstone_aged", "age_old:sandstone_floor",
"age_old:sandstone_aged"},
		{"age_old:sandstone_aged", "age_old:sandstone_aged",
"age_old:sandstone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:sandstone_wall_frieze 4",
	recipe = {
		{"age_old:sandstone_aged", "age_old:sandstone_aged",
"age_old:sandstone_aged"},
		{"group:stick", "group:stick", "group:stick"},
		{"age_old:sandstone_aged", "age_old:sandstone_aged",
"age_old:sandstone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:stone_aged 9",
	recipe = {
		{"default:stone", "default:cobble",
"default:stone"},
		{"default:stone", "default:cobble",
"default:stone"},
		{"default:stone", "default:cobble",
"default:stone"},
	}
})

minetest.register_craft({
	output = "age_old:stone_aged_cracked 9",
	recipe = {
		{"age_old:stone_aged", "age_old:stone_aged",
"age_old:stone_aged"},
		{"age_old:stone_aged", "default:cobble",
"age_old:stone_aged"},
		{"age_old:stone_aged", "age_old:stone_aged",
"age_old:stone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:stone_aged_double_slab 9",
	recipe = {
		{"age_old:stone_aged", "age_old:stone_aged",
"age_old:stone_aged"},
		{"default:stone", "default:stone",
"default:stone"},
		{"age_old:stone_aged", "age_old:stone_aged",
"age_old:stone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:stone_aged_floor 9",
	recipe = {
		{"default:stone", "age_old:stone_aged",
"default:stone"},
		{"age_old:stone_aged", "default:stone",
"age_old:stone_aged"},
		{"default:stone", "age_old:stone_aged",
"default:stone"},
	}
})

minetest.register_craft({
	output = "age_old:stone_aged_pavement 9",
	recipe = {
		{"age_old:stone_aged", "default:cobble",
"age_old:stone_aged"},
		{"default:cobble", "age_old:stone_aged",
"default:cobble"},
		{"age_old:stone_aged", "default:cobble",
"age_old:stone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:stone_aged_tile 4",
	recipe = {
		{"age_old:stone_aged", "age_old:stone_aged",
"age_old:stone_aged"},
		{"age_old:stone_aged", "age_old:stone_aged_floor",
"age_old:stone_aged"},
		{"age_old:stone_aged", "age_old:stone_aged",
"age_old:stone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:stonebricks_aged 9",
	recipe = {
		{"age_old:stone_aged", "age_old:stone_aged",
"age_old:stone_aged"},
		{"age_old:stone_aged", "age_old:stone_aged",
"age_old:stone_aged"},
		{"age_old:stone_aged", "age_old:stone_aged",
"age_old:stone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:stonebricks_aged_alt 9",
	recipe = {
		{"age_old:stone_aged", "age_old:stone_aged",
"default:stone"},
		{"age_old:stone_aged", "default:stone",
"age_old:stone_aged"},
		{"default:stone", "age_old:stone_aged",
"age_old:stone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:stonebricks_aged_mossy 9",
	recipe = {
		{"age_old:stone_aged", "age_old:stone_aged",
"age_old:stone_aged"},
		{"age_old:stone_aged", "default:junglegrass",
"age_old:stone_aged"},
		{"age_old:stone_aged", "age_old:stone_aged",
"age_old:stone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:stone_aged_facade 4",
	recipe = {
		{"age_old:stone_aged", "age_old:stone_aged",
"age_old:stone_aged"},
		{"age_old:stone_aged", "age_old:stonebricks_aged",
"age_old:stone_aged"},
		{"age_old:stone_aged", "age_old:stone_aged",
"age_old:stone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:stone_aged_pillar 4",
	recipe = {
		{"age_old:stone_aged", "default:stone",
"age_old:stone_aged"},
		{"age_old:stone_aged", "default:stone",
"age_old:stone_aged"},
		{"age_old:stone_aged", "default:stone",
"age_old:stone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:stone_basrelief 4",
	recipe = {
		{"group:stick", "age_old:stone_aged",
"age_old:stone_aged"},
		{"age_old:stone_aged", "age_old:stonebricks_aged",
"age_old:stone_aged"},
		{"age_old:stone_aged", "age_old:stone_aged",
"group:stick"},
	}
})

minetest.register_craft({
	output = "age_old:stone_basrelief2 4",
	recipe = {
		{"age_old:stone_aged", "age_old:stone_aged",
"group:stick"},
		{"age_old:stone_aged", "age_old:stonebricks_aged",
"age_old:stone_aged"},
		{"group:stick", "age_old:stone_aged",
"age_old:stone_aged"},
	}
})

minetest.register_craft({
	output = "age_old:stone_basrelief3 4",
	recipe = {
		{"age_old:stone_aged", "group:stick",
"age_old:stone_aged"},
		{"age_old:stone_aged", "age_old:stonebricks_aged",
"age_old:stone_aged"},
		{"age_old:stone_aged", "group:stick",
"age_old:stone_aged"},
	}
})




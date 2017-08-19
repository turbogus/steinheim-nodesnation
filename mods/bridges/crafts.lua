minetest.register_craftitem("bridges:zbridges_steel_rod", {
	description = "Steel Rod",
	inventory_image = "steel_rod.png",
})

minetest.register_craftitem("bridges:zbridges_diagonal_steel_rod", {
	description = "Steel Rod",
	inventory_image = "diagonal_steel_rod.png",
})

minetest.register_craft({
	output = 'bridges:zbridges_steel_rod 3',
	recipe = {
		{'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'bridges:zbridges_diagonal_steel_rod 3',
	recipe = {
		{'','','bridges:zbridges_steel_rod'},
		{'','bridges:zbridges_steel_rod',''},
		{'bridges:zbridges_steel_rod','',''},
	}
})

minetest.register_craft({
	output = 'bridges:scaffolding 2',
	recipe = {
		{'group:stick','','group:stick'},
		{'','group:stick',''},
		{'group:stick','','group:stick'},
	}
})

minetest.register_craft({
	output = 'bridges:zbridges_steel_rod',
	recipe = {
		{'bridges:zbridges_diagonal_steel_rod'},
	}
})

minetest.register_craft({
	output = 'bridges:train_deck_White',
	type = 'shapeless',
	recipe = {'bridges:zbridges_diagonal_steel_rod','bridges:zbridges_diagonal_steel_rod'},
})

minetest.register_craft({
	output = 'bridges:block_White',
	recipe = {
		{'bridges:zbridges_steel_rod','bridges:zbridges_steel_rod','bridges:zbridges_steel_rod'},
		{'bridges:zbridges_steel_rod','bridges:zbridges_steel_rod','bridges:zbridges_steel_rod'},
		{'bridges:zbridges_steel_rod','bridges:zbridges_steel_rod','bridges:zbridges_steel_rod'},
	}
})

minetest.register_craft({
	output = 'bridges:deck_White 8',
	recipe = {
		{'bridges:block_White'},
	}
})

minetest.register_craft({
	output = 'bridges:deck_edge_White 14',
	recipe = {
		{'','bridges:block_White'},
		{'bridges:block_White',''},
	}
})

minetest.register_craft({
	output = 'bridges:step_White 12',
	recipe = {
		{'','bridges:block_White'},
		{'bridges:block_White','bridges:block_White'},
	}
})

minetest.register_craft({
	output = 'bridges:step_White 12',
	recipe = {
		{'','bridges:block_White'},
		{'bridges:block_White','bridges:block_White'},
	}
})

minetest.register_craft({
	output = 'bridges:step_White 12',
	recipe = {
		{'bridges:block_White',''},
		{'bridges:block_White','bridges:block_White'},
	}
})

minetest.register_craft({
	output = 'bridges:suspension_cable_White 16',
	recipe = {
		{'bridges:block_White'},
		{'bridges:block_White'},
		{'bridges:block_White'},
	}
})

minetest.register_craft({
	output = 'bridges:suspension_top_White 8',
	recipe = {
		{'bridges:block_White','bridges:block_White','bridges:block_White'},
		{'','bridges:block_White',''},
		{'','bridges:block_White',''},
	}
})

minetest.register_craft({
	output = 'bridges:girder_mid_White 4',
	recipe = {
		{'bridges:zbridges_steel_rod','bridges:zbridges_steel_rod','bridges:zbridges_steel_rod'},
		{'bridges:zbridges_steel_rod','bridges:block_White','bridges:zbridges_steel_rod'},
		{'bridges:zbridges_steel_rod','bridges:zbridges_steel_rod','bridges:zbridges_steel_rod'},
	}
})

minetest.register_craft({
	output = 'bridges:girder_left_endWhite 4',
	recipe = {
		{'','','bridges:zbridges_steel_rod'},
		{'','bridges:block_White','bridges:zbridges_steel_rod'},
		{'bridges:zbridges_steel_rod','bridges:zbridges_steel_rod','bridges:zbridges_steel_rod'},
	}
})

minetest.register_craft({
	output = 'bridges:girder_right_White 4',
	recipe = {
		{'bridges:zbridges_steel_rod','',''},
		{'bridges:zbridges_steel_rod','bridges:block_White',''},
		{'bridges:zbridges_steel_rod','bridges:zbridges_steel_rod','bridges:zbridges_steel_rod'},
	}
})

local bridge_colors = {
	"Green",
	"Red",
	"Steel",
	"White",
}

for c in ipairs(bridge_colors) do
	local bridge_colors = bridge_colors[c]

minetest.register_craft({
	output = 'bridges:corrugated_steel',
	type = 'shapeless',
	recipe = {'bridges:deck_'..bridge_colors,'default:coal_lump'},
})

minetest.register_craft({
	output = 'bridges:corrugated_steel_ceiling 3',
	recipe = {
		{'bridges:corrugated_steel','bridges:corrugated_steel','bridges:corrugated_steel'},
	}
})

minetest.register_craft({
	output = 'bridges:truss_superstructure_left_slantWhite',
	recipe = {
		{'','bridges:zbridges_steel_rod','bridges:zbridges_diagonal_steel_rod'},
		{'bridges:zbridges_steel_rod','bridges:zbridges_diagonal_steel_rod','bridges:zbridges_steel_rod'},
		{'bridges:zbridges_diagonal_steel_rod','bridges:zbridges_steel_rod',''},
	}
})

minetest.register_craft({
	output = 'bridges:truss_superstructure_right_slant'..bridge_colors,
	recipe = {
		{'bridges:truss_superstructure_left_slant'..bridge_colors},
	}
})

minetest.register_craft({
	output = 'bridges:truss_superstructure_left_slant'..bridge_colors,
	recipe = {
		{'bridges:truss_superstructure_right_slant'..bridge_colors},
	}
})

minetest.register_craft({
	output = 'bridges:truss_superstructure_end_left_slantWhite',
	recipe = {
		{'','','bridges:zbridges_diagonal_steel_rod'},
		{'','bridges:zbridges_diagonal_steel_rod','bridges:zbridges_steel_rod'},
		{'bridges:zbridges_diagonal_steel_rod','bridges:zbridges_steel_rod',''},
	}
})

minetest.register_craft({
	output = 'bridges:truss_superstructure_end_right'..bridge_colors,
	recipe = {
		{'bridges:truss_superstructure_end_left_slant'..bridge_colors},
	}
})

minetest.register_craft({
	output = 'bridges:truss_superstructure_end_left'..bridge_colors,
	recipe = {
		{'bridges:truss_superstructure_end_right_slant'..bridge_colors},
	}
})

minetest.register_craft({
	output = 'bridges:truss_superstructure_mid'..bridge_colors,
	type = 'shapeless',
	recipe = {'bridges:truss_superstructure_left_slant'..bridge_colors,'bridges:truss_superstructure_right_slant'..bridge_colors},
})

minetest.register_craft({
	output = 'bridges:truss_substructure_left_slant_White',
	recipe = {
		{'','bridges:zbridges_steel_rod',''},
		{'bridges:zbridges_steel_rod','bridges:zbridges_diagonal_steel_rod','bridges:zbridges_steel_rod'},
		{'','bridges:zbridges_steel_rod',''},
	}
})

minetest.register_craft({
	output = 'bridges:truss_substructure_right_slant'..bridge_colors,
	recipe = {
		{'bridges:truss_substructure_left_slant'..bridge_colors},
	}
})

minetest.register_craft({
	output = 'bridges:truss_substructure_left_slant'..bridge_colors,
	recipe = {
		{'bridges:truss_substructure_right_slant'..bridge_colors},
	}
})

minetest.register_craft({
	output = 'bridges:truss_substructure_end_left_slant_White',
	recipe = {
		{'','bridges:zbridges_steel_rod'},
		{'bridges:zbridges_steel_rod','bridges:zbridges_diagonal_steel_rod'},
	}
})

minetest.register_craft({
	output = 'bridges:truss_substructure_end_right'..bridge_colors,
	recipe = {
		{'bridges:truss_substructure_end_left_slant'..bridge_colors},
	}
})

minetest.register_craft({
	output = 'bridges:truss_substructure_end_left'..bridge_colors,
	recipe = {
		{'bridges:truss_substructure_end_right_slant'..bridge_colors},
	}
})

minetest.register_craft({
	output = 'bridges:truss_substructure_mid'..bridge_colors,
	type = 'shapeless',
	recipe = {'bridges:truss_substructure_left_slant_'..bridge_colors,'bridges:truss_substructure_right_slant_'..bridge_colors},
})

minetest.register_craft({
	output = 'bridges:truss_substructure_simpleWhite',
	recipe = {
		{'','bridges:zbridges_steel_rod',''},
		{'bridges:zbridges_diagonal_steel_rod','','bridges:zbridges_diagonal_steel_rod'},
		{'','bridges:zbridges_steel_rod',''},
	}
})

minetest.register_craft({
	output = 'bridges:small_upper_chord_White',
	recipe = {
		{'','bridges:zbridges_steel_rod',''},
		{'','bridges:zbridges_diagonal_steel_rod',''},
		{'','bridges:zbridges_steel_rod',''},
	}
})

minetest.register_craft({
	output = 'bridges:medium_upper_chord_White',
	recipe = {
		{'','bridges:zbridges_steel_rod',''},
		{'','bridges:zbridges_diagonal_steel_rod',''},
		{'','bridges:zbridges_steel_rod','bridges:zbridges_diagonal_steel_rod'},
	}
})

minetest.register_craft({
	output = 'bridges:medium_upper_chord_White',
	recipe = {
		{'bridges:zbridges_diagonal_steel_rod','bridges:zbridges_steel_rod',''},
		{'','bridges:zbridges_diagonal_steel_rod',''},
		{'','bridges:zbridges_steel_rod',''},
	}
})

minetest.register_craft({
	output = 'bridges:large_upper_chord_White',
	recipe = {
		{'bridges:zbridges_diagonal_steel_rod','bridges:zbridges_steel_rod',''},
		{'','bridges:zbridges_diagonal_steel_rod',''},
		{'','bridges:zbridges_steel_rod','bridges:zbridges_diagonal_steel_rod'},
	}
})

minetest.register_craft({
	output = 'bridges:small_support_White',
	recipe = {
		{'','',''},
		{'bridges:zbridges_steel_rod','bridges:zbridges_diagonal_steel_rod','bridges:zbridges_steel_rod'},
		{'','',''},
	}
})

minetest.register_craft({
	output = 'bridges:medium_support_White',
	recipe = {
		{'','',''},
		{'bridges:zbridges_steel_rod','bridges:zbridges_diagonal_steel_rod','bridges:zbridges_steel_rod'},
		{'','','bridges:zbridges_diagonal_steel_rod'},
	}
})

minetest.register_craft({
	output = 'bridges:medium_support_White',
	recipe = {
		{'bridges:zbridges_diagonal_steel_rod','',''},
		{'bridges:zbridges_steel_rod','bridges:zbridges_diagonal_steel_rod','bridges:zbridges_steel_rod'},
		{'','',''},
	}
})

minetest.register_craft({
	output = 'bridges:large_support_White',
	recipe = {
		{'bridges:zbridges_diagonal_steel_rod','',''},
		{'bridges:zbridges_steel_rod','bridges:zbridges_diagonal_steel_rod','bridges:zbridges_steel_rod'},
		{'','','bridges:zbridges_diagonal_steel_rod'},
	}
})

minetest.register_craft({
	output = 'bridges:truss_superstructure_simple_end_rightWhite',
	recipe = {
		{'bridges:zbridges_steel_rod'},
		{'bridges:zbridges_steel_rod'},
		{'bridges:zbridges_steel_rod'},
	}
})

minetest.register_craft({
	output = 'bridges:truss_superstructure_simple_endWhite',
	recipe = {
		{'bridges:zbridges_diagonal_steel_rod'},
		{'bridges:zbridges_diagonal_steel_rod'},
		{'bridges:zbridges_diagonal_steel_rod'},
	}
})

minetest.register_craft({
	output = 'bridges:truss_superstructure_simpleWhite',
	recipe = {
		{'bridges:zbridges_diagonal_steel_rod','bridges:zbridges_steel_rod','bridges:zbridges_diagonal_steel_rod'},
		{'bridges:zbridges_diagonal_steel_rod','','bridges:zbridges_diagonal_steel_rod'},
		{'bridges:zbridges_diagonal_steel_rod','bridges:zbridges_steel_rod','bridges:zbridges_diagonal_steel_rod'},
	}
})

end

local bridge_nodes = {
	"block_",
	"step_",
	"suspension_top_",
	"suspension_cable_",
	"deck_",
	"deck_edge_",
	"train_deck_",
	"girder_mid_",
	"girder_right_",
	"girder_left_end",
	"truss_superstructure_right_slant",
	"truss_superstructure_left_slant",
	"truss_superstructure_end_right_slant",
	"truss_superstructure_end_left_slant",
	"truss_superstructure_mid",
	"truss_substructure_end_right_slant_",
	"truss_substructure_end_left_slant_",
	"truss_substructure_right_slant_",
	"truss_substructure_left_slant_",
	"truss_substructure_simple",
	"truss_substructure_mid",
	"truss_substructure_mid_simple",
	"truss_superstructure_simple_end",
	"truss_superstructure_simple_end_right",
	"small_upper_chord_",
	"medium_upper_chord_",
	"large_upper_chord_",
	"small_support_",
	"medium_support_",
	"large_support_",
}

for c in ipairs(bridge_nodes) do
	local bridge_nodes = bridge_nodes[c]

minetest.register_craft({
	output = 'bridges:'..bridge_nodes..'White',
	type = 'shapeless',
	recipe = {'bridges:'..bridge_nodes..'White','dye:white'},
})

minetest.register_craft({
	output = 'bridges:'..bridge_nodes..'White',
	type = 'shapeless',
	recipe = {'bridges:'..bridge_nodes..'Steel','dye:white'},
})

minetest.register_craft({
	output = 'bridges:'..bridge_nodes..'White',
	type = 'shapeless',
	recipe = {'bridges:'..bridge_nodes..'Green','dye:white'},
})

minetest.register_craft({
	output = 'bridges:'..bridge_nodes..'White',
	type = 'shapeless',
	recipe = {'bridges:'..bridge_nodes..'Red','dye:white'},
})

minetest.register_craft({
	output = 'bridges:'..bridge_nodes..'Red',
	type = 'shapeless',
	recipe = {'bridges:'..bridge_nodes..'White','dye:red'},
})

minetest.register_craft({
	output = 'bridges:'..bridge_nodes..'Red',
	type = 'shapeless',
	recipe = {'bridges:'..bridge_nodes..'Steel','dye:red'},
})

minetest.register_craft({
	output = 'bridges:'..bridge_nodes..'Red',
	type = 'shapeless',
	recipe = {'bridges:'..bridge_nodes..'Green','dye:red'},
})

minetest.register_craft({
	output = 'bridges:'..bridge_nodes..'Red',
	type = 'shapeless',
	recipe = {'bridges:'..bridge_nodes..'Red','dye:red'},
})

minetest.register_craft({
	output = 'bridges:'..bridge_nodes..'Green',
	type = 'shapeless',
	recipe = {'bridges:'..bridge_nodes..'White','dye:green'},
})

minetest.register_craft({
	output = 'bridges:'..bridge_nodes..'Green',
	type = 'shapeless',
	recipe = {'bridges:'..bridge_nodes..'Steel','dye:green'},
})

minetest.register_craft({
	output = 'bridges:'..bridge_nodes..'Green',
	type = 'shapeless',
	recipe = {'bridges:'..bridge_nodes..'Green','dye:green'},
})

minetest.register_craft({
	output = 'bridges:'..bridge_nodes..'Green',
	type = 'shapeless',
	recipe = {'bridges:'..bridge_nodes..'Red','dye:green'},
})

minetest.register_craft({
	output = 'bridges:'..bridge_nodes..'Steel',
	type = 'shapeless',
	recipe = {'bridges:'..bridge_nodes..'White','dye:black'},
})

minetest.register_craft({
	output = 'bridges:'..bridge_nodes..'Steel',
	type = 'shapeless',
	recipe = {'bridges:'..bridge_nodes..'Steel','dye:black'},
})

minetest.register_craft({
	output = 'bridges:'..bridge_nodes..'Steel',
	type = 'shapeless',
	recipe = {'bridges:'..bridge_nodes..'Green','dye:black'},
})

minetest.register_craft({
	output = 'bridges:'..bridge_nodes..'Steel',
	type = 'shapeless',
	recipe = {'bridges:'..bridge_nodes..'Red','dye:black'},
})

minetest.register_craft({
	output = 'bridges:'..bridge_nodes..'Steel',
	type = 'shapeless',
	recipe = {'bridges:'..bridge_nodes..'White','dye:dark_grey'},
})

minetest.register_craft({
	output = 'bridges:'..bridge_nodes..'Steel',
	type = 'shapeless',
	recipe = {'bridges:'..bridge_nodes..'Steel','dye:dark_grey'},
})

minetest.register_craft({
	output = 'bridges:'..bridge_nodes..'Steel',
	type = 'shapeless',
	recipe = {'bridges:'..bridge_nodes..'Green','dye:dark_grey'},
})

minetest.register_craft({
	output = 'bridges:'..bridge_nodes..'Steel',
	type = 'shapeless',
	recipe = {'bridges:'..bridge_nodes..'Red','dye:dark_grey'},
})

end
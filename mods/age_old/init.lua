--[[

[AGE_OLD]
Mod ajoutant des blocs pour les constructions antiques
Cree par onyx58
Code et graphismes sous licence CreativeCommons by-nc 4.0

]]--

dofile(minetest.get_modpath("age_old").."/crafting.lua")


minetest.register_node("age_old:sandstone_aged", {
	description = "Sandstone_aged",
	tiles = {"age_old_sandstone_aged.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:sandstone_aged_baluster", {
	description = "Sandstone_aged_baluster",
	tiles = {"age_old_sandstone_aged_baluster_top.png",
"age_old_sandstone_aged_baluster.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:sandstone_basrelief", {
	description = "Sandstone_basrelief",
	tiles = {"age_old_sandstone_basrelief_top.png",
"age_old_sandstone_basrelief.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:sandstone_basrelief2", {
	description = "Sandstone_basrelief2",
	tiles = {"age_old_sandstone_basrelief_top.png",
"age_old_sandstone_basrelief2.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:sandstone_basrelief3", {
	description = "Sandstone_basrelief3",
	tiles = {"age_old_sandstone_basrelief_top.png",
"age_old_sandstone_basrelief3.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:sandstone_bricks", {
	description = "Sandstone_bricks",
	tiles = {"age_old_sandstone_bricks.png"},
	paramtype2 = "facedir",
	place_param2 = 0,
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:sandstone_bricks_alt", {
	description = "Sandstone_bricks_alt",
	tiles = {"age_old_sandstone_bricks_alt.png"},
	paramtype2 = "facedir",
	place_param2 = 0,
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:sandstone_cracked", {
	description = "Sandstone_cracked",
	tiles = {"age_old_sandstone_cracked.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:sandstone_double_slab", {
	description = "Sandstone_double_slab",
	tiles = {"age_old_sandstone_double_slab_top.png",
"age_old_sandstone_double_slab.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:sandstone_facade", {
	description = "Sandstone_facade",
	tiles = {"age_old_sandstone_facade_top.png",
"age_old_sandstone_facade.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:sandstone_floor", {
	description = "Sandstone_floor",
	tiles = {"age_old_sandstone_floor.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:sandstone_pillar", {
	description = "Sandstone_pillar",
	tiles = {"age_old_sandstone_pillar_top.png",
"age_old_sandstone_pillar.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:sandstone_tile", {
	description = "Sandstone_tile",
	tiles = {"age_old_sandstone_tile.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:sandstone_wall_frieze", {
	description = "Sandstone_wall_frieze",
	tiles = {"age_old_sandstone_wall_frieze_top.png",
"age_old_sandstone_wall_frieze.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:stone_aged", {
	description = "Stone_aged",
	tiles = {"age_old_stone_aged.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:stone_aged_cracked", {
	description = "Stone_aged_cracked",
	tiles = {"age_old_stone_aged_cracked.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:stone_aged_double_slab", {
	description = "Stone_aged_double_slab",
	tiles = {"age_old_stone_aged_double_slab_top.png",
"age_old_stone_aged_double_slab.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:stone_aged_floor", {
	description = "Stone_aged_floor",
	tiles = {"age_old_stone_aged_floor.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()	
})

minetest.register_node("age_old:stone_aged_tile", {
	description = "Stone_aged_tile",
	tiles = {"age_old_stone_aged_tile.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:stonebricks_aged", {
	description = "Stonebricks_aged",
	tiles = {"age_old_stonebricks_aged.png"},
	paramtype2 = "facedir",
	place_param2 = 0,
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:stonebricks_aged_alt", {
	description = "Stonebricks_aged_alt",
	tiles = {"age_old_stonebricks_aged_alt.png"},
	paramtype2 = "facedir",
	place_param2 = 0,
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:stonebricks_aged_mossy", {
	description = "Stonebricks_aged_mossy",
	tiles = {"age_old_stonebricks_aged_mossy.png"},
	paramtype2 = "facedir",
	place_param2 = 0,
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:stone_aged_pavement", {
	description = "Stone_aged_pavement",
	tiles = {"age_old_stone_aged_pavement.png"},
	paramtype2 = "facedir",
	place_param2 = 0,
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:stone_aged_facade", {
	description = "Stone_aged_facade",
	tiles = {"age_old_stone_aged_facade.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:stone_aged_pillar", {
	description = "Stone_aged_pillar",
	tiles = {"age_old_stone_aged_pillar_top.png",
"age_old_stone_aged_pillar.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:stone_basrelief", {
	description = "Stone_basrelief",
	tiles = {"age_old_stone_basrelief_top.png",
"age_old_stone_basrelief.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:stone_basrelief2", {
	description = "Stone_basrelief2",
	tiles = {"age_old_stone_basrelief_top.png",
"age_old_stone_basrelief2.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("age_old:stone_basrelief3", {
	description = "Stone_basrelief3",
	tiles = {"age_old_stone_basrelief_top.png",
"age_old_stone_basrelief3.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})

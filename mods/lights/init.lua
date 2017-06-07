-- Lights mod for Minetest.
-- Original by Mauvebic which was forked by madblock?
-- (c) 2012 Mauvebic License: Unknown
-- (c) 2016 king-arthurs-team License: CC BY-SA

local MODPATH = minetest.get_modpath("lights")
lights = {}
dofile(MODPATH .. "/functions.lua")

--************************************************************************************
--* DEFS                                                                             *
--************************************************************************************
lights.register_glasslike("glowyellow","Yellow Glow Glass", "yellow")
lights.register_glasslike("glowgreen","Green Glow Glass", "green")
lights.register_glasslike("glowblue","Blue Glow Glass", "blue")
lights.register_glasslike("glowred","Red Glow Glass", "red")


minetest.register_node("lights:fancylamp", {
	description = "Fancy Lamp",
	drawtype = "plantlike",
	tiles = {"lights_fancylamp.png"},
	inventory_image = "lights_fancylamp.png",
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 14,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})

--Airlike Lightnodes

minetest.register_node("lights:light", {
	groups = {
		not_in_creative_inventory = 1
	},
	drawtype = "airlike",
	drop = "",
	air_equivalent = true,
	paramtype = "light",
	description = "Air (you hacker you!)",
	inventory_image = "unknown_node.png",
	floodable = true,
	pointable = false,
	sunlight_propagates = true,
	walkable = false,
	diggable = false,
	type = "node",
	buildable_to = true,
	wield_image = "unknown_node.png",
	light_source = 14,
})

minetest.register_node("lights:daylight", {
	groups = {
		not_in_creative_inventory = 1
	},
	drawtype = "airlike",
	drop = "",
	air_equivalent = true,
	paramtype = "light",
	description = "Air (you hacker you!)",
	inventory_image = "unknown_node.png",
	floodable = true,
	pointable = false,
	sunlight_propagates = true,
	walkable = false,
	diggable = false,
	type = "node",
	buildable_to = true,
	wield_image = "unknown_node.png",
	light_source = 15,
})


-- Searchlight
minetest.register_node("lights:searchlight_on", { 
	description = "Searchlight (on)", 
	drawtype = "plantlike", 
	tiles = {"lights_searchlight.png"}, 
	inventory_image = 'lights_searchlight.png',
	paramtype = "light",
	groups = {cracky=3, not_in_creative_inventory=1, not_in_craft_guide=1},
	sounds = default.node_sound_stone_defaults(),
	drop = 'lights:searchlight_off',
	on_rightclick = lights.toggle_searchlight,
	on_destruct = lights.searchlight_off,
	mesecons = {
		effector = {
			rules = {
				{x = 1, y = 0, z = 0},
				{x =-1, y = 0, z = 0},
				{x = 0, y = 0, z = 1},
				{x = 0, y = 0, z =-1}
			},
			action_on = lights.searchlight_on,
			action_off = lights.searchlight_off--function (pos, node)
			--action_change = function (pos, node)
		}
	}
})

minetest.register_node("lights:searchlight", { 
	description = "Searchlight (off)", 
	drawtype = "plantlike", 
	tiles = {'lights_searchlight.png'}, 
	inventory_image = 'lights_searchlight.png',
	paramtype = "light",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	on_rightclick = lights.toggle_searchlight,
	mesecons = {
		effector = {
			rules = {
				{x = 1, y = 0, z = 0},
				{x =-1, y = 0, z = 0},
				{x = 0, y = 0, z = 1},
				{x = 0, y = 0, z =-1}
			},
			action_on = lights.searchlight_on,
			action_off = lights.searchlight_off--function (pos, node)
			--action_change = function (pos, node)
		}
	}
})
minetest.register_alias("lights:searchlight_off", "lights:searchlight")


-- Spotlight
minetest.register_node("lights:spotlight_on", {
	description = "Spotlight (on)",
	tiles = { "lights_spotlights_top.png", "lights_spotlights_bottom.png", "lights_spotlights_side.png"},
	groups = {cracky=3, not_in_creative_inventory=1, not_in_craft_guide=1},
	drop = "lights:spotlight",
	on_rightclick = lights.toggle_spotlight,
	on_destruct = lights.spotlight_off,
	mesecons = {
		effector = {
			rules = {
				{x = 1, y = 0, z = 0},
				{x =-1, y = 0, z = 0},
				{x = 0, y = 0, z = 1},
				{x = 0, y = 0, z =-1}
			},
			action_on = lights.spotlight_on,
			action_off = lights.spotlight_off--function (pos, node)
			--action_change = function (pos, node)
		}
	}
})

minetest.register_node("lights:spotlight", {
	description = "Spotlight (off)",
	tiles = { "lights_spotlights_top.png", "lights_spotlights_bottom.png", "lights_spotlights_side.png"},
	groups = {cracky=3},
	on_rightclick = lights.toggle_spotlight,
	mesecons = {
		effector = {
			rules = {
				{x = 1, y = 0, z = 0},
				{x =-1, y = 0, z = 0},
				{x = 0, y = 0, z = 1},
				{x = 0, y = 0, z =-1}
			},
			action_on = lights.spotlight_on,
			action_off = lights.spotlight_off--function (pos, node)
			--action_change = function (pos, node)
		}
	}
})
minetest.register_alias("lights:spotlight_off", "lights:spotlight")


-- Daylight lamp
minetest.register_node("lights:daylight_lamp", {
	description = "Daylight",
	drawtype = "plantlike", 
	tiles = {'lights_searchlight.png'}, 
	inventory_image = 'lights_searchlight.png',	
	wield_image = 'lights_searchlight.png', 
	paramtype = "light",
	groups = {cracky=3, not_in_creative_inventory=1, not_in_craft_guide=1},
	after_place_node = lights.daylight
})

--************************************************************************************
--* Craft recieps                                                                    *
--************************************************************************************
minetest.register_craft({
	output = "lights:glowyellow",
	recipe = {
		{"default:glass"},
		{"default:torch"},
		{"default:glass"},
	}
})

minetest.register_craft({
	output = "lights:glowgreen",
	type = "shapeless",
	recipe = {
		"lights:glowyellow",
	}
})

minetest.register_craft({
	output = "lights:glowred",
	type = "shapeless",
	recipe = {
		"lights:glowgreen",
	}
})

minetest.register_craft({
	output = "lights:glowblue",
	type = "shapeless",
	recipe = {
		"lights:glowred",
	}
})

minetest.register_craft({
	output = "lights:glowyellow",
	type = "shapeless",
	recipe = {
		"lights:glowblue",
	}
})

minetest.register_craft({
	output = "lights:spotlight",
	recipe = {
		{"default:glass"},
		{"lights:glowyellow"},
		{"lights:glowyellow"},
	}
})

minetest.register_craft({
	output = "lights:searchlight",
	recipe = {
		{"lights:glowyellow",	"lights:glowyellow",	"lights:glowyellow"},
		{"default:glass",		"default:glass",		"default:glass"},
	}
})

minetest.register_craft({
	output = "lights:fancylamp",
	recipe = {
		{"default:steel_ingot"},
		{"lights:glowyellow"},
		{"default:glass"},
	}
})

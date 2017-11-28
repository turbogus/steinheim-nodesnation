minetest.register_node("bridges:scaffolding", {
	description = "Scaffolding",
	drawtype = "glasslike_framed_optional",
	tiles = {"bridges_scaffolding.png", "bridges_scaffolding_detail.png"},
	paramtype = "light",
	paramtype2 = "glasslikeliquidlevel",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	groups = {cracky = 3, oddly_breakable_by_hand = 3, dig_immediate = 3},
	sounds = default.node_sound_wood_defaults(),
})

dofile(minetest.get_modpath("bridges").."/nodes.lua")
dofile(minetest.get_modpath("bridges").."/crafts.lua")
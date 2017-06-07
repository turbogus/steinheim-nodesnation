--[[

[ESSENTIAL_ROADSIGNS]
Mod ajoutant des panneaux routiers
Cree par onyx58 (code ecrit à partir du mod "roads" de Cheapie, lui-meme forke de Ragnarok's "infrastructure")
Code sous licence CreativeCommons CC BY-SA 3.0
Graphismes sous licence CreativeCommons CC BY-NC 4.0

]]--

dofile(minetest.get_modpath("essential_roadsigns").."/crafting.lua")


minetest.register_node("essential_roadsigns:ers_016_50m", {
	description = "Ers_016_50m",
	drawtype = "signlike",
	tiles = { 
	"essential_roadsigns_ers_016_50m_front.png",

	"essential_roadsigns_ers_016_50m_back.png"
 		},
	inventory_image = 
	"essential_roadsigns_ers_016_50m_front.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {cracky = 2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})
minetest.register_node("essential_roadsigns:ers_016_150m", {
	description = "Ers_016_150m",
	drawtype = "signlike",
	tiles = { 
	"essential_roadsigns_ers_016_150m_front.png",

	"essential_roadsigns_ers_016_150m_back.png"
 		},
	inventory_image = 
	"essential_roadsigns_ers_016_150m_front.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {cracky = 2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})
minetest.register_node("essential_roadsigns:ers_016_clp", {
	description = "Ers_016_clp",
	drawtype = "signlike",
	tiles = { 
	"essential_roadsigns_ers_016_clp_front.png",

	"essential_roadsigns_ers_016_clp_back.png"
 		},
	inventory_image = 
	"essential_roadsigns_ers_016_clp_front.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {cracky = 2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})

local signs = {"001", "002", "003", "004", "005", "006", "007_end", "008", "009", "010", "011", "012", "013_end", "013", "014_car_gir", "014", "015", "016", "017", "018", "019", "020", "021", "022", "023", "024", "025", "025_l", "025_r", "026", "027", "028", "029", "030", "031", "032", "033", "034", "035", "036", "037", "038", "039", "040", "041", "042", "043", "044", "045", "046", "047", "048", "049", "050", "051", "052", "053_end", "053", "054", "055", "056", "057", "058", "059", "060", "061", "062", "063", "064", "065", "066", "067", "068_l", "068_r", "069", "070", "071_end", "071", "072", "073", "074", "075", "076", "077", "078", "079_end", "079"}

for i, sign_name in ipairs(signs) do
		minetest.register_node("essential_roadsigns:ers_"..sign_name, {
			description = "Ers "..sign_name,
			tiles = {
			"essential_roadsigns_side.png",
			"essential_roadsigns_side.png",
			"essential_roadsigns_side.png",
			"essential_roadsigns_side.png",

	"essential_roadsigns_ers_"..sign_name.."_back.png",
	
	"essential_roadsigns_ers_"..sign_name.."_front.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		node_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, 7/16, 1/2, 1/2, 7/16},
				{-3/16, -1/8, 7/16, 3/16, 1/8, 1/2 - 0.001}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, 7/16, 1/2, 1/2, 7/16},
				{-3/16, -1/8, 7/16 + 0.01, 3/16, 1/8, 1/2 - 0.01}
			}
		},

		after_place_node = function(pos, node)
			local node = minetest.env:get_node(pos)
			local param2 = node.param2
			local sign_pos = {x=pos.x, y=pos.y, z=pos.z}

			if param2 == 0 then
				pos.z = pos.z + 1
			elseif param2 == 1 then
				pos.x = pos.x + 1
			elseif param2 == 2 then
				pos.z = pos.z - 1
			elseif param2 == 3 then
				pos.x = pos.x - 1
			end

			local node = minetest.env:get_node(pos)

			if 
minetest.registered_nodes[node.name].drawtype == "fencelike" then
					minetest.set_node(sign_pos, {name="essential_roadsigns:ers_"..sign_name.."_on_post", param2=param2})
				end
			end
		})

		minetest.register_node("essential_roadsigns:ers_"..sign_name.."_on_post", {
			tiles = {
				"essential_roadsigns_side.png",
				"essential_roadsigns_side.png",
				"essential_roadsigns_side.png",
				"essential_roadsigns_side.png",	

	"essential_roadsigns_ers_"..sign_name.."_back.png",

	"essential_roadsigns_ers_"..sign_name.."_front.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky = 2, not_in_creative_inventory = 1},
			drop = "essential_roadsigns_"..sign_name,
			node_box = {
				type = "fixed",
				fixed = {
					{-1/2, -1/2, 7/16 + 3/8, 1/2, 1/2, 7/16 + 3/8},
					{-3/16, 1/16, 7/16 + 3/8, 3/16, 1/8, 13/16 + 3/8 - 0.001},
					{-3/16, -1/8, 7/16 + 3/8, 3/16, -1/16, 13/16 + 3/8 - 0.001}
				}
			},
			selection_box = {
				type = "fixed",
				fixed = {
					{-1/2, -1/2, 7/16 + 3/8, 1/2, 1/2, 7/16 + 3/8},
					{-3/16, 1/16, 7/16 + 3/8 + 0.01, 3/16, 1/8, 13/16 + 3/8 - 0.01},
					{-3/16, -1/8, 7/16 + 3/8 + 0.01, 3/16, -1/16, 13/16 + 3/8 - 0.01}
				}
			}
		})
	end







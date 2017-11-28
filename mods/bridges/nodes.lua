local bridge_colors = {
	"Green",
	"Red",
	"Steel",
	"White",
}

for c in ipairs(bridge_colors) do
	local bridge_colors = bridge_colors[c]

minetest.register_node("bridges:block_"..bridge_colors, {
	description = bridge_colors.." Block",
	drawtype = "normal",
	tiles = {"bridge_"..bridge_colors..".png"},
	paramtype = "light",
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

stairs.register_stair_and_slab(
	"block_"..bridge_colors,
	"bridges:block_"..bridge_colors,
	{cracky=3},
	{"bridge_"..bridge_colors..".png"},
	bridge_colors.." Stair",
	bridge_colors.." Slab",
	default.node_sound_metal_defaults()
)

minetest.register_node("bridges:step_"..bridge_colors, {
	description = bridge_colors.." Step",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, 0.5, 0, 0.5},
		},
	},
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
	on_place = function (itemstack, placer, pointed_thing)
	local p0 = pointed_thing.under
	local p1 = pointed_thing.above
	local param2 = 0

	local placer_pos = placer:getpos()
	if placer_pos then
		param2 = minetest.dir_to_facedir(vector.subtract(p1, placer_pos))
	end

	local finepos = minetest.pointed_thing_to_face_pos(placer, pointed_thing)
	local fpos = finepos.y % 1

	if p0.y - 1 == p1.y or (fpos > 0 and fpos < 0.5)
			or (fpos < -0.5 and fpos > -0.999999999) then
		param2 = param2 + 20
		if param2 == 21 then
			param2 = 23
		elseif param2 == 23 then
			param2 = 21
		end
	end
	return minetest.item_place(itemstack, placer, pointed_thing, param2)
end
})

minetest.register_node("bridges:suspension_top_"..bridge_colors, {
	description = bridge_colors.." Cable Top",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
			{-0.125, -0.5, -0.125, 0.125, 0.4, 0.125},
		},
	},
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:suspension_cable_"..bridge_colors, {
	description = bridge_colors.." Cable",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, 0.5, 0.125},
		},
	},
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:deck_"..bridge_colors, {
	description = bridge_colors.." Deck",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	paramtype = "light",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.375, -0.5, 0.5, 0.5, 0.5},
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, 0, -0.5, 0.5, 0.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:deck_edge_"..bridge_colors, {
	description = bridge_colors.." Deck Edge",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.375, -0.5, 0.5, 0.5, 0.5},
			{-0.5, 0.375, -0.5, 0.5, 1.0625, -0.625},
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, 0, -0.5, 0.5, 0.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:train_deck_"..bridge_colors, {
	description = bridge_colors.." Train Deck",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	paramtype = "light",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{0.375, 0.375, 0.375, 0.5, 0.5, 0.5}, -- NodeBox1
			{0.3125, 0.375, 0.3125, 0.4375, 0.5, 0.4375}, -- NodeBox2
			{0.25, 0.375, 0.25, 0.375, 0.5, 0.375}, -- NodeBox3
			{0.1875, 0.375, 0.1875, 0.3125, 0.5, 0.3125}, -- NodeBox4
			{0.125, 0.375, 0.125, 0.25, 0.5, 0.25}, -- NodeBox5
			{0.0625, 0.375, 0.0625, 0.1875, 0.5, 0.1875}, -- NodeBox6
			{0, 0.375, 0, 0.125, 0.5, 0.125}, -- NodeBox7
			{-0.0625, 0.375, -0.0625, 0.0625, 0.5, 0.0625}, -- NodeBox8
			{-0.125, 0.375, -0.125, 0, 0.5, 0}, -- NodeBox9
			{-0.1875, 0.375, -0.1875, -0.0625, 0.5, -0.0625}, -- NodeBox10
			{-0.25, 0.375, -0.25, -0.125, 0.5, -0.125}, -- NodeBox11
			{-0.3125, 0.375, -0.3125, -0.1875, 0.5, -0.1875}, -- NodeBox12
			{-0.4375, 0.375, -0.4375, -0.3125, 0.5, -0.3125}, -- NodeBox13
			{-0.375, 0.375, -0.375, -0.25, 0.5, -0.25}, -- NodeBox14
			{-0.5, 0.375, -0.5, -0.375, 0.5, -0.375}, -- NodeBox15
			{-0.5, 0.375, 0.375, -0.375, 0.5, 0.5}, -- NodeBox16
			{-0.4375, 0.375, 0.3125, -0.3125, 0.5, 0.4375}, -- NodeBox17
			{-0.375, 0.375, 0.25, -0.25, 0.5, 0.375}, -- NodeBox18
			{-0.3125, 0.375, 0.1875, -0.1875, 0.5, 0.3125}, -- NodeBox19
			{-0.25, 0.375, 0.125, -0.125, 0.5, 0.25}, -- NodeBox20
			{-0.1875, 0.375, 0.0625, -0.0625, 0.5, 0.1875}, -- NodeBox21
			{-0.125, 0.375, 0, 0, 0.5, 0.125}, -- NodeBox22
			{0, 0.375, -0.125, 0.125, 0.5, 0}, -- NodeBox23
			{0.0625, 0.375, -0.1875, 0.1875, 0.5, -0.0625}, -- NodeBox24
			{0.125, 0.375, -0.25, 0.25, 0.5, -0.125}, -- NodeBox25
			{0.1875, 0.375, -0.3125, 0.3125, 0.5, -0.1875}, -- NodeBox26
			{0.25, 0.375, -0.375, 0.375, 0.5, -0.25}, -- NodeBox27
			{0.3125, 0.375, -0.4375, 0.4375, 0.5, -0.3125}, -- NodeBox28
			{0.375, 0.375, -0.5, 0.5, 0.5, -0.375}, -- NodeBox29
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, 0, -0.5, 0.5, 0.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:girder_mid_"..bridge_colors, {
	description = bridge_colors.." Girder Middle",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5}, -- NodeBox194
			{-0.5, 0.4375, 0.375, 0.5, 0.5, 0.5}, -- NodeBox195
			{0.46875, -0.5, 0.375, 0.5, 0.5, 0.5}, -- NodeBox196
			{-0.5, -0.5, 0.375, -0.46875, 0.5, 0.5}, -- NodeBox197
			{-0.5, -0.5, 0.375, 0.5, -0.4375, 0.5}, -- NodeBox198
			{-0.5, -0.625, 0.4375, 0.5, -0.5, 0.5}, -- NodeBox213
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0, 0.5, 0.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:girder_right_"..bridge_colors, {
	description = bridge_colors.." Girder Right End",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.4375, 0.375, -0.25, 0.5, 0.5}, -- NodeBox195
			{-0.5, -0.5, 0.375, -0.46875, 0.5, 0.5}, -- NodeBox197
			{-0.5, -0.5, 0.375, 0.5, -0.4375, 0.5}, -- NodeBox198
			{-0.3125, 0.375, 0.375, -0.0625, 0.4375, 0.5}, -- NodeBox199
			{-0.125, 0.3125, 0.375, 0.0625, 0.375, 0.5}, -- NodeBox200
			{0, 0.25, 0.375, 0.125, 0.3125, 0.5}, -- NodeBox201
			{0.4375, -0.5, 0.375, 0.5, -0.25, 0.5}, -- NodeBox202
			{0.375, -0.3125, 0.375, 0.4375, -0.0625, 0.5}, -- NodeBox203
			{0.3125, -0.125, 0.375, 0.375, 0.0625, 0.5}, -- NodeBox204
			{0.25, 0, 0.375, 0.3125, 0.125, 0.5}, -- NodeBox205
			{0.1875, 0.0625, 0.375, 0.25, 0.1875, 0.5}, -- NodeBox206
			{0.125, 0.125, 0.375, 0.1875, 0.25, 0.5}, -- NodeBox207
			{0.0625, 0.1875, 0.375, 0.1875, 0.25, 0.5}, -- NodeBox208
			{-0.5, -0.5, 0.4375, -0.0625, 0.4375, 0.5}, -- NodeBox209
			{-0.5, -0.5, 0.4375, 0.4375, -0.0625, 0.5}, -- NodeBox210
			{-0.5, -0.5, 0.4375, 0.125, 0.3125, 0.5}, -- NodeBox211
			{-0.5, -0.5, 0.4375, 0.3125, 0.125, 0.5}, -- NodeBox212
			{-0.5, -0.625, 0.4375, 0.5, -0.5, 0.5}, -- NodeBox213
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0, 0.5, 0.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:girder_left_end"..bridge_colors, {
	description = bridge_colors.." Girder Left End",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{0.25, 0.4375, 0.375, 0.5, 0.5, 0.5}, -- NodeBox195
			{0.46875, -0.5, 0.375, 0.5, 0.5, 0.5}, -- NodeBox197
			{-0.5, -0.5, 0.375, 0.5, -0.4375, 0.5}, -- NodeBox198
			{0.0625, 0.375, 0.375, 0.3125, 0.4375, 0.5}, -- NodeBox199
			{-0.0625, 0.3125, 0.375, 0.125, 0.375, 0.5}, -- NodeBox200
			{-0.125, 0.25, 0.375, -0, 0.3125, 0.5}, -- NodeBox201
			{-0.5, -0.5, 0.375, -0.4375, -0.25, 0.5}, -- NodeBox202
			{-0.4375, -0.3125, 0.375, -0.375, -0.0625, 0.5}, -- NodeBox203
			{-0.375, -0.125, 0.375, -0.3125, 0.0625, 0.5}, -- NodeBox204
			{-0.3125, 0, 0.375, -0.25, 0.125, 0.5}, -- NodeBox205
			{-0.25, 0.0625, 0.375, -0.1875, 0.1875, 0.5}, -- NodeBox206
			{-0.1875, 0.125, 0.375, -0.125, 0.25, 0.5}, -- NodeBox207
			{-0.1875, 0.1875, 0.375, -0.0625, 0.25, 0.5}, -- NodeBox208
			{0.0625, -0.5, 0.4375, 0.5, 0.4375, 0.5}, -- NodeBox209
			{-0.4375, -0.5, 0.4375, 0.5, -0.0625, 0.5}, -- NodeBox210
			{-0.125, -0.5, 0.4375, 0.5, 0.3125, 0.5}, -- NodeBox211
			{-0.3125, -0.5, 0.4375, 0.5, 0.125, 0.5}, -- NodeBox212
			{-0.5, -0.625, 0.4375, 0.5, -0.5, 0.5}, -- NodeBox213
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0, 0.5, 0.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:corrugated_steel", {
	description = "Corrugated Steel",
	drawtype = "nodebox",
	tiles = {"corrugated_steel.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, 0.5, 0.5},
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0, 0.5, 0.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:corrugated_steel_ceiling", {
	description = "Corrugated Steel Deck",
	drawtype = "nodebox",
	tiles = {"corrugated_steel.png^[transformR90"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.375, -0.5, 0.5, 0.5, 0.5},
		},
	},
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:truss_superstructure_right_slant"..bridge_colors, {
	description = bridge_colors.." Truss Superstructure Right Slant",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_superstructure_right_slant.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_superstructure_right_slant.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 1.5, 0.0625, 0.5}, -- NodeBox214
			{-0.5, -0.5, 0.375, -0.4375, 2.5, 0.5}, -- NodeBox215
			{1.4375, -0.5, 0.375, 1.5, 2.5, 0.5}, -- NodeBox217
			{-0.5, 2.375, 0.375, 1.5, 2.5, 0.5}, -- NodeBox218
			{-0.4375, 2.25, 0.375, -0.3125, 2.375, 0.5}, -- NodeBox219
			{-0.375, 2.1875, 0.375, -0.25, 2.3125, 0.5}, -- NodeBox220
			{-0.3125, 2.0625, 0.375, -0.1875, 2.25, 0.5}, -- NodeBox221
			{-0.25, 2, 0.375, -0.125, 2.125, 0.5}, -- NodeBox222
			{-0.1875, 1.9375, 0.375, -0.0625, 2.0625, 0.5}, -- NodeBox223
			{-0.125, 1.875, 0.375, 0, 2, 0.5}, -- NodeBox224
			{-0.0625, 1.75, 0.375, 0.0625, 1.9375, 0.5}, -- NodeBox225
			{0, 1.6875, 0.375, 0.125, 1.8125, 0.5}, -- NodeBox226
			{0.0625, 1.625, 0.375, 0.1875, 1.75, 0.5}, -- NodeBox227
			{0.125, 1.5625, 0.375, 0.25, 1.6875, 0.5}, -- NodeBox228
			{0.1875, 1.4375, 0.375, 0.3125, 1.625, 0.5}, -- NodeBox229
			{0.25, 1.375, 0.375, 0.375, 1.5, 0.5}, -- NodeBox230
			{0.3125, 1.3125, 0.375, 0.4375, 1.4375, 0.5}, -- NodeBox231
			{0.375, 1.25, 0.375, 0.5, 1.375, 0.5}, -- NodeBox232
			{0.4375, 1.125, 0.375, 0.5625, 1.3125, 0.5}, -- NodeBox233
			{0.5, 1.0625, 0.375, 0.625, 1.1875, 0.5}, -- NodeBox234
			{0.5625, 1, 0.375, 0.6875, 1.125, 0.5}, -- NodeBox235
			{0.625, 0.9375, 0.375, 0.75, 1.0625, 0.5}, -- NodeBox236
			{0.6875, 0.8125, 0.375, 0.8125, 1, 0.5}, -- NodeBox237
			{0.75, 0.75, 0.375, 0.875, 0.875, 0.5}, -- NodeBox238
			{0.8125, 0.6875, 0.375, 0.9375, 0.8125, 0.5}, -- NodeBox239
			{0.875, 0.625, 0.375, 1, 0.75, 0.5}, -- NodeBox240
			{0.9375, 0.5, 0.375, 1.0625, 0.6875, 0.5}, -- NodeBox241
			{1, 0.4375, 0.375, 1.125, 0.5625, 0.5}, -- NodeBox242
			{1.0625, 0.375, 0.375, 1.1875, 0.5, 0.5}, -- NodeBox243
			{1.125, 0.3125, 0.375, 1.25, 0.4375, 0.5}, -- NodeBox244
			{1.1875, 0.1875, 0.375, 1.3125, 0.375, 0.5}, -- NodeBox245
			{1.25, 0.125, 0.375, 1.375, 0.25, 0.5}, -- NodeBox246
			{1.3125, 0.0625, 0.375, 1.4375, 0.1875, 0.5}, -- NodeBox247
			{1.375, 0, 0.375, 1.5, 0.125, 0.5}, -- NodeBox248
			{-0.4375, 2.3125, 0.375, -0.3125, 2.4375, 0.5}, -- NodeBox249
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 2.5, 0.5},
		},
    },
	collision_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 2.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:truss_superstructure_left_slant"..bridge_colors, {
	description = bridge_colors.." Truss Superstructure Left Slant",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_superstructure_left_slant.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_superstructure_left_slant.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 1.5, 0.0625, 0.5}, -- NodeBox214
			{-0.5, -0.5, 0.375, -0.4375, 2.5, 0.5}, -- NodeBox215
			{1.4375, -0.5, 0.375, 1.5, 2.5, 0.5}, -- NodeBox217
			{-0.5, 2.375, 0.375, 1.5, 2.5, 0.5}, -- NodeBox218
			{1.3125, 2.25, 0.375, 1.4375, 2.375, 0.5}, -- NodeBox219
			{1.25, 2.1875, 0.375, 1.375, 2.3125, 0.5}, -- NodeBox220
			{1.1875, 2.0625, 0.375, 1.3125, 2.25, 0.5}, -- NodeBox221
			{1.125, 2, 0.375, 1.25, 2.125, 0.5}, -- NodeBox222
			{1.0625, 1.9375, 0.375, 1.1875, 2.0625, 0.5}, -- NodeBox223
			{1, 1.875, 0.375, 1.125, 2, 0.5}, -- NodeBox224
			{0.9375, 1.75, 0.375, 1.0625, 1.9375, 0.5}, -- NodeBox225
			{0.875, 1.6875, 0.375, 1, 1.8125, 0.5}, -- NodeBox226
			{0.8125, 1.625, 0.375, 0.9375, 1.75, 0.5}, -- NodeBox227
			{0.75, 1.5625, 0.375, 0.875, 1.6875, 0.5}, -- NodeBox228
			{0.6875, 1.4375, 0.375, 0.8125, 1.625, 0.5}, -- NodeBox229
			{0.625, 1.375, 0.375, 0.75, 1.5, 0.5}, -- NodeBox230
			{0.5625, 1.3125, 0.375, 0.6875, 1.4375, 0.5}, -- NodeBox231
			{0.5, 1.25, 0.375, 0.625, 1.375, 0.5}, -- NodeBox232
			{0.4375, 1.125, 0.375, 0.5625, 1.3125, 0.5}, -- NodeBox233
			{0.375, 1.0625, 0.375, 0.5, 1.1875, 0.5}, -- NodeBox234
			{0.3125, 1, 0.375, 0.4375, 1.125, 0.5}, -- NodeBox235
			{0.25, 0.9375, 0.375, 0.375, 1.0625, 0.5}, -- NodeBox236
			{0.1875, 0.8125, 0.375, 0.3125, 1, 0.5}, -- NodeBox237
			{0.125, 0.75, 0.375, 0.25, 0.875, 0.5}, -- NodeBox238
			{0.0625, 0.6875, 0.375, 0.1875, 0.8125, 0.5}, -- NodeBox239
			{0, 0.625, 0.375, 0.125, 0.75, 0.5}, -- NodeBox240
			{-0.0625, 0.5, 0.375, 0.0625, 0.6875, 0.5}, -- NodeBox241
			{-0.125, 0.4375, 0.375, 0, 0.5625, 0.5}, -- NodeBox242
			{-0.1875, 0.375, 0.375, -0.0625, 0.5, 0.5}, -- NodeBox243
			{-0.25, 0.3125, 0.375, -0.125, 0.4375, 0.5}, -- NodeBox244
			{-0.3125, 0.1875, 0.375, -0.1875, 0.375, 0.5}, -- NodeBox245
			{-0.375, 0.125, 0.375, -0.25, 0.25, 0.5}, -- NodeBox246
			{-0.4375, 0.0625, 0.375, -0.3125, 0.1875, 0.5}, -- NodeBox247
			{-0.5, 0, 0.375, -0.375, 0.125, 0.5}, -- NodeBox248
			{1.375, 2.3125, 0.375, 1.5, 2.4375, 0.5}, -- NodeBox249
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 2.5, 0.5},
		},
    },
	collision_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 2.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:truss_superstructure_end_right_slant"..bridge_colors, {
	description = bridge_colors.." Truss Superstructure End Right Slant",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_superstructure_end_right_slant.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_superstructure_end_right_slant.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 1.5, 0.0625, 0.5}, -- NodeBox214
			{-0.5, -0.5, 0.375, -0.4375, 2.5, 0.5}, -- NodeBox215
			{-0.4375, 2.25, 0.375, -0.3125, 2.375, 0.5}, -- NodeBox219
			{-0.375, 2.1875, 0.375, -0.25, 2.3125, 0.5}, -- NodeBox220
			{-0.3125, 2.0625, 0.375, -0.1875, 2.25, 0.5}, -- NodeBox221
			{-0.25, 2, 0.375, -0.125, 2.125, 0.5}, -- NodeBox222
			{-0.1875, 1.9375, 0.375, -0.0625, 2.0625, 0.5}, -- NodeBox223
			{-0.125, 1.875, 0.375, 0, 2, 0.5}, -- NodeBox224
			{-0.0625, 1.75, 0.375, 0.0625, 1.9375, 0.5}, -- NodeBox225
			{0, 1.6875, 0.375, 0.125, 1.8125, 0.5}, -- NodeBox226
			{0.0625, 1.625, 0.375, 0.1875, 1.75, 0.5}, -- NodeBox227
			{0.125, 1.5625, 0.375, 0.25, 1.6875, 0.5}, -- NodeBox228
			{0.1875, 1.4375, 0.375, 0.3125, 1.625, 0.5}, -- NodeBox229
			{0.25, 1.375, 0.375, 0.375, 1.5, 0.5}, -- NodeBox230
			{0.3125, 1.3125, 0.375, 0.4375, 1.4375, 0.5}, -- NodeBox231
			{0.375, 1.25, 0.375, 0.5, 1.375, 0.5}, -- NodeBox232
			{0.4375, 1.125, 0.375, 0.5625, 1.3125, 0.5}, -- NodeBox233
			{0.5, 1.0625, 0.375, 0.625, 1.1875, 0.5}, -- NodeBox234
			{0.5625, 1, 0.375, 0.6875, 1.125, 0.5}, -- NodeBox235
			{0.625, 0.9375, 0.375, 0.75, 1.0625, 0.5}, -- NodeBox236
			{0.6875, 0.8125, 0.375, 0.8125, 1, 0.5}, -- NodeBox237
			{0.75, 0.75, 0.375, 0.875, 0.875, 0.5}, -- NodeBox238
			{0.8125, 0.6875, 0.375, 0.9375, 0.8125, 0.5}, -- NodeBox239
			{0.875, 0.625, 0.375, 1, 0.75, 0.5}, -- NodeBox240
			{0.9375, 0.5, 0.375, 1.0625, 0.6875, 0.5}, -- NodeBox241
			{1, 0.4375, 0.375, 1.125, 0.5625, 0.5}, -- NodeBox242
			{1.0625, 0.375, 0.375, 1.1875, 0.5, 0.5}, -- NodeBox243
			{1.125, 0.3125, 0.375, 1.25, 0.4375, 0.5}, -- NodeBox244
			{1.1875, 0.1875, 0.375, 1.3125, 0.375, 0.5}, -- NodeBox245
			{1.25, 0.125, 0.375, 1.375, 0.25, 0.5}, -- NodeBox246
			{1.3125, 0.0625, 0.375, 1.4375, 0.1875, 0.5}, -- NodeBox247
			{1.375, 0, 0.375, 1.5, 0.125, 0.5}, -- NodeBox248
			{-0.4375, 2.3125, 0.375, -0.3125, 2.4375, 0.5}, -- NodeBox249
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 2.5, 0.5},
		},
    },
	collision_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 2.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:truss_superstructure_end_left_slant"..bridge_colors, {
	description = bridge_colors.." Truss Superstructure End Left Slant",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_superstructure_end_left_slant.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_superstructure_end_left_slant.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 1.5, 0.0625, 0.5}, -- NodeBox214
			{1.4375, -0.5, 0.375, 1.5, 2.5, 0.5}, -- NodeBox217
			{1.3125, 2.25, 0.375, 1.4375, 2.375, 0.5}, -- NodeBox219
			{1.25, 2.1875, 0.375, 1.375, 2.3125, 0.5}, -- NodeBox220
			{1.1875, 2.0625, 0.375, 1.3125, 2.25, 0.5}, -- NodeBox221
			{1.125, 2, 0.375, 1.25, 2.125, 0.5}, -- NodeBox222
			{1.0625, 1.9375, 0.375, 1.1875, 2.0625, 0.5}, -- NodeBox223
			{1, 1.875, 0.375, 1.125, 2, 0.5}, -- NodeBox224
			{0.9375, 1.75, 0.375, 1.0625, 1.9375, 0.5}, -- NodeBox225
			{0.875, 1.6875, 0.375, 1, 1.8125, 0.5}, -- NodeBox226
			{0.8125, 1.625, 0.375, 0.9375, 1.75, 0.5}, -- NodeBox227
			{0.75, 1.5625, 0.375, 0.875, 1.6875, 0.5}, -- NodeBox228
			{0.6875, 1.4375, 0.375, 0.8125, 1.625, 0.5}, -- NodeBox229
			{0.625, 1.375, 0.375, 0.75, 1.5, 0.5}, -- NodeBox230
			{0.5625, 1.3125, 0.375, 0.6875, 1.4375, 0.5}, -- NodeBox231
			{0.5, 1.25, 0.375, 0.625, 1.375, 0.5}, -- NodeBox232
			{0.4375, 1.125, 0.375, 0.5625, 1.3125, 0.5}, -- NodeBox233
			{0.375, 1.0625, 0.375, 0.5, 1.1875, 0.5}, -- NodeBox234
			{0.3125, 1, 0.375, 0.4375, 1.125, 0.5}, -- NodeBox235
			{0.25, 0.9375, 0.375, 0.375, 1.0625, 0.5}, -- NodeBox236
			{0.1875, 0.8125, 0.375, 0.3125, 1, 0.5}, -- NodeBox237
			{0.125, 0.75, 0.375, 0.25, 0.875, 0.5}, -- NodeBox238
			{0.0625, 0.6875, 0.375, 0.1875, 0.8125, 0.5}, -- NodeBox239
			{0, 0.625, 0.375, 0.125, 0.75, 0.5}, -- NodeBox240
			{-0.0625, 0.5, 0.375, 0.0625, 0.6875, 0.5}, -- NodeBox241
			{-0.125, 0.4375, 0.375, 0, 0.5625, 0.5}, -- NodeBox242
			{-0.1875, 0.375, 0.375, -0.0625, 0.5, 0.5}, -- NodeBox243
			{-0.25, 0.3125, 0.375, -0.125, 0.4375, 0.5}, -- NodeBox244
			{-0.3125, 0.1875, 0.375, -0.1875, 0.375, 0.5}, -- NodeBox245
			{-0.375, 0.125, 0.375, -0.25, 0.25, 0.5}, -- NodeBox246
			{-0.4375, 0.0625, 0.375, -0.3125, 0.1875, 0.5}, -- NodeBox247
			{-0.5, 0, 0.375, -0.375, 0.125, 0.5}, -- NodeBox248
			{1.375, 2.3125, 0.375, 1.5, 2.4375, 0.5}, -- NodeBox249
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 2.5, 0.5},
		},
    },
	collision_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 2.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:truss_superstructure_mid"..bridge_colors, {
	description = bridge_colors.." Truss Superstructure Middle",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_superstructure_mid.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_superstructure_mid.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 1.5, 0.0625, 0.5}, -- NodeBox214
			{-0.5, -0.5, 0.375, -0.4375, 2.5, 0.5}, -- NodeBox215
			{1.4375, -0.5, 0.375, 1.5, 2.5, 0.5}, -- NodeBox217
			{-0.5, 2.375, 0.375, 1.5, 2.5, 0.5}, -- NodeBox218
			{-0.4375, 2.25, 0.375, -0.3125, 2.375, 0.5}, -- NodeBox219
			{-0.375, 2.1875, 0.375, -0.25, 2.3125, 0.5}, -- NodeBox220
			{-0.3125, 2.0625, 0.375, -0.1875, 2.25, 0.5}, -- NodeBox221
			{-0.25, 2, 0.375, -0.125, 2.125, 0.5}, -- NodeBox222
			{-0.1875, 1.9375, 0.375, -0.0625, 2.0625, 0.5}, -- NodeBox223
			{-0.125, 1.875, 0.375, 0, 2, 0.5}, -- NodeBox224
			{-0.0625, 1.75, 0.375, 0.0625, 1.9375, 0.5}, -- NodeBox225
			{0, 1.6875, 0.375, 0.125, 1.8125, 0.5}, -- NodeBox226
			{0.0625, 1.625, 0.375, 0.1875, 1.75, 0.5}, -- NodeBox227
			{0.125, 1.5625, 0.375, 0.25, 1.6875, 0.5}, -- NodeBox228
			{0.1875, 1.4375, 0.375, 0.3125, 1.625, 0.5}, -- NodeBox229
			{0.25, 1.375, 0.375, 0.375, 1.5, 0.5}, -- NodeBox230
			{0.3125, 1.3125, 0.375, 0.4375, 1.4375, 0.5}, -- NodeBox231
			{0.375, 1.25, 0.375, 0.5, 1.375, 0.5}, -- NodeBox232
			{0.4375, 1.125, 0.375, 0.5625, 1.3125, 0.5}, -- NodeBox233
			{0.5, 1.0625, 0.375, 0.625, 1.1875, 0.5}, -- NodeBox234
			{0.5625, 1, 0.375, 0.6875, 1.125, 0.5}, -- NodeBox235
			{0.625, 0.9375, 0.375, 0.75, 1.0625, 0.5}, -- NodeBox236
			{0.6875, 0.8125, 0.375, 0.8125, 1, 0.5}, -- NodeBox237
			{0.75, 0.75, 0.375, 0.875, 0.875, 0.5}, -- NodeBox238
			{0.8125, 0.6875, 0.375, 0.9375, 0.8125, 0.5}, -- NodeBox239
			{0.875, 0.625, 0.375, 1, 0.75, 0.5}, -- NodeBox240
			{0.9375, 0.5, 0.375, 1.0625, 0.6875, 0.5}, -- NodeBox241
			{1, 0.4375, 0.375, 1.125, 0.5625, 0.5}, -- NodeBox242
			{1.0625, 0.375, 0.375, 1.1875, 0.5, 0.5}, -- NodeBox243
			{1.125, 0.3125, 0.375, 1.25, 0.4375, 0.5}, -- NodeBox244
			{1.1875, 0.1875, 0.375, 1.3125, 0.375, 0.5}, -- NodeBox245
			{1.25, 0.125, 0.375, 1.375, 0.25, 0.5}, -- NodeBox246
			{1.3125, 0.0625, 0.375, 1.4375, 0.1875, 0.5}, -- NodeBox247
			{1.375, 0, 0.375, 1.5, 0.125, 0.5}, -- NodeBox248
			{-0.4375, 2.3125, 0.375, -0.3125, 2.4375, 0.5}, -- NodeBox249
			{1.3125, 2.25, 0.375, 1.4375, 2.375, 0.5}, -- NodeBox219
			{1.25, 2.1875, 0.375, 1.375, 2.3125, 0.5}, -- NodeBox220
			{1.1875, 2.0625, 0.375, 1.3125, 2.25, 0.5}, -- NodeBox221
			{1.125, 2, 0.375, 1.25, 2.125, 0.5}, -- NodeBox222
			{1.0625, 1.9375, 0.375, 1.1875, 2.0625, 0.5}, -- NodeBox223
			{1, 1.875, 0.375, 1.125, 2, 0.5}, -- NodeBox224
			{0.9375, 1.75, 0.375, 1.0625, 1.9375, 0.5}, -- NodeBox225
			{0.875, 1.6875, 0.375, 1, 1.8125, 0.5}, -- NodeBox226
			{0.8125, 1.625, 0.375, 0.9375, 1.75, 0.5}, -- NodeBox227
			{0.75, 1.5625, 0.375, 0.875, 1.6875, 0.5}, -- NodeBox228
			{0.6875, 1.4375, 0.375, 0.8125, 1.625, 0.5}, -- NodeBox229
			{0.625, 1.375, 0.375, 0.75, 1.5, 0.5}, -- NodeBox230
			{0.5625, 1.3125, 0.375, 0.6875, 1.4375, 0.5}, -- NodeBox231
			{0.5, 1.25, 0.375, 0.625, 1.375, 0.5}, -- NodeBox232
			{0.4375, 1.125, 0.375, 0.5625, 1.3125, 0.5}, -- NodeBox233
			{0.375, 1.0625, 0.375, 0.5, 1.1875, 0.5}, -- NodeBox234
			{0.3125, 1, 0.375, 0.4375, 1.125, 0.5}, -- NodeBox235
			{0.25, 0.9375, 0.375, 0.375, 1.0625, 0.5}, -- NodeBox236
			{0.1875, 0.8125, 0.375, 0.3125, 1, 0.5}, -- NodeBox237
			{0.125, 0.75, 0.375, 0.25, 0.875, 0.5}, -- NodeBox238
			{0.0625, 0.6875, 0.375, 0.1875, 0.8125, 0.5}, -- NodeBox239
			{0, 0.625, 0.375, 0.125, 0.75, 0.5}, -- NodeBox240
			{-0.0625, 0.5, 0.375, 0.0625, 0.6875, 0.5}, -- NodeBox241
			{-0.125, 0.4375, 0.375, 0, 0.5625, 0.5}, -- NodeBox242
			{-0.1875, 0.375, 0.375, -0.0625, 0.5, 0.5}, -- NodeBox243
			{-0.25, 0.3125, 0.375, -0.125, 0.4375, 0.5}, -- NodeBox244
			{-0.3125, 0.1875, 0.375, -0.1875, 0.375, 0.5}, -- NodeBox245
			{-0.375, 0.125, 0.375, -0.25, 0.25, 0.5}, -- NodeBox246
			{-0.4375, 0.0625, 0.375, -0.3125, 0.1875, 0.5}, -- NodeBox247
			{-0.5, 0, 0.375, -0.375, 0.125, 0.5}, -- NodeBox248
			{1.375, 2.3125, 0.375, 1.5, 2.4375, 0.5}, -- NodeBox249
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 2.5, 0.5},
		},
    },
	collision_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 2.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:truss_superstructure_simple"..bridge_colors, {
	description = bridge_colors.." Truss Superstructure Middle Simple",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_superstructure_simple.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_superstructure_simple.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 1.5, 0.0625, 0.5}, -- NodeBox214
			{-0.5, 2.375, 0.375, 1.5, 2.5, 0.5}, -- NodeBox218
			{-0.4375, 2.25, 0.375, -0.3125, 2.375, 0.5}, -- NodeBox219
			{-0.375, 2.1875, 0.375, -0.25, 2.3125, 0.5}, -- NodeBox220
			{-0.3125, 2.0625, 0.375, -0.1875, 2.25, 0.5}, -- NodeBox221
			{-0.25, 2, 0.375, -0.125, 2.125, 0.5}, -- NodeBox222
			{-0.1875, 1.9375, 0.375, -0.0625, 2.0625, 0.5}, -- NodeBox223
			{-0.125, 1.875, 0.375, 0, 2, 0.5}, -- NodeBox224
			{-0.0625, 1.75, 0.375, 0.0625, 1.9375, 0.5}, -- NodeBox225
			{0, 1.6875, 0.375, 0.125, 1.8125, 0.5}, -- NodeBox226
			{0.0625, 1.625, 0.375, 0.1875, 1.75, 0.5}, -- NodeBox227
			{0.125, 1.5625, 0.375, 0.25, 1.6875, 0.5}, -- NodeBox228
			{0.1875, 1.4375, 0.375, 0.3125, 1.625, 0.5}, -- NodeBox229
			{0.25, 1.375, 0.375, 0.375, 1.5, 0.5}, -- NodeBox230
			{0.3125, 1.3125, 0.375, 0.4375, 1.4375, 0.5}, -- NodeBox231
			{0.375, 1.25, 0.375, 0.5, 1.375, 0.5}, -- NodeBox232
			{0.4375, 1.125, 0.375, 0.5625, 1.3125, 0.5}, -- NodeBox233
			{0.5, 1.0625, 0.375, 0.625, 1.1875, 0.5}, -- NodeBox234
			{0.5625, 1, 0.375, 0.6875, 1.125, 0.5}, -- NodeBox235
			{0.625, 0.9375, 0.375, 0.75, 1.0625, 0.5}, -- NodeBox236
			{0.6875, 0.8125, 0.375, 0.8125, 1, 0.5}, -- NodeBox237
			{0.75, 0.75, 0.375, 0.875, 0.875, 0.5}, -- NodeBox238
			{0.8125, 0.6875, 0.375, 0.9375, 0.8125, 0.5}, -- NodeBox239
			{0.875, 0.625, 0.375, 1, 0.75, 0.5}, -- NodeBox240
			{0.9375, 0.5, 0.375, 1.0625, 0.6875, 0.5}, -- NodeBox241
			{1, 0.4375, 0.375, 1.125, 0.5625, 0.5}, -- NodeBox242
			{1.0625, 0.375, 0.375, 1.1875, 0.5, 0.5}, -- NodeBox243
			{1.125, 0.3125, 0.375, 1.25, 0.4375, 0.5}, -- NodeBox244
			{1.1875, 0.1875, 0.375, 1.3125, 0.375, 0.5}, -- NodeBox245
			{1.25, 0.125, 0.375, 1.375, 0.25, 0.5}, -- NodeBox246
			{1.3125, 0.0625, 0.375, 1.4375, 0.1875, 0.5}, -- NodeBox247
			{1.375, 0, 0.375, 1.5, 0.125, 0.5}, -- NodeBox248
			{-0.4375, 2.3125, 0.375, -0.3125, 2.4375, 0.5}, -- NodeBox249
			{1.3125, 2.25, 0.375, 1.4375, 2.375, 0.5}, -- NodeBox219
			{1.25, 2.1875, 0.375, 1.375, 2.3125, 0.5}, -- NodeBox220
			{1.1875, 2.0625, 0.375, 1.3125, 2.25, 0.5}, -- NodeBox221
			{1.125, 2, 0.375, 1.25, 2.125, 0.5}, -- NodeBox222
			{1.0625, 1.9375, 0.375, 1.1875, 2.0625, 0.5}, -- NodeBox223
			{1, 1.875, 0.375, 1.125, 2, 0.5}, -- NodeBox224
			{0.9375, 1.75, 0.375, 1.0625, 1.9375, 0.5}, -- NodeBox225
			{0.875, 1.6875, 0.375, 1, 1.8125, 0.5}, -- NodeBox226
			{0.8125, 1.625, 0.375, 0.9375, 1.75, 0.5}, -- NodeBox227
			{0.75, 1.5625, 0.375, 0.875, 1.6875, 0.5}, -- NodeBox228
			{0.6875, 1.4375, 0.375, 0.8125, 1.625, 0.5}, -- NodeBox229
			{0.625, 1.375, 0.375, 0.75, 1.5, 0.5}, -- NodeBox230
			{0.5625, 1.3125, 0.375, 0.6875, 1.4375, 0.5}, -- NodeBox231
			{0.5, 1.25, 0.375, 0.625, 1.375, 0.5}, -- NodeBox232
			{0.4375, 1.125, 0.375, 0.5625, 1.3125, 0.5}, -- NodeBox233
			{0.375, 1.0625, 0.375, 0.5, 1.1875, 0.5}, -- NodeBox234
			{0.3125, 1, 0.375, 0.4375, 1.125, 0.5}, -- NodeBox235
			{0.25, 0.9375, 0.375, 0.375, 1.0625, 0.5}, -- NodeBox236
			{0.1875, 0.8125, 0.375, 0.3125, 1, 0.5}, -- NodeBox237
			{0.125, 0.75, 0.375, 0.25, 0.875, 0.5}, -- NodeBox238
			{0.0625, 0.6875, 0.375, 0.1875, 0.8125, 0.5}, -- NodeBox239
			{0, 0.625, 0.375, 0.125, 0.75, 0.5}, -- NodeBox240
			{-0.0625, 0.5, 0.375, 0.0625, 0.6875, 0.5}, -- NodeBox241
			{-0.125, 0.4375, 0.375, 0, 0.5625, 0.5}, -- NodeBox242
			{-0.1875, 0.375, 0.375, -0.0625, 0.5, 0.5}, -- NodeBox243
			{-0.25, 0.3125, 0.375, -0.125, 0.4375, 0.5}, -- NodeBox244
			{-0.3125, 0.1875, 0.375, -0.1875, 0.375, 0.5}, -- NodeBox245
			{-0.375, 0.125, 0.375, -0.25, 0.25, 0.5}, -- NodeBox246
			{-0.4375, 0.0625, 0.375, -0.3125, 0.1875, 0.5}, -- NodeBox247
			{-0.5, 0, 0.375, -0.375, 0.125, 0.5}, -- NodeBox248
			{1.375, 2.3125, 0.375, 1.5, 2.4375, 0.5}, -- NodeBox249
			{-0.5, 2.3125, 0.375, -0.375, 2.4375, 0.5},
			
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 2.5, 0.5},
		},
    },
	collision_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 2.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:truss_superstructure_simple_end"..bridge_colors, {
	description = bridge_colors.." Truss Superstructure Simple Left End",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_superstructure_simple_end.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_superstructure_simple_end.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 2.5, 0.5},
		},
	},
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:truss_superstructure_simple_end_right"..bridge_colors, {
	description = bridge_colors.." Truss Superstructure Simple Right End",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_superstructure_simple_end_right.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_superstructure_simple_end_right.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, -0.375, 2.5, 0.5},
		},
	},
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:truss_substructure_end_right_slant_"..bridge_colors, {
	description = bridge_colors.." Truss Substructure End Right Slant",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_substructure_end_right_slant.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_substructure_end_right_slant.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 1.375, 0.375, 1.5, 1.5, 0.5}, -- NodeBox122
			{-0.4375, 1.3125, 0.375, -0.3125, 1.4375, 0.5}, -- NodeBox126
			{-0.375, 1.25, 0.375, -0.25, 1.375, 0.5}, -- NodeBox127
			{-0.3125, 1.1875, 0.375, -0.1875, 1.3125, 0.5}, -- NodeBox128
			{-0.25, 1.125, 0.375, -0.125, 1.25, 0.5}, -- NodeBox129
			{-0.1875, 1.0625, 0.375, -0.0625, 1.1875, 0.5}, -- NodeBox130
			{-0.125, 1, 0.375, 0, 1.125, 0.5}, -- NodeBox131
			{-0.0625, 0.9375, 0.375, 0.0625, 1.0625, 0.5}, -- NodeBox132
			{0, 0.875, 0.375, 0.125, 1, 0.5}, -- NodeBox133
			{0.0625, 0.8125, 0.375, 0.1875, 0.9375, 0.5}, -- NodeBox134
			{0.125, 0.75, 0.375, 0.25, 0.875, 0.5}, -- NodeBox135
			{0.1875, 0.6875, 0.375, 0.3125, 0.8125, 0.5}, -- NodeBox136
			{0.25, 0.625, 0.375, 0.375, 0.75, 0.5}, -- NodeBox137
			{0.3125, 0.5625, 0.375, 0.4375, 0.6875, 0.5}, -- NodeBox138
			{0.375, 0.5, 0.375, 0.5, 0.625, 0.5}, -- NodeBox139
			{0.4375, 0.4375, 0.375, 0.5625, 0.5625, 0.5}, -- NodeBox140
			{0.5, 0.375, 0.375, 0.625, 0.5, 0.5}, -- NodeBox141
			{0.5625, 0.3125, 0.375, 0.6875, 0.4375, 0.5}, -- NodeBox142
			{0.625, 0.25, 0.375, 0.75, 0.375, 0.5}, -- NodeBox143
			{0.6875, 0.1875, 0.375, 0.8125, 0.3125, 0.5}, -- NodeBox144
			{0.75, 0.125, 0.375, 0.875, 0.25, 0.5}, -- NodeBox145
			{0.8125, 0.0625, 0.375, 0.9375, 0.1875, 0.5}, -- NodeBox146
			{0.875, 0, 0.375, 1, 0.125, 0.5}, -- NodeBox147
			{0.9375, -0.0625, 0.375, 1.0625, 0.0625, 0.5}, -- NodeBox148
			{1, -0.125, 0.375, 1.125, 0, 0.5}, -- NodeBox149
			{1.0625, -0.1875, 0.375, 1.1875, -0.0625, 0.5}, -- NodeBox150
			{1.125, -0.25, 0.375, 1.25, -0.125, 0.5}, -- NodeBox151
			{1.1875, -0.3125, 0.375, 1.3125, -0.1875, 0.5}, -- NodeBox152
			{1.25, -0.375, 0.375, 1.375, -0.25, 0.5}, -- NodeBox153
			{1.3125, -0.4375, 0.375, 1.4375, -0.3125, 0.5}, -- NodeBox154
			{1.375, -0.5, 0.375, 1.5, -0.375, 0.5}, -- NodeBox189
			{1.4375, -0.5, 0.375, 1.5, 1.5, 0.5}, -- NodeBox190
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 1.5, 0.5},
		},
    },
	collision_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 1.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:truss_substructure_end_left_slant_"..bridge_colors, {
	description = bridge_colors.." Truss Substructure End Left Slant",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_substructure_end_left_slant.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_substructure_end_left_slant.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 1.375, 0.375, 1.5, 1.5, 0.5}, -- NodeBox122
			{1.3125, 1.3125, 0.375, 1.4375, 1.4375, 0.5}, -- NodeBox126
			{1.25, 1.25, 0.375, 1.375, 1.375, 0.5}, -- NodeBox127
			{1.1875, 1.1875, 0.375, 1.3125, 1.3125, 0.5}, -- NodeBox128
			{1.125, 1.125, 0.375, 1.25, 1.25, 0.5}, -- NodeBox129
			{1.0625, 1.0625, 0.375, 1.1875, 1.1875, 0.5}, -- NodeBox130
			{1, 1, 0.375, 1.125, 1.125, 0.5}, -- NodeBox131
			{0.9375, 0.9375, 0.375, 1.0625, 1.0625, 0.5}, -- NodeBox132
			{0.875, 0.875, 0.375, 1, 1, 0.5}, -- NodeBox133
			{0.8125, 0.8125, 0.375, 0.9375, 0.9375, 0.5}, -- NodeBox134
			{0.75, 0.75, 0.375, 0.875, 0.875, 0.5}, -- NodeBox135
			{0.6875, 0.6875, 0.375, 0.8125, 0.8125, 0.5}, -- NodeBox136
			{0.625, 0.625, 0.375, 0.75, 0.75, 0.5}, -- NodeBox137
			{0.5625, 0.5625, 0.375, 0.6875, 0.6875, 0.5}, -- NodeBox138
			{0.5, 0.5, 0.375, 0.625, 0.625, 0.5}, -- NodeBox139
			{0.4375, 0.4375, 0.375, 0.5625, 0.5625, 0.5}, -- NodeBox140
			{0.375, 0.375, 0.375, 0.5, 0.5, 0.5}, -- NodeBox141
			{0.3125, 0.3125, 0.375, 0.4375, 0.4375, 0.5}, -- NodeBox142
			{0.25, 0.25, 0.375, 0.375, 0.375, 0.5}, -- NodeBox143
			{0.1875, 0.1875, 0.375, 0.3125, 0.3125, 0.5}, -- NodeBox144
			{0.125, 0.125, 0.375, 0.25, 0.25, 0.5}, -- NodeBox145
			{0.0625, 0.0625, 0.375, 0.1875, 0.1875, 0.5}, -- NodeBox146
			{0, 0, 0.375, 0.125, 0.125, 0.5}, -- NodeBox147
			{-0.0625, -0.0625, 0.375, 0.0625, 0.0625, 0.5}, -- NodeBox148
			{-0.125, -0.125, 0.375, 0, 0, 0.5}, -- NodeBox149
			{-0.1875, -0.1875, 0.375, -0.0625, -0.0625, 0.5}, -- NodeBox150
			{-0.25, -0.25, 0.375, -0.125, -0.125, 0.5}, -- NodeBox151
			{-0.3125, -0.3125, 0.375, -0.1875, -0.1875, 0.5}, -- NodeBox152
			{-0.375, -0.375, 0.375, -0.25, -0.25, 0.5}, -- NodeBox153
			{-0.4375, -0.4375, 0.375, -0.3125, -0.3125, 0.5}, -- NodeBox154
			{-0.5, -0.5, 0.375, -0.4375, 1.5, 0.5}, -- NodeBox188
			{-0.5, -0.5, 0.375, -0.375, -0.375, 0.5}, -- NodeBox192
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 1.5, 0.5},
		},
    },
	collision_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 1.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:truss_substructure_right_slant_"..bridge_colors, {
	description = bridge_colors.." Truss Substructure Right Slant",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_substructure_right_slant.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_substructure_right_slant.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 1.375, 0.375, 1.5, 1.5, 0.5}, -- NodeBox122
			{-0.4375, 1.3125, 0.375, -0.3125, 1.4375, 0.5}, -- NodeBox126
			{-0.375, 1.25, 0.375, -0.25, 1.375, 0.5}, -- NodeBox127
			{-0.3125, 1.1875, 0.375, -0.1875, 1.3125, 0.5}, -- NodeBox128
			{-0.25, 1.125, 0.375, -0.125, 1.25, 0.5}, -- NodeBox129
			{-0.1875, 1.0625, 0.375, -0.0625, 1.1875, 0.5}, -- NodeBox130
			{-0.125, 1, 0.375, 0, 1.125, 0.5}, -- NodeBox131
			{-0.0625, 0.9375, 0.375, 0.0625, 1.0625, 0.5}, -- NodeBox132
			{0, 0.875, 0.375, 0.125, 1, 0.5}, -- NodeBox133
			{0.0625, 0.8125, 0.375, 0.1875, 0.9375, 0.5}, -- NodeBox134
			{0.125, 0.75, 0.375, 0.25, 0.875, 0.5}, -- NodeBox135
			{0.1875, 0.6875, 0.375, 0.3125, 0.8125, 0.5}, -- NodeBox136
			{0.25, 0.625, 0.375, 0.375, 0.75, 0.5}, -- NodeBox137
			{0.3125, 0.5625, 0.375, 0.4375, 0.6875, 0.5}, -- NodeBox138
			{0.375, 0.5, 0.375, 0.5, 0.625, 0.5}, -- NodeBox139
			{0.4375, 0.4375, 0.375, 0.5625, 0.5625, 0.5}, -- NodeBox140
			{0.5, 0.375, 0.375, 0.625, 0.5, 0.5}, -- NodeBox141
			{0.5625, 0.3125, 0.375, 0.6875, 0.4375, 0.5}, -- NodeBox142
			{0.625, 0.25, 0.375, 0.75, 0.375, 0.5}, -- NodeBox143
			{0.6875, 0.1875, 0.375, 0.8125, 0.3125, 0.5}, -- NodeBox144
			{0.75, 0.125, 0.375, 0.875, 0.25, 0.5}, -- NodeBox145
			{0.8125, 0.0625, 0.375, 0.9375, 0.1875, 0.5}, -- NodeBox146
			{0.875, 0, 0.375, 1, 0.125, 0.5}, -- NodeBox147
			{0.9375, -0.0625, 0.375, 1.0625, 0.0625, 0.5}, -- NodeBox148
			{1, -0.125, 0.375, 1.125, 0, 0.5}, -- NodeBox149
			{1.0625, -0.1875, 0.375, 1.1875, -0.0625, 0.5}, -- NodeBox150
			{1.125, -0.25, 0.375, 1.25, -0.125, 0.5}, -- NodeBox151
			{1.1875, -0.3125, 0.375, 1.3125, -0.1875, 0.5}, -- NodeBox152
			{1.25, -0.375, 0.375, 1.375, -0.25, 0.5}, -- NodeBox153
			{1.3125, -0.4375, 0.375, 1.4375, -0.3125, 0.5}, -- NodeBox154
			{-0.5, -0.5, 0.375, -0.4375, 1.5, 0.5}, -- NodeBox188
			{-0.5, -0.5, 0.375, 1.5, -0.375, 0.5}, -- NodeBox189
			{1.4375, -0.5, 0.375, 1.5, 1.5, 0.5}, -- NodeBox190
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 1.5, 0.5},
		},
    },
	collision_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 1.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:truss_substructure_left_slant_"..bridge_colors, {
	description = bridge_colors.." Truss Substructure Left Slant",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_substructure_left_slant.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_substructure_left_slant.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 1.375, 0.375, 1.5, 1.5, 0.5}, -- NodeBox122
			{1.3125, 1.3125, 0.375, 1.4375, 1.4375, 0.5}, -- NodeBox126
			{1.25, 1.25, 0.375, 1.375, 1.375, 0.5}, -- NodeBox127
			{1.1875, 1.1875, 0.375, 1.3125, 1.3125, 0.5}, -- NodeBox128
			{1.125, 1.125, 0.375, 1.25, 1.25, 0.5}, -- NodeBox129
			{1.0625, 1.0625, 0.375, 1.1875, 1.1875, 0.5}, -- NodeBox130
			{1, 1, 0.375, 1.125, 1.125, 0.5}, -- NodeBox131
			{0.9375, 0.9375, 0.375, 1.0625, 1.0625, 0.5}, -- NodeBox132
			{0.875, 0.875, 0.375, 1, 1, 0.5}, -- NodeBox133
			{0.8125, 0.8125, 0.375, 0.9375, 0.9375, 0.5}, -- NodeBox134
			{0.75, 0.75, 0.375, 0.875, 0.875, 0.5}, -- NodeBox135
			{0.6875, 0.6875, 0.375, 0.8125, 0.8125, 0.5}, -- NodeBox136
			{0.625, 0.625, 0.375, 0.75, 0.75, 0.5}, -- NodeBox137
			{0.5625, 0.5625, 0.375, 0.6875, 0.6875, 0.5}, -- NodeBox138
			{0.5, 0.5, 0.375, 0.625, 0.625, 0.5}, -- NodeBox139
			{0.4375, 0.4375, 0.375, 0.5625, 0.5625, 0.5}, -- NodeBox140
			{0.375, 0.375, 0.375, 0.5, 0.5, 0.5}, -- NodeBox141
			{0.3125, 0.3125, 0.375, 0.4375, 0.4375, 0.5}, -- NodeBox142
			{0.25, 0.25, 0.375, 0.375, 0.375, 0.5}, -- NodeBox143
			{0.1875, 0.1875, 0.375, 0.3125, 0.3125, 0.5}, -- NodeBox144
			{0.125, 0.125, 0.375, 0.25, 0.25, 0.5}, -- NodeBox145
			{0.0625, 0.0625, 0.375, 0.1875, 0.1875, 0.5}, -- NodeBox146
			{0, 0, 0.375, 0.125, 0.125, 0.5}, -- NodeBox147
			{-0.0625, -0.0625, 0.375, 0.0625, 0.0625, 0.5}, -- NodeBox148
			{-0.125, -0.125, 0.375, 0, 0, 0.5}, -- NodeBox149
			{-0.1875, -0.1875, 0.375, -0.0625, -0.0625, 0.5}, -- NodeBox150
			{-0.25, -0.25, 0.375, -0.125, -0.125, 0.5}, -- NodeBox151
			{-0.3125, -0.3125, 0.375, -0.1875, -0.1875, 0.5}, -- NodeBox152
			{-0.375, -0.375, 0.375, -0.25, -0.25, 0.5}, -- NodeBox153
			{-0.4375, -0.4375, 0.375, -0.3125, -0.3125, 0.5}, -- NodeBox154
			{-0.5, -0.5, 0.375, -0.4375, 1.5, 0.5}, -- NodeBox188
			{-0.5, -0.5, 0.375, 1.5, -0.375, 0.5}, -- NodeBox189
			{1.4375, -0.5, 0.375, 1.5, 1.5, 0.5}, -- NodeBox190
			{-0.5, -0.5, 0.375, -0.375, -0.375, 0.5}, -- NodeBox192
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 1.5, 0.5},
		},
    },
	collision_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 1.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:truss_substructure_simple"..bridge_colors, {
	description = bridge_colors.." Truss Substructure Simple",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_substructure_simple.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_substructure_simple.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 1.5, -0.375, 0.5}, -- NodeBox121
			{-0.5, 1.375, 0.375, 1.5, 1.5, 0.5}, -- NodeBox122
			{-0.4375, 1.3125, 0.375, -0.3125, 1.4375, 0.5}, -- NodeBox126
			{-0.375, 1.25, 0.375, -0.25, 1.375, 0.5}, -- NodeBox127
			{-0.3125, 1.1875, 0.375, -0.1875, 1.3125, 0.5}, -- NodeBox128
			{-0.25, 1.125, 0.375, -0.125, 1.25, 0.5}, -- NodeBox129
			{-0.1875, 1.0625, 0.375, -0.0625, 1.1875, 0.5}, -- NodeBox130
			{-0.125, 1, 0.375, 0, 1.125, 0.5}, -- NodeBox131
			{-0.0625, 0.9375, 0.375, 0.0625, 1.0625, 0.5}, -- NodeBox132
			{0, 0.875, 0.375, 0.125, 1, 0.5}, -- NodeBox133
			{0.0625, 0.8125, 0.375, 0.1875, 0.9375, 0.5}, -- NodeBox134
			{0.125, 0.75, 0.375, 0.25, 0.875, 0.5}, -- NodeBox135
			{0.1875, 0.6875, 0.375, 0.3125, 0.8125, 0.5}, -- NodeBox136
			{0.25, 0.625, 0.375, 0.375, 0.75, 0.5}, -- NodeBox137
			{0.3125, 0.5625, 0.375, 0.4375, 0.6875, 0.5}, -- NodeBox138
			{0.375, 0.5, 0.375, 0.5, 0.625, 0.5}, -- NodeBox139
			{0.4375, 0.4375, 0.375, 0.5625, 0.5625, 0.5}, -- NodeBox140
			{0.5, 0.375, 0.375, 0.625, 0.5, 0.5}, -- NodeBox141
			{0.5625, 0.3125, 0.375, 0.6875, 0.4375, 0.5}, -- NodeBox142
			{0.625, 0.25, 0.375, 0.75, 0.375, 0.5}, -- NodeBox143
			{0.6875, 0.1875, 0.375, 0.8125, 0.3125, 0.5}, -- NodeBox144
			{0.75, 0.125, 0.375, 0.875, 0.25, 0.5}, -- NodeBox145
			{0.8125, 0.0625, 0.375, 0.9375, 0.1875, 0.5}, -- NodeBox146
			{0.875, 0, 0.375, 1, 0.125, 0.5}, -- NodeBox147
			{0.9375, -0.0625, 0.375, 1.0625, 0.0625, 0.5}, -- NodeBox148
			{1, -0.125, 0.375, 1.125, 0, 0.5}, -- NodeBox149
			{1.0625, -0.1875, 0.375, 1.1875, -0.0625, 0.5}, -- NodeBox150
			{1.125, -0.25, 0.375, 1.25, -0.125, 0.5}, -- NodeBox151
			{1.1875, -0.3125, 0.375, 1.3125, -0.1875, 0.5}, -- NodeBox152
			{1.25, -0.375, 0.375, 1.375, -0.25, 0.5}, -- NodeBox153
			{1.3125, -0.4375, 0.375, 1.4375, -0.3125, 0.5}, -- NodeBox154
			{1.3125, 1.3125, 0.375, 1.4375, 1.4375, 0.5}, -- NodeBox157
			{1.25, 1.25, 0.375, 1.375, 1.375, 0.5}, -- NodeBox158
			{1.1875, 1.1875, 0.375, 1.3125, 1.3125, 0.5}, -- NodeBox159
			{1.125, 1.125, 0.375, 1.25, 1.25, 0.5}, -- NodeBox160
			{1.0625, 1.0625, 0.375, 1.1875, 1.1875, 0.5}, -- NodeBox161
			{1, 1, 0.375, 1.125, 1.125, 0.5}, -- NodeBox162
			{0.9375, 0.9375, 0.375, 1.0625, 1.0625, 0.5}, -- NodeBox163
			{0.875, 0.875, 0.375, 1, 1, 0.5}, -- NodeBox164
			{0.8125, 0.8125, 0.375, 0.9375, 0.9375, 0.5}, -- NodeBox165
			{0.75, 0.75, 0.375, 0.875, 0.875, 0.5}, -- NodeBox166
			{0.6875, 0.6875, 0.375, 0.8125, 0.8125, 0.5}, -- NodeBox167
			{0.625, 0.625, 0.375, 0.75, 0.75, 0.5}, -- NodeBox168
			{0.5625, 0.5625, 0.375, 0.6875, 0.6875, 0.5}, -- NodeBox169
			{0.375, 0.375, 0.375, 0.625, 0.625, 0.5}, -- NodeBox170
			{0.3125, 0.3125, 0.375, 0.4375, 0.4375, 0.5}, -- NodeBox171
			{0.25, 0.25, 0.375, 0.375, 0.375, 0.5}, -- NodeBox172
			{0.1875, 0.1875, 0.375, 0.3125, 0.3125, 0.5}, -- NodeBox173
			{0.125, 0.125, 0.375, 0.25, 0.25, 0.5}, -- NodeBox174
			{0.0625, 0.0625, 0.375, 0.1875, 0.1875, 0.5}, -- NodeBox175
			{0, 0, 0.375, 0.125, 0.125, 0.5}, -- NodeBox176
			{-0.0625, -0.0625, 0.375, 0.0625, 0.0625, 0.5}, -- NodeBox177
			{-0.125, -0.125, 0.375, 0, 0, 0.5}, -- NodeBox178
			{-0.1875, -0.1875, 0.375, -0.0625, -0.0625, 0.5}, -- NodeBox179
			{-0.25, -0.25, 0.375, -0.125, -0.125, 0.5}, -- NodeBox180
			{-0.3125, -0.3125, 0.375, -0.1875, -0.1875, 0.5}, -- NodeBox181
			{-0.375, -0.375, 0.375, -0.25, -0.25, 0.5}, -- NodeBox182
			{-0.4375, -0.4375, 0.375, -0.3125, -0.3125, 0.5}, -- NodeBox183
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 1.5, 0.5},
		},
    },
	collision_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 1.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:truss_substructure_mid"..bridge_colors, {
	description = bridge_colors.." Truss Substructure Middle",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_substructure_mid.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_substructure_mid.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 1.5, -0.375, 0.5}, -- NodeBox121
			{-0.5, 1.375, 0.375, 1.5, 1.5, 0.5}, -- NodeBox122
			{-0.4375, 1.3125, 0.375, -0.3125, 1.4375, 0.5}, -- NodeBox126
			{-0.375, 1.25, 0.375, -0.25, 1.375, 0.5}, -- NodeBox127
			{-0.3125, 1.1875, 0.375, -0.1875, 1.3125, 0.5}, -- NodeBox128
			{-0.25, 1.125, 0.375, -0.125, 1.25, 0.5}, -- NodeBox129
			{-0.1875, 1.0625, 0.375, -0.0625, 1.1875, 0.5}, -- NodeBox130
			{-0.125, 1, 0.375, 0, 1.125, 0.5}, -- NodeBox131
			{-0.0625, 0.9375, 0.375, 0.0625, 1.0625, 0.5}, -- NodeBox132
			{0, 0.875, 0.375, 0.125, 1, 0.5}, -- NodeBox133
			{0.0625, 0.8125, 0.375, 0.1875, 0.9375, 0.5}, -- NodeBox134
			{0.125, 0.75, 0.375, 0.25, 0.875, 0.5}, -- NodeBox135
			{0.1875, 0.6875, 0.375, 0.3125, 0.8125, 0.5}, -- NodeBox136
			{0.25, 0.625, 0.375, 0.375, 0.75, 0.5}, -- NodeBox137
			{0.3125, 0.5625, 0.375, 0.4375, 0.6875, 0.5}, -- NodeBox138
			{0.375, 0.5, 0.375, 0.5, 0.625, 0.5}, -- NodeBox139
			{0.4375, 0.4375, 0.375, 0.5625, 0.5625, 0.5}, -- NodeBox140
			{0.5, 0.375, 0.375, 0.625, 0.5, 0.5}, -- NodeBox141
			{0.5625, 0.3125, 0.375, 0.6875, 0.4375, 0.5}, -- NodeBox142
			{0.625, 0.25, 0.375, 0.75, 0.375, 0.5}, -- NodeBox143
			{0.6875, 0.1875, 0.375, 0.8125, 0.3125, 0.5}, -- NodeBox144
			{0.75, 0.125, 0.375, 0.875, 0.25, 0.5}, -- NodeBox145
			{0.8125, 0.0625, 0.375, 0.9375, 0.1875, 0.5}, -- NodeBox146
			{0.875, 0, 0.375, 1, 0.125, 0.5}, -- NodeBox147
			{0.9375, -0.0625, 0.375, 1.0625, 0.0625, 0.5}, -- NodeBox148
			{1, -0.125, 0.375, 1.125, 0, 0.5}, -- NodeBox149
			{1.0625, -0.1875, 0.375, 1.1875, -0.0625, 0.5}, -- NodeBox150
			{1.125, -0.25, 0.375, 1.25, -0.125, 0.5}, -- NodeBox151
			{1.1875, -0.3125, 0.375, 1.3125, -0.1875, 0.5}, -- NodeBox152
			{1.25, -0.375, 0.375, 1.375, -0.25, 0.5}, -- NodeBox153
			{1.3125, -0.4375, 0.375, 1.4375, -0.3125, 0.5}, -- NodeBox154
			{1.3125, 1.3125, 0.375, 1.4375, 1.4375, 0.5}, -- NodeBox157
			{1.25, 1.25, 0.375, 1.375, 1.375, 0.5}, -- NodeBox158
			{1.1875, 1.1875, 0.375, 1.3125, 1.3125, 0.5}, -- NodeBox159
			{1.125, 1.125, 0.375, 1.25, 1.25, 0.5}, -- NodeBox160
			{1.0625, 1.0625, 0.375, 1.1875, 1.1875, 0.5}, -- NodeBox161
			{1, 1, 0.375, 1.125, 1.125, 0.5}, -- NodeBox162
			{0.9375, 0.9375, 0.375, 1.0625, 1.0625, 0.5}, -- NodeBox163
			{0.875, 0.875, 0.375, 1, 1, 0.5}, -- NodeBox164
			{0.8125, 0.8125, 0.375, 0.9375, 0.9375, 0.5}, -- NodeBox165
			{0.75, 0.75, 0.375, 0.875, 0.875, 0.5}, -- NodeBox166
			{0.6875, 0.6875, 0.375, 0.8125, 0.8125, 0.5}, -- NodeBox167
			{0.625, 0.625, 0.375, 0.75, 0.75, 0.5}, -- NodeBox168
			{0.5625, 0.5625, 0.375, 0.6875, 0.6875, 0.5}, -- NodeBox169
			{0.375, 0.375, 0.375, 0.625, 0.625, 0.5}, -- NodeBox170
			{0.3125, 0.3125, 0.375, 0.4375, 0.4375, 0.5}, -- NodeBox171
			{0.25, 0.25, 0.375, 0.375, 0.375, 0.5}, -- NodeBox172
			{0.1875, 0.1875, 0.375, 0.3125, 0.3125, 0.5}, -- NodeBox173
			{0.125, 0.125, 0.375, 0.25, 0.25, 0.5}, -- NodeBox174
			{0.0625, 0.0625, 0.375, 0.1875, 0.1875, 0.5}, -- NodeBox175
			{0, 0, 0.375, 0.125, 0.125, 0.5}, -- NodeBox176
			{-0.0625, -0.0625, 0.375, 0.0625, 0.0625, 0.5}, -- NodeBox177
			{-0.125, -0.125, 0.375, 0, 0, 0.5}, -- NodeBox178
			{-0.1875, -0.1875, 0.375, -0.0625, -0.0625, 0.5}, -- NodeBox179
			{-0.25, -0.25, 0.375, -0.125, -0.125, 0.5}, -- NodeBox180
			{-0.3125, -0.3125, 0.375, -0.1875, -0.1875, 0.5}, -- NodeBox181
			{-0.375, -0.375, 0.375, -0.25, -0.25, 0.5}, -- NodeBox182
			{-0.4375, -0.4375, 0.375, -0.3125, -0.3125, 0.5}, -- NodeBox183
			{1.4375, -0.5, 0.375, 1.5, 1.5, 0.5}, -- NodeBox184
			{-0.5, -0.5, 0.375, -0.4375, 1.5, 0.5}, -- NodeBox185
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 1.5, 0.5},
		},
    },
	collision_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 1.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:small_upper_chord_"..bridge_colors, {
	description = bridge_colors.." Small Upper Chord",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_small_upper_chord.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_small_upper_chord.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.375, 0.4375, 0.5, 0.5, 0.5}, -- NodeBox250
			{0.4375, 0.375, -1.5, 0.5, 0.5, 0.5}, -- NodeBox251
			{-0.5, 0.375, -1.5, 0.5, 0.5, -1.4375}, -- NodeBox252
			{-0.5, 0.375, -1.5, -0.4375, 0.5, 0.5}, -- NodeBox253
			{-0.4375, 0.375, 0.25, -0.3125, 0.5, 0.4375}, -- NodeBox260
			{-0.375, 0.375, 0.125, -0.25, 0.5, 0.3125}, -- NodeBox261
			{-0.3125, 0.375, 0, -0.1875, 0.5, 0.1875}, -- NodeBox262
			{-0.25, 0.375, -0.125, -0.125, 0.5, 0.0625}, -- NodeBox263
			{-0.1875, 0.375, -0.25, -0.0625, 0.5, -0.0625}, -- NodeBox264
			{-0.4375, 0.375, -1.4375, -0.3125, 0.5, -1.25}, -- NodeBox265
			{-0.375, 0.375, -1.3125, -0.25, 0.5, -1.125}, -- NodeBox266
			{-0.3125, 0.375, -1.1875, -0.1875, 0.5, -1}, -- NodeBox267
			{-0.25, 0.375, -1.0625, -0.125, 0.5, -0.875}, -- NodeBox268
			{-0.1875, 0.375, -0.9375, -0.0625, 0.5, -0.75}, -- NodeBox269
			{-0.125, 0.375, -0.8125, 0, 0.5, -0.625}, -- NodeBox270
			{-0.125, 0.375, -0.375, 0, 0.5, -0.1875}, -- NodeBox271
			{0.3125, 0.375, 0.25, 0.4375, 0.5, 0.4375}, -- NodeBox272
			{0.25, 0.375, 0.125, 0.375, 0.5, 0.3125}, -- NodeBox273
			{0.1875, 0.375, 0, 0.3125, 0.5, 0.1875}, -- NodeBox274
			{0.125, 0.375, -0.125, 0.25, 0.5, 0.0625}, -- NodeBox275
			{0.0625, 0.375, -0.25, 0.1875, 0.5, -0.0625}, -- NodeBox276
			{0, 0.375, -0.375, 0.125, 0.5, -0.1875}, -- NodeBox277
			{-0.0625, 0.375, -0.625, 0.0625, 0.5, -0.375}, -- NodeBox278
			{0.3125, 0.375, -1.4375, 0.4375, 0.5, -1.25}, -- NodeBox279
			{0.25, 0.375, -1.3125, 0.375, 0.5, -1.125}, -- NodeBox280
			{0.1875, 0.375, -1.1875, 0.3125, 0.5, -1}, -- NodeBox281
			{0.125, 0.375, -1.0625, 0.25, 0.5, -0.875}, -- NodeBox282
			{0.0625, 0.375, -0.9375, 0.1875, 0.5, -0.75}, -- NodeBox283
			{0, 0.375, -0.8125, 0.125, 0.5, -0.625}, -- NodeBox284
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, 0, -1.5, 0.5, 0.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:medium_upper_chord_"..bridge_colors, {
	description = bridge_colors.." Medium Upper Chord",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_medium_upper_chord.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_medium_upper_chord.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-1.5, 0.375, 0.4375, 1.5, 0.5, 0.5}, -- NodeBox250
			{1.4375, 0.375, -1.5, 1.5, 0.5, 0.5}, -- NodeBox251
			{-1.5, 0.375, -1.5, 1.5, 0.5, -1.4375}, -- NodeBox252
			{-1.5, 0.375, -1.5, -1.4375, 0.5, 0.5}, -- NodeBox253
			{-1.4375, 0.375, 0.3125, -1.3125, 0.5, 0.4375}, -- NodeBox285
			{-1.375, 0.375, 0.25, -1.1875, 0.5, 0.375}, -- NodeBox286
			{-1.25, 0.375, 0.1875, -1.125, 0.5, 0.3125}, -- NodeBox287
			{-1.1875, 0.375, 0.125, -1, 0.5, 0.25}, -- NodeBox289
			{-1.0625, 0.375, 0.0625, -0.9375, 0.5, 0.1875}, -- NodeBox290
			{-1, 0.375, 0, -0.8125, 0.5, 0.125}, -- NodeBox291
			{-0.875, 0.375, -0.0625, -0.75, 0.5, 0.0625}, -- NodeBox292
			{-0.8125, 0.375, -0.125, -0.625, 0.5, 0}, -- NodeBox293
			{-0.6875, 0.375, -0.1875, -0.5625, 0.5, -0.0625}, -- NodeBox294
			{-0.625, 0.375, -0.25, -0.4375, 0.5, -0.125}, -- NodeBox295
			{-0.5, 0.375, -0.3125, -0.375, 0.5, -0.1875}, -- NodeBox296
			{-0.4375, 0.375, -0.375, -0.25, 0.5, -0.25}, -- NodeBox297
			{-0.3125, 0.375, -0.4375, -0.1875, 0.5, -0.3125}, -- NodeBox298
			{-0.25, 0.375, -0.5, -0.0625, 0.5, -0.375}, -- NodeBox299
			{-0.125, 0.375, -0.5625, 0.125, 0.5, -0.4375}, -- NodeBox300
			{1.3125, 0.375, -1.4375, 1.4375, 0.5, -1.3125}, -- NodeBox301
			{1.1875, 0.375, -1.375, 1.375, 0.5, -1.25}, -- NodeBox302
			{1.125, 0.375, -1.3125, 1.25, 0.5, -1.1875}, -- NodeBox303
			{1, 0.375, -1.25, 1.1875, 0.5, -1.125}, -- NodeBox304
			{0.9375, 0.375, -1.1875, 1.0625, 0.5, -1.0625}, -- NodeBox305
			{0.8125, 0.375, -1.125, 1, 0.5, -1}, -- NodeBox306
			{0.75, 0.375, -1.0625, 0.875, 0.5, -0.9375}, -- NodeBox307
			{0.625, 0.375, -1, 0.8125, 0.5, -0.875}, -- NodeBox308
			{0.5625, 0.375, -0.9375, 0.6875, 0.5, -0.8125}, -- NodeBox309
			{0.4375, 0.375, -0.875, 0.625, 0.5, -0.75}, -- NodeBox310
			{0.375, 0.375, -0.8125, 0.5, 0.5, -0.6875}, -- NodeBox311
			{0.25, 0.375, -0.75, 0.4375, 0.5, -0.625}, -- NodeBox312
			{0.1875, 0.375, -0.6875, 0.3125, 0.5, -0.5625}, -- NodeBox313
			{0.0625, 0.375, -0.625, 0.25, 0.5, -0.5}, -- NodeBox314
			{1.3125, 0.375, 0.3125, 1.4375, 0.5, 0.4375}, -- NodeBox315
			{1.1875, 0.375, 0.25, 1.375, 0.5, 0.375}, -- NodeBox316
			{1.125, 0.375, 0.1875, 1.25, 0.5, 0.3125}, -- NodeBox317
			{1, 0.375, 0.125, 1.1875, 0.5, 0.25}, -- NodeBox318
			{0.9375, 0.375, 0.0625, 1.0625, 0.5, 0.1875}, -- NodeBox319
			{0.8125, 0.375, 0, 1, 0.5, 0.125}, -- NodeBox320
			{0.75, 0.375, -0.0625, 0.875, 0.5, 0.0625}, -- NodeBox321
			{0.625, 0.375, -0.125, 0.8125, 0.5, 0}, -- NodeBox322
			{0.5625, 0.375, -0.1875, 0.6875, 0.5, -0.0625}, -- NodeBox323
			{0.4375, 0.375, -0.25, 0.625, 0.5, -0.125}, -- NodeBox324
			{0.375, 0.375, -0.3125, 0.5, 0.5, -0.1875}, -- NodeBox325
			{0.25, 0.375, -0.375, 0.4375, 0.5, -0.25}, -- NodeBox326
			{0.1875, 0.375, -0.4375, 0.3125, 0.5, -0.3125}, -- NodeBox327
			{0.0625, 0.375, -0.5, 0.25, 0.5, -0.375}, -- NodeBox328
			{-1.4375, 0.375, -1.4375, -1.3125, 0.5, -1.3125}, -- NodeBox329
			{-1.375, 0.375, -1.375, -1.1875, 0.5, -1.25}, -- NodeBox330
			{-1.25, 0.375, -1.3125, -1.125, 0.5, -1.1875}, -- NodeBox331
			{-1.1875, 0.375, -1.25, -1, 0.5, -1.125}, -- NodeBox332
			{-1.0625, 0.375, -1.1875, -0.9375, 0.5, -1.0625}, -- NodeBox333
			{-1, 0.375, -1.125, -0.8125, 0.5, -1}, -- NodeBox334
			{-0.875, 0.375, -1.0625, -0.75, 0.5, -0.9375}, -- NodeBox335
			{-0.8125, 0.375, -1, -0.625, 0.5, -0.875}, -- NodeBox336
			{-0.6875, 0.375, -0.9375, -0.5625, 0.5, -0.8125}, -- NodeBox337
			{-0.625, 0.375, -0.875, -0.4375, 0.5, -0.75}, -- NodeBox338
			{-0.5, 0.375, -0.8125, -0.375, 0.5, -0.6875}, -- NodeBox339
			{-0.4375, 0.375, -0.75, -0.25, 0.5, -0.625}, -- NodeBox340
			{-0.3125, 0.375, -0.6875, -0.1875, 0.5, -0.5625}, -- NodeBox341
			{-0.25, 0.375, -0.625, -0.0625, 0.5, -0.5}, -- NodeBox342
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-1.5, 0, -1.5, 1.5, 0.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:large_upper_chord_"..bridge_colors, {
	description = bridge_colors.." Large Upper Chord",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_large_upper_chord.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_large_upper_chord.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-2.5, 0.375, 0.4375, 2.5, 0.5, 0.5}, -- NodeBox250
			{2.4375, 0.375, -1.5, 2.5, 0.5, 0.5}, -- NodeBox251
			{-2.5, 0.375, -1.5, 2.5, 0.5, -1.4375}, -- NodeBox252
			{-2.5, 0.375, -1.5, -2.4375, 0.5, 0.5}, -- NodeBox253
			{-2.4375, 0.375, 0.3125, -2.1875, 0.5, 0.4375}, -- NodeBox343
			{-2.3125, 0.375, 0.25, -2, 0.5, 0.375}, -- NodeBox344
			{-2.125, 0.375, 0.1875, -1.875, 0.5, 0.3125}, -- NodeBox345
			{-2, 0.375, 0.125, -1.6875, 0.5, 0.25}, -- NodeBox346
			{-1.875, 0.375, 0.0625, -1.5, 0.5, 0.1875}, -- NodeBox347
			{-1.625, 0.375, 0, -1.375, 0.5, 0.125}, -- NodeBox348
			{-1.5, 0.375, -0.0625, -1.1875, 0.5, 0.0625}, -- NodeBox349
			{-1.3125, 0.375, -0.125, -1, 0.5, 0}, -- NodeBox350
			{-1.125, 0.375, -0.1875, -0.875, 0.5, -0.0625}, -- NodeBox351
			{-1, 0.375, -0.25, -0.6875, 0.5, -0.125}, -- NodeBox352
			{-0.8125, 0.375, -0.3125, -0.5, 0.5, -0.1875}, -- NodeBox353
			{-0.625, 0.375, -0.375, -0.375, 0.5, -0.25}, -- NodeBox354
			{-0.5, 0.375, -0.4375, -0.1875, 0.5, -0.3125}, -- NodeBox355
			{2.1875, 0.375, 0.3125, 2.4375, 0.5, 0.4375}, -- NodeBox356
			{2, 0.375, 0.25, 2.3125, 0.5, 0.375}, -- NodeBox357
			{1.875, 0.375, 0.1875, 2.125, 0.5, 0.3125}, -- NodeBox358
			{1.6875, 0.375, 0.125, 2, 0.5, 0.25}, -- NodeBox359
			{1.5, 0.375, 0.0625, 1.8125, 0.5, 0.1875}, -- NodeBox360
			{1.1875, 0.375, -0.0625, 1.5, 0.5, 0.0625}, -- NodeBox361
			{1.375, 0.375, 0, 1.625, 0.5, 0.125}, -- NodeBox362
			{1, 0.375, -0.125, 1.3125, 0.5, 0}, -- NodeBox363
			{0.875, 0.375, -0.1875, 1.125, 0.5, -0.0625}, -- NodeBox364
			{0.6875, 0.375, -0.25, 1, 0.5, -0.125}, -- NodeBox365
			{0.5, 0.375, -0.3125, 0.8125, 0.5, -0.1875}, -- NodeBox366
			{0.375, 0.375, -0.375, 0.625, 0.5, -0.25}, -- NodeBox367
			{0.1875, 0.375, -0.4375, 0.5, 0.5, -0.3125}, -- NodeBox368
			{-0.375, 0.375, -0.625, 0.3125, 0.5, -0.375}, -- NodeBox369
			{2.1875, 0.375, -1.4375, 2.4375, 0.5, -1.3125}, -- NodeBox370
			{2, 0.375, -1.375, 2.3125, 0.5, -1.25}, -- NodeBox371
			{1.875, 0.375, -1.3125, 2.125, 0.5, -1.1875}, -- NodeBox372
			{1.6875, 0.375, -1.25, 2, 0.5, -1.125}, -- NodeBox373
			{1.5, 0.375, -1.1875, 1.8125, 0.5, -1.0625}, -- NodeBox374
			{1.375, 0.375, -1.125, 1.625, 0.5, -1}, -- NodeBox375
			{1.1875, 0.375, -1.0625, 1.5, 0.5, -0.9375}, -- NodeBox376
			{1, 0.375, -1, 1.3125, 0.5, -0.875}, -- NodeBox377
			{0.875, 0.375, -0.9375, 1.125, 0.5, -0.8125}, -- NodeBox378
			{0.6875, 0.375, -0.875, 1, 0.5, -0.75}, -- NodeBox379
			{0.5, 0.375, -0.8125, 0.8125, 0.5, -0.6875}, -- NodeBox380
			{0.375, 0.375, -0.75, 0.625, 0.5, -0.625}, -- NodeBox381
			{0.1875, 0.375, -0.6875, 0.5, 0.5, -0.5625}, -- NodeBox382
			{-2.4375, 0.375, -1.4375, -2.1875, 0.5, -1.3125}, -- NodeBox383
			{-2.3125, 0.375, -1.375, -2, 0.5, -1.25}, -- NodeBox384
			{-2.125, 0.375, -1.3125, -1.875, 0.5, -1.1875}, -- NodeBox385
			{-2, 0.375, -1.25, -1.6875, 0.5, -1.125}, -- NodeBox386
			{-1.8125, 0.375, -1.1875, -1.5, 0.5, -1.0625}, -- NodeBox387
			{-1.625, 0.375, -1.125, -1.375, 0.5, -1}, -- NodeBox388
			{-1.5, 0.375, -1.0625, -1.1875, 0.5, -0.9375}, -- NodeBox389
			{-1.3125, 0.375, -1, -1, 0.5, -0.875}, -- NodeBox390
			{-1.125, 0.375, -0.9375, -0.875, 0.5, -0.8125}, -- NodeBox391
			{-1, 0.375, -0.875, -0.6875, 0.5, -0.75}, -- NodeBox392
			{-0.8125, 0.375, -0.8125, -0.5, 0.5, -0.6875}, -- NodeBox393
			{-0.625, 0.375, -0.75, -0.375, 0.5, -0.625}, -- NodeBox394
			{-0.5, 0.375, -0.6875, -0.1875, 0.5, -0.5625}, -- NodeBox395
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-2.5, 0, -1.5, 2.5, 0.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:small_support_"..bridge_colors, {
	description = bridge_colors.." Small Support",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_small_support.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_small_support.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, -0.4375, 2.5, 0.5}, -- NodeBox396
			{0.4375, -0.5, 0.375, 0.5, 2.5, 0.5}, -- NodeBox397
			{0.3125, 2.3125, 0.375, 0.4375, 2.5, 0.5}, -- NodeBox398
			{-0.4375, 2.3125, 0.375, -0.3125, 2.5, 0.5}, -- NodeBox399
			{-0.375, 2.0625, 0.375, -0.25, 2.375, 0.5}, -- NodeBox400
			{-0.3125, 1.8125, 0.375, -0.1875, 2.125, 0.5}, -- NodeBox401
			{0.1875, 1.8125, 0.375, 0.3125, 2.125, 0.5}, -- NodeBox402
			{0.25, 2.0625, 0.375, 0.375, 2.375, 0.5}, -- NodeBox403
			{0.125, 1.5625, 0.375, 0.25, 1.875, 0.5}, -- NodeBox404
			{-0.25, 1.5625, 0.375, -0.125, 1.875, 0.5}, -- NodeBox405
			{-0.1875, 1.3125, 0.375, -0.0625, 1.625, 0.5}, -- NodeBox406
			{0.0625, 1.3125, 0.375, 0.1875, 1.625, 0.5}, -- NodeBox407
			{-0.125, 1.0625, 0.375, 0.125, 1.375, 0.5}, -- NodeBox408
			{0.3125, -0.5, 0.375, 0.4375, -0.3125, 0.5}, -- NodeBox409
			{-0.4375, -0.5, 0.375, -0.3125, -0.3125, 0.5}, -- NodeBox410
			{-0.375, -0.375, 0.375, -0.25, -0.0625, 0.5}, -- NodeBox411
			{0.25, -0.375, 0.375, 0.375, -0.0625, 0.5}, -- NodeBox412
			{0.1875, -0.125, 0.375, 0.3125, 0.1875, 0.5}, -- NodeBox413
			{-0.3125, -0.125, 0.375, -0.1875, 0.1875, 0.5}, -- NodeBox414
			{-0.25, 0.125, 0.375, -0.125, 0.4375, 0.5}, -- NodeBox415
			{0.125, 0.125, 0.375, 0.25, 0.4375, 0.5}, -- NodeBox416
			{0.0625, 0.375, 0.375, 0.1875, 0.6875, 0.5}, -- NodeBox417
			{-0.1875, 0.375, 0.375, -0.0625, 0.6875, 0.5}, -- NodeBox418
			{-0.125, 0.625, 0.375, 0.125, 0.9375, 0.5}, -- NodeBox419
			{-0.0625, 0.625, 0.375, 0.0625, 1.375, 0.5}, -- NodeBox420
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0, 0.5, 2.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:medium_support_"..bridge_colors, {
	description = bridge_colors.." Medium Support",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_medium_support.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_medium_support.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{1.375, -0.5, 0.375, 1.5, 2.5, 0.5}, -- NodeBox1
			{-1.5, -0.5, 0.375, -1.375, 2.5, 0.5}, -- NodeBox2
			{-1.4375, 2.3125, 0.375, -1.3125, 2.4375, 0.5}, -- NodeBox3
			{-1.375, 2.25, 0.375, -1.25, 2.375, 0.5}, -- NodeBox4
			{-1.3125, 2.1875, 0.375, -1.1875, 2.3125, 0.5}, -- NodeBox5
			{-1.25, 2.125, 0.375, -1.125, 2.25, 0.5}, -- NodeBox6
			{-1.1875, 2.0625, 0.375, -1.0625, 2.1875, 0.5}, -- NodeBox7
			{-1.125, 2, 0.375, -1, 2.125, 0.5}, -- NodeBox8
			{-1.0625, 1.9375, 0.375, -0.9375, 2.0625, 0.5}, -- NodeBox9
			{-1, 1.875, 0.375, -0.875, 2, 0.5}, -- NodeBox10
			{-0.9375, 1.8125, 0.375, -0.8125, 1.9375, 0.5}, -- NodeBox11
			{-0.875, 1.75, 0.375, -0.75, 1.875, 0.5}, -- NodeBox12
			{-0.8125, 1.6875, 0.375, -0.6875, 1.8125, 0.5}, -- NodeBox13
			{-0.75, 1.625, 0.375, -0.625, 1.75, 0.5}, -- NodeBox14
			{-0.6875, 1.5625, 0.375, -0.5625, 1.6875, 0.5}, -- NodeBox15
			{-0.625, 1.5, 0.375, -0.5, 1.625, 0.5}, -- NodeBox16
			{-0.5625, 1.4375, 0.375, -0.4375, 1.5625, 0.5}, -- NodeBox17
			{-0.5, 1.375, 0.375, -0.375, 1.5, 0.5}, -- NodeBox18
			{-0.4375, 1.3125, 0.375, -0.3125, 1.4375, 0.5}, -- NodeBox19
			{-0.375, 1.25, 0.375, -0.25, 1.375, 0.5}, -- NodeBox20
			{-0.3125, 1.1875, 0.375, -0.1875, 1.3125, 0.5}, -- NodeBox21
			{-0.25, 1.125, 0.375, -0.125, 1.25, 0.5}, -- NodeBox22
			{-0.1875, 1.0625, 0.375, -0.0625, 1.1875, 0.5}, -- NodeBox23
			{-0.125, 0.875, 0.375, 0.125, 1.125, 0.5}, -- NodeBox24
			{0.0625, 0.8125, 0.375, 0.1875, 0.9375, 0.5}, -- NodeBox25
			{0.125, 0.75, 0.375, 0.25, 0.875, 0.5}, -- NodeBox26
			{0.1875, 0.6875, 0.375, 0.3125, 0.8125, 0.5}, -- NodeBox27
			{0.25, 0.625, 0.375, 0.375, 0.75, 0.5}, -- NodeBox28
			{0.3125, 0.5625, 0.375, 0.4375, 0.6875, 0.5}, -- NodeBox29
			{0.375, 0.5, 0.375, 0.5, 0.625, 0.5}, -- NodeBox30
			{0.4375, 0.4375, 0.375, 0.5625, 0.5625, 0.5}, -- NodeBox31
			{0.5, 0.375, 0.375, 0.625, 0.5, 0.5}, -- NodeBox32
			{0.5625, 0.3125, 0.375, 0.6875, 0.4375, 0.5}, -- NodeBox33
			{0.625, 0.25, 0.375, 0.75, 0.375, 0.5}, -- NodeBox34
			{0.6875, 0.1875, 0.375, 0.8125, 0.3125, 0.5}, -- NodeBox35
			{0.75, 0.125, 0.375, 0.875, 0.25, 0.5}, -- NodeBox36
			{0.8125, 0.0625, 0.375, 0.9375, 0.1875, 0.5}, -- NodeBox37
			{0.875, 0, 0.375, 1, 0.125, 0.5}, -- NodeBox38
			{0.9375, -0.0625, 0.375, 1.0625, 0.0625, 0.5}, -- NodeBox39
			{1, -0.125, 0.375, 1.125, 0, 0.5}, -- NodeBox40
			{1.0625, -0.1875, 0.375, 1.1875, -0.0625, 0.5}, -- NodeBox41
			{1.125, -0.25, 0.375, 1.25, -0.125, 0.5}, -- NodeBox42
			{1.1875, -0.3125, 0.375, 1.3125, -0.1875, 0.5}, -- NodeBox43
			{1.25, -0.375, 0.375, 1.375, -0.25, 0.5}, -- NodeBox44
			{1.3125, -0.4375, 0.375, 1.4375, -0.3125, 0.5}, -- NodeBox45
			{1.3125, 2.3125, 0.375, 1.4375, 2.4375, 0.5}, -- NodeBox3
			{1.25, 2.25, 0.375, 1.375, 2.375, 0.5}, -- NodeBox4
			{1.1875, 2.1875, 0.375, 1.3125, 2.3125, 0.5}, -- NodeBox5
			{1.125, 2.125, 0.375, 1.25, 2.25, 0.5}, -- NodeBox6
			{1.0625, 2.0625, 0.375, 1.1875, 2.1875, 0.5}, -- NodeBox7
			{1, 2, 0.375, 1.125, 2.125, 0.5}, -- NodeBox8
			{0.9375, 1.9375, 0.375, 1.0625, 2.0625, 0.5}, -- NodeBox9
			{0.875, 1.875, 0.375, 1, 2, 0.5}, -- NodeBox10
			{0.8125, 1.8125, 0.375, 0.9375, 1.9375, 0.5}, -- NodeBox11
			{0.75, 1.75, 0.375, 0.875, 1.875, 0.5}, -- NodeBox12
			{0.6875, 1.6875, 0.375, 0.8125, 1.8125, 0.5}, -- NodeBox13
			{0.625, 1.625, 0.375, 0.75, 1.75, 0.5}, -- NodeBox14
			{0.5625, 1.5625, 0.375, 0.6875, 1.6875, 0.5}, -- NodeBox15
			{0.5, 1.5, 0.375, 0.625, 1.625, 0.5}, -- NodeBox16
			{0.4375, 1.4375, 0.375, 0.5625, 1.5625, 0.5}, -- NodeBox17
			{0.375, 1.375, 0.375, 0.5, 1.5, 0.5}, -- NodeBox18
			{0.3125, 1.3125, 0.375, 0.4375, 1.4375, 0.5}, -- NodeBox19
			{0.25, 1.25, 0.375, 0.375, 1.375, 0.5}, -- NodeBox20
			{0.1875, 1.1875, 0.375, 0.3125, 1.3125, 0.5}, -- NodeBox21
			{0.125, 1.125, 0.375, 0.25, 1.25, 0.5}, -- NodeBox22
			{0.0625, 1.0625, 0.375, 0.1875, 1.1875, 0.5}, -- NodeBox23
			{-0.1875, 0.8125, 0.375, -0.0625, 0.9375, 0.5}, -- NodeBox25
			{-0.25, 0.75, 0.375, -0.125, 0.875, 0.5}, -- NodeBox26
			{-0.3125, 0.6875, 0.375, -0.1875, 0.8125, 0.5}, -- NodeBox27
			{-0.375, 0.625, 0.375, -0.25, 0.75, 0.5}, -- NodeBox28
			{-0.4375, 0.5625, 0.375, -0.3125, 0.6875, 0.5}, -- NodeBox29
			{-0.5, 0.5, 0.375, -0.375, 0.625, 0.5}, -- NodeBox30
			{-0.5625, 0.4375, 0.375, -0.4375, 0.5625, 0.5}, -- NodeBox31
			{-0.625, 0.375, 0.375, -0.5, 0.5, 0.5}, -- NodeBox32
			{-0.6875, 0.3125, 0.375, -0.5625, 0.4375, 0.5}, -- NodeBox33
			{-0.75, 0.25, 0.375, -0.625, 0.375, 0.5}, -- NodeBox34
			{-0.8125, 0.1875, 0.375, -0.6875, 0.3125, 0.5}, -- NodeBox35
			{-0.875, 0.125, 0.375, -0.75, 0.25, 0.5}, -- NodeBox36
			{-0.9375, 0.0625, 0.375, -0.8125, 0.1875, 0.5}, -- NodeBox37
			{-1, 0, 0.375, -0.875, 0.125, 0.5}, -- NodeBox38
			{-1.0625, -0.0625, 0.375, -0.9375, 0.0625, 0.5}, -- NodeBox39
			{-1.125, -0.125, 0.375, -1, 0, 0.5}, -- NodeBox40
			{-1.1875, -0.1875, 0.375, -1.0625, -0.0625, 0.5}, -- NodeBox41
			{-1.25, -0.25, 0.375, -1.125, -0.125, 0.5}, -- NodeBox42
			{-1.3125, -0.3125, 0.375, -1.1875, -0.1875, 0.5}, -- NodeBox43
			{-1.375, -0.375, 0.375, -1.25, -0.25, 0.5}, -- NodeBox44
			{-1.4375, -0.4375, 0.375, -1.3125, -0.3125, 0.5}, -- NodeBox45
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-1.5, -0.5, 0, 1.5, 2.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:large_support_"..bridge_colors, {
	description = bridge_colors.." Large Support",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_large_support.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_large_support.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-2.5, -0.5, 0.375, -2.375, 2.5, 0.5}, -- NodeBox46
			{2.375, -0.5, 0.375, 2.5, 2.5, 0.5}, -- NodeBox47
			{2.25, 2.375, 0.375, 2.375, 2.5, 0.5}, -- NodeBox48
			{2.125, 2.3125, 0.375, 2.3125, 2.4375, 0.5}, -- NodeBox49
			{2, 2.25, 0.375, 2.1875, 2.375, 0.5}, -- NodeBox50
			{1.9375, 2.1875, 0.375, 2.0625, 2.3125, 0.5}, -- NodeBox51
			{1.8125, 2.125, 0.375, 2, 2.25, 0.5}, -- NodeBox52
			{1.75, 2.0625, 0.375, 1.875, 2.1875, 0.5}, -- NodeBox53
			{1.625, 2, 0.375, 1.8125, 2.125, 0.5}, -- NodeBox54
			{1.5, 1.9375, 0.375, 1.6875, 2.0625, 0.5}, -- NodeBox55
			{1.4375, 1.875, 0.375, 1.5625, 2, 0.5}, -- NodeBox56
			{1.3125, 1.8125, 0.375, 1.5, 1.9375, 0.5}, -- NodeBox57
			{1.25, 1.75, 0.375, 1.375, 1.875, 0.5}, -- NodeBox58
			{1.125, 1.6875, 0.375, 1.3125, 1.8125, 0.5}, -- NodeBox59
			{1, 1.625, 0.375, 1.1875, 1.75, 0.5}, -- NodeBox60
			{0.9375, 1.5625, 0.375, 1.0625, 1.6875, 0.5}, -- NodeBox61
			{0.8125, 1.5, 0.375, 1, 1.625, 0.5}, -- NodeBox62
			{0.75, 1.4375, 0.375, 0.875, 1.5625, 0.5}, -- NodeBox63
			{0.625, 1.375, 0.375, 0.8125, 1.5, 0.5}, -- NodeBox64
			{0.5, 1.3125, 0.375, 0.6875, 1.4375, 0.5}, -- NodeBox65
			{0.4375, 1.25, 0.375, 0.5625, 1.375, 0.5}, -- NodeBox66
			{0.3125, 1.1875, 0.375, 0.5, 1.3125, 0.5}, -- NodeBox67
			{0.25, 1.125, 0.375, 0.375, 1.25, 0.5}, -- NodeBox68
			{0.125, 1.0625, 0.375, 0.3125, 1.1875, 0.5}, -- NodeBox69
			{0, 1, 0.375, 0.1875, 1.125, 0.5}, -- NodeBox70
			{-2.375, -0.5, 0.375, -2.25, -0.375, 0.5}, -- NodeBox71
			{-2.3125, -0.4375, 0.375, -2.125, -0.3125, 0.5}, -- NodeBox72
			{-2.1875, -0.375, 0.375, -2, -0.25, 0.5}, -- NodeBox73
			{-2.0625, -0.3125, 0.375, -1.9375, -0.1875, 0.5}, -- NodeBox74
			{-2, -0.25, 0.375, -1.8125, -0.125, 0.5}, -- NodeBox75
			{-1.875, -0.1875, 0.375, -1.75, -0.0625, 0.5}, -- NodeBox76
			{-1.8125, -0.125, 0.375, -1.625, 0, 0.5}, -- NodeBox77
			{-1.6875, -0.0625, 0.375, -1.5, 0.0625, 0.5}, -- NodeBox78
			{-1.5625, 0, 0.375, -1.4375, 0.125, 0.5}, -- NodeBox79
			{-1.5, 0.0625, 0.375, -1.3125, 0.1875, 0.5}, -- NodeBox80
			{-1.375, 0.125, 0.375, -1.25, 0.25, 0.5}, -- NodeBox81
			{-1.3125, 0.1875, 0.375, -1.125, 0.3125, 0.5}, -- NodeBox82
			{-1.1875, 0.25, 0.375, -1, 0.375, 0.5}, -- NodeBox83
			{-1.0625, 0.3125, 0.375, -0.9375, 0.4375, 0.5}, -- NodeBox84
			{-1, 0.375, 0.375, -0.8125, 0.5, 0.5}, -- NodeBox85
			{-0.875, 0.4375, 0.375, -0.75, 0.5625, 0.5}, -- NodeBox86
			{-0.8125, 0.5, 0.375, -0.625, 0.625, 0.5}, -- NodeBox87
			{-0.6875, 0.5625, 0.375, -0.5, 0.6875, 0.5}, -- NodeBox88
			{-0.5625, 0.625, 0.375, -0.4375, 0.75, 0.5}, -- NodeBox89
			{-0.5, 0.6875, 0.375, -0.3125, 0.8125, 0.5}, -- NodeBox90
			{-0.375, 0.75, 0.375, -0.25, 0.875, 0.5}, -- NodeBox91
			{-0.3125, 0.8125, 0.375, -0.125, 0.9375, 0.5}, -- NodeBox92
			{-0.1875, 0.875, 0.375, 0, 1, 0.5}, -- NodeBox93
			{-2.375, 2.375, 0.375, -2.25, 2.5, 0.5}, -- NodeBox48
			{-2.3125, 2.3125, 0.375, -2.125, 2.4375, 0.5}, -- NodeBox49
			{-2.1875, 2.25, 0.375, -2, 2.375, 0.5}, -- NodeBox50
			{-2.0625, 2.1875, 0.375, -1.9375, 2.3125, 0.5}, -- NodeBox51
			{-2, 2.125, 0.375, -1.8125, 2.25, 0.5}, -- NodeBox52
			{-1.875, 2.0625, 0.375, -1.75, 2.1875, 0.5}, -- NodeBox53
			{-1.8125, 2, 0.375, -1.625, 2.125, 0.5}, -- NodeBox54
			{-1.6875, 1.9375, 0.375, -1.5, 2.0625, 0.5}, -- NodeBox55
			{-1.5625, 1.875, 0.375, -1.4375, 2, 0.5}, -- NodeBox56
			{-1.5, 1.8125, 0.375, -1.3125, 1.9375, 0.5}, -- NodeBox57
			{-1.375, 1.75, 0.375, -1.25, 1.875, 0.5}, -- NodeBox58
			{-1.3125, 1.6875, 0.375, -1.125, 1.8125, 0.5}, -- NodeBox59
			{-1.1875, 1.625, 0.375, -1, 1.75, 0.5}, -- NodeBox60
			{-1.0625, 1.5625, 0.375, -0.9375, 1.6875, 0.5}, -- NodeBox61
			{-1, 1.5, 0.375, -0.8125, 1.625, 0.5}, -- NodeBox62
			{-0.875, 1.4375, 0.375, -0.75, 1.5625, 0.5}, -- NodeBox63
			{-0.8125, 1.375, 0.375, -0.625, 1.5, 0.5}, -- NodeBox64
			{-0.6875, 1.3125, 0.375, -0.5, 1.4375, 0.5}, -- NodeBox65
			{-0.5625, 1.25, 0.375, -0.4375, 1.375, 0.5}, -- NodeBox66
			{-0.5, 1.1875, 0.375, -0.3125, 1.3125, 0.5}, -- NodeBox67
			{-0.375, 1.125, 0.375, -0.25, 1.25, 0.5}, -- NodeBox68
			{-0.3125, 1.0625, 0.375, -0.125, 1.1875, 0.5}, -- NodeBox69
			{-0.1875, 1, 0.375, -0, 1.125, 0.5}, -- NodeBox70
			{2.25, -0.5, 0.375, 2.375, -0.375, 0.5}, -- NodeBox71
			{2.125, -0.4375, 0.375, 2.3125, -0.3125, 0.5}, -- NodeBox72
			{2, -0.375, 0.375, 2.1875, -0.25, 0.5}, -- NodeBox73
			{1.9375, -0.3125, 0.375, 2.0625, -0.1875, 0.5}, -- NodeBox74
			{1.8125, -0.25, 0.375, 2, -0.125, 0.5}, -- NodeBox75
			{1.75, -0.1875, 0.375, 1.875, -0.0625, 0.5}, -- NodeBox76
			{1.625, -0.125, 0.375, 1.8125, 0, 0.5}, -- NodeBox77
			{1.5, -0.0625, 0.375, 1.6875, 0.0625, 0.5}, -- NodeBox78
			{1.4375, 0, 0.375, 1.5625, 0.125, 0.5}, -- NodeBox79
			{1.3125, 0.0625, 0.375, 1.5, 0.1875, 0.5}, -- NodeBox80
			{1.25, 0.125, 0.375, 1.375, 0.25, 0.5}, -- NodeBox81
			{1.125, 0.1875, 0.375, 1.3125, 0.3125, 0.5}, -- NodeBox82
			{1, 0.25, 0.375, 1.1875, 0.375, 0.5}, -- NodeBox83
			{0.9375, 0.3125, 0.375, 1.0625, 0.4375, 0.5}, -- NodeBox84
			{0.8125, 0.375, 0.375, 1, 0.5, 0.5}, -- NodeBox85
			{0.75, 0.4375, 0.375, 0.875, 0.5625, 0.5}, -- NodeBox86
			{0.625, 0.5, 0.375, 0.8125, 0.625, 0.5}, -- NodeBox87
			{0.5, 0.5625, 0.375, 0.6875, 0.6875, 0.5}, -- NodeBox88
			{0.4375, 0.625, 0.375, 0.5625, 0.75, 0.5}, -- NodeBox89
			{0.3125, 0.6875, 0.375, 0.5, 0.8125, 0.5}, -- NodeBox90
			{0.25, 0.75, 0.375, 0.375, 0.875, 0.5}, -- NodeBox91
			{0.125, 0.8125, 0.375, 0.3125, 0.9375, 0.5}, -- NodeBox92
			{-0, 0.875, 0.375, 0.1875, 1, 0.5}, -- NodeBox93
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-2.5, -0.5, 0, 2.5, 2.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:truss_superstructure_right_slant"..bridge_colors, {
	description = bridge_colors.." Truss Superstructure Right Slant",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_superstructure_right_slant.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_superstructure_right_slant.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 1.5, 0.0625, 0.5}, -- NodeBox214
			{-0.5, -0.5, 0.375, -0.4375, 2.5, 0.5}, -- NodeBox215
			{1.4375, -0.5, 0.375, 1.5, 2.5, 0.5}, -- NodeBox217
			{-0.5, 2.375, 0.375, 1.5, 2.5, 0.5}, -- NodeBox218
			{-0.4375, 2.25, 0.375, -0.3125, 2.375, 0.5}, -- NodeBox219
			{-0.375, 2.1875, 0.375, -0.25, 2.3125, 0.5}, -- NodeBox220
			{-0.3125, 2.0625, 0.375, -0.1875, 2.25, 0.5}, -- NodeBox221
			{-0.25, 2, 0.375, -0.125, 2.125, 0.5}, -- NodeBox222
			{-0.1875, 1.9375, 0.375, -0.0625, 2.0625, 0.5}, -- NodeBox223
			{-0.125, 1.875, 0.375, 0, 2, 0.5}, -- NodeBox224
			{-0.0625, 1.75, 0.375, 0.0625, 1.9375, 0.5}, -- NodeBox225
			{0, 1.6875, 0.375, 0.125, 1.8125, 0.5}, -- NodeBox226
			{0.0625, 1.625, 0.375, 0.1875, 1.75, 0.5}, -- NodeBox227
			{0.125, 1.5625, 0.375, 0.25, 1.6875, 0.5}, -- NodeBox228
			{0.1875, 1.4375, 0.375, 0.3125, 1.625, 0.5}, -- NodeBox229
			{0.25, 1.375, 0.375, 0.375, 1.5, 0.5}, -- NodeBox230
			{0.3125, 1.3125, 0.375, 0.4375, 1.4375, 0.5}, -- NodeBox231
			{0.375, 1.25, 0.375, 0.5, 1.375, 0.5}, -- NodeBox232
			{0.4375, 1.125, 0.375, 0.5625, 1.3125, 0.5}, -- NodeBox233
			{0.5, 1.0625, 0.375, 0.625, 1.1875, 0.5}, -- NodeBox234
			{0.5625, 1, 0.375, 0.6875, 1.125, 0.5}, -- NodeBox235
			{0.625, 0.9375, 0.375, 0.75, 1.0625, 0.5}, -- NodeBox236
			{0.6875, 0.8125, 0.375, 0.8125, 1, 0.5}, -- NodeBox237
			{0.75, 0.75, 0.375, 0.875, 0.875, 0.5}, -- NodeBox238
			{0.8125, 0.6875, 0.375, 0.9375, 0.8125, 0.5}, -- NodeBox239
			{0.875, 0.625, 0.375, 1, 0.75, 0.5}, -- NodeBox240
			{0.9375, 0.5, 0.375, 1.0625, 0.6875, 0.5}, -- NodeBox241
			{1, 0.4375, 0.375, 1.125, 0.5625, 0.5}, -- NodeBox242
			{1.0625, 0.375, 0.375, 1.1875, 0.5, 0.5}, -- NodeBox243
			{1.125, 0.3125, 0.375, 1.25, 0.4375, 0.5}, -- NodeBox244
			{1.1875, 0.1875, 0.375, 1.3125, 0.375, 0.5}, -- NodeBox245
			{1.25, 0.125, 0.375, 1.375, 0.25, 0.5}, -- NodeBox246
			{1.3125, 0.0625, 0.375, 1.4375, 0.1875, 0.5}, -- NodeBox247
			{1.375, 0, 0.375, 1.5, 0.125, 0.5}, -- NodeBox248
			{-0.4375, 2.3125, 0.375, -0.3125, 2.4375, 0.5}, -- NodeBox249
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 2.5, 0.5},
		},
    },
	collision_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 2.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("bridges:truss_superstructure_left_slant"..bridge_colors, {
	description = bridge_colors.." Truss Superstructure Left Slant",
	drawtype = "nodebox",
	tiles = {"bridge_"..bridge_colors..".png"},
	inventory_image = "bridge_"..bridge_colors..".png^bridge_superstructure_left_slant.png^[makealpha:255,126,126",
	wield_image = "bridge_"..bridge_colors..".png^bridge_superstructure_left_slant.png^[makealpha:255,126,126",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 1.5, 0.0625, 0.5}, -- NodeBox214
			{-0.5, -0.5, 0.375, -0.4375, 2.5, 0.5}, -- NodeBox215
			{1.4375, -0.5, 0.375, 1.5, 2.5, 0.5}, -- NodeBox217
			{-0.5, 2.375, 0.375, 1.5, 2.5, 0.5}, -- NodeBox218
			{1.3125, 2.25, 0.375, 1.4375, 2.375, 0.5}, -- NodeBox219
			{1.25, 2.1875, 0.375, 1.375, 2.3125, 0.5}, -- NodeBox220
			{1.1875, 2.0625, 0.375, 1.3125, 2.25, 0.5}, -- NodeBox221
			{1.125, 2, 0.375, 1.25, 2.125, 0.5}, -- NodeBox222
			{1.0625, 1.9375, 0.375, 1.1875, 2.0625, 0.5}, -- NodeBox223
			{1, 1.875, 0.375, 1.125, 2, 0.5}, -- NodeBox224
			{0.9375, 1.75, 0.375, 1.0625, 1.9375, 0.5}, -- NodeBox225
			{0.875, 1.6875, 0.375, 1, 1.8125, 0.5}, -- NodeBox226
			{0.8125, 1.625, 0.375, 0.9375, 1.75, 0.5}, -- NodeBox227
			{0.75, 1.5625, 0.375, 0.875, 1.6875, 0.5}, -- NodeBox228
			{0.6875, 1.4375, 0.375, 0.8125, 1.625, 0.5}, -- NodeBox229
			{0.625, 1.375, 0.375, 0.75, 1.5, 0.5}, -- NodeBox230
			{0.5625, 1.3125, 0.375, 0.6875, 1.4375, 0.5}, -- NodeBox231
			{0.5, 1.25, 0.375, 0.625, 1.375, 0.5}, -- NodeBox232
			{0.4375, 1.125, 0.375, 0.5625, 1.3125, 0.5}, -- NodeBox233
			{0.375, 1.0625, 0.375, 0.5, 1.1875, 0.5}, -- NodeBox234
			{0.3125, 1, 0.375, 0.4375, 1.125, 0.5}, -- NodeBox235
			{0.25, 0.9375, 0.375, 0.375, 1.0625, 0.5}, -- NodeBox236
			{0.1875, 0.8125, 0.375, 0.3125, 1, 0.5}, -- NodeBox237
			{0.125, 0.75, 0.375, 0.25, 0.875, 0.5}, -- NodeBox238
			{0.0625, 0.6875, 0.375, 0.1875, 0.8125, 0.5}, -- NodeBox239
			{0, 0.625, 0.375, 0.125, 0.75, 0.5}, -- NodeBox240
			{-0.0625, 0.5, 0.375, 0.0625, 0.6875, 0.5}, -- NodeBox241
			{-0.125, 0.4375, 0.375, 0, 0.5625, 0.5}, -- NodeBox242
			{-0.1875, 0.375, 0.375, -0.0625, 0.5, 0.5}, -- NodeBox243
			{-0.25, 0.3125, 0.375, -0.125, 0.4375, 0.5}, -- NodeBox244
			{-0.3125, 0.1875, 0.375, -0.1875, 0.375, 0.5}, -- NodeBox245
			{-0.375, 0.125, 0.375, -0.25, 0.25, 0.5}, -- NodeBox246
			{-0.4375, 0.0625, 0.375, -0.3125, 0.1875, 0.5}, -- NodeBox247
			{-0.5, 0, 0.375, -0.375, 0.125, 0.5}, -- NodeBox248
			{1.375, 2.3125, 0.375, 1.5, 2.4375, 0.5}, -- NodeBox249
		},
	},
	selection_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 2.5, 0.5},
		},
    },
	collision_box = {
		type = "fixed",
        fixed = {
            {-0.5, -0.5, 0.375, 1.5, 2.5, 0.5},
		},
    },
	groups = {cracky=3},
	sounds = default.node_sound_metal_defaults(),
})

end
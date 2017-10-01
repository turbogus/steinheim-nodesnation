local function bloc_blocks_stairs(nodename, def)	
	local mod, name = string.match (nodename,"(.+):(.+)")
	minetest.register_node(nodename,def)
	if minetest.get_modpath("moreblocks") then
		stairsplus:register_all(
			mod,
			name,
			nodename,
			def
		)
	end	
end

--Les cheminées de homedecor (conflit avec les slabs de moreblocs)
minetest.register_craft({
	output = 'fake_fire:chimney_top_stone',
	recipe = {
		{'default:stone','default:torch','default:stone'},
	}
})
minetest.register_craft({
	output = 'fake_fire:chimney_top_sandstone',
	recipe = {
		{'default:sandstone','default:torch','default:sandstone'},
	}
})


-- Bloc distributeur de neige
minetest.register_node("blocs:snow_dispenser", {
	description = "Snow Dispenser",
	tiles = {"snow_dispenser.png"},
	is_ground_content = false,
	groups = {cracky=1},
	sounds = ({
		footstep = {name="poc", gain=0.25},
		dug = {name="poc", gain=0.75},
	}),
	on_punch = function(p, node, player, pointed_thing)
		player:get_inventory():add_item('main', 'default:snow 9')
	end,
})

minetest.register_craft({
	output = 'blocs:snow_dispenser',
	recipe = {
		{'group:wood','default:gravel','group:wood'},
		{'group:wood','bucket:bucket_water','group:wood'},
		{'group:wood','group:wood','group:wood'},
	}
})

-- Bloc distributeur de glace
minetest.register_node("blocs:ice_dispenser", {
	description = "Ice Dispenser",
	tiles = {"ice_dispenser.png"},
	is_ground_content = false,
	groups = {cracky=1},
	sounds = ({
		footstep = {name="poc", gain=0.25},
		dug = {name="poc", gain=0.75},
	}),
	on_punch = function(p, node, player, pointed_thing)
		 player:get_inventory():add_item('main', 'default:ice 9')
	end,
})

minetest.register_craft({
	output = 'blocs:ice_dispenser',
	recipe = {
		{'group:wood','default:snowblock','group:wood'},
		{'group:wood','bucket:bucket_water','group:wood'},
		{'group:wood','group:wood','group:wood'},
	}
})

-- Raccourcie pour le sand et inverse
minetest.register_craft({
	output = 'default:gravel 3',
	recipe = {
		{'default:cobble'},
	}
})
minetest.register_craft({
	output = 'default:sand 3',
	recipe = {
		{'default:gravel'},
	}
})
minetest.register_craft({
	output = 'default:gravel',
	recipe = {
		{'group:sand'},
		{'group:sand'},
		{'group:sand'},
	}
})
minetest.register_craft({
	output = 'default:cobble',
	recipe = {
		{'default:gravel'},
		{'default:gravel'},
		{'default:gravel'},
	}
})

-- Raccourcie pour les clay_lump
minetest.register_craft({
	output = 'default:clay_lump 4',
	recipe = {
		{'group:sand'},
		{'default:dirt'},
		{'bucket:bucket_water'},
	},
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}},
})

-- Création de clay quand on pose un bloc de gravel dans l'eau
default.gen_clay = function(pos)	
	minetest.set_node(pos, {name="default:clay"})
end
minetest.register_abm({
	nodenames = {"default:gravel"},
	neighbors = {"default:water_source"},
	interval = 3,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.gen_clay(pos, node, active_object_count, active_object_count_wider)
	end,
})
minetest.register_abm({
	nodenames = {"default:gravel"},
	neighbors = {"default:water_flowing"},
	interval = 3,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.gen_clay(pos, node, active_object_count, active_object_count_wider)
	end,
})

-- Création de stone with iron ou stone with copper quand on pose un bloc de gravel dans la lave (1 chance sur 3)
default.gen_iron = function(pos)	
	minetest.set_node(pos, {name="default:stone_with_iron"})
end
minetest.register_abm({
	nodenames = {"default:gravel"},
	neighbors = {"default:lava_source"},
	interval = 3,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.gen_iron(pos, node, active_object_count, active_object_count_wider)
	end,
})
minetest.register_abm({
	nodenames = {"default:gravel"},
	neighbors = {"default:lava_flowing"},
	interval = 3,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.gen_iron(pos, node, active_object_count, active_object_count_wider)
	end,
})
default.gen_copper = function(pos)	
	minetest.set_node(pos, {name="default:stone_with_copper"})
end
minetest.register_abm({
	nodenames = {"default:gravel"},
	neighbors = {"default:lava_source"},
	interval = 3,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.gen_copper(pos, node, active_object_count, active_object_count_wider)
	end,
})
minetest.register_abm({
	nodenames = {"default:gravel"},
	neighbors = {"default:lava_flowing"},
	interval = 3,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.gen_copper(pos, node, active_object_count, active_object_count_wider)
	end,
})

--récupération de dirt lump avec la dirt
minetest.register_craftitem("blocs:dirt_lump", {
	description = "Lump of Dirt",
	inventory_image = "dirt_lump.png",
})
minetest.register_craft({
	output = 'blocs:dirt_lump 4',
	recipe = {
		{'default:dirt'},
	}
})
--inverse
minetest.register_craft({
	output = 'default:dirt',
	recipe = {
		{'blocs:dirt_lump','blocs:dirt_lump'},
		{'blocs:dirt_lump','blocs:dirt_lump'},
	}
})

--Cuisson des dirt lump pour obtenir des dirt brick
minetest.register_craftitem("blocs:dirt_brick", {
	description = "Brick of Dirt Rusted",
	inventory_image = "dirt_brick.png",
})
minetest.register_craft({
	type = "cooking",
	output = "blocs:dirt_brick",
	recipe = "blocs:dirt_lump",
})

--Bloc de brique de terre avec les briques de terre
bloc_blocks_stairs("blocs:dirt_brickblock", {
	description = "bloc of dirt bricks",
	tiles = {"dirt_brickblock.png"},
	groups = {cracky=3},
	sounds = ({
		footstep = {name="poc", gain=0.25},
		dug = {name="poc", gain=0.75},
	}),
})
minetest.register_craft({
	output = 'blocs:dirt_brickblock',
	recipe = {
		{'blocs:dirt_brick','blocs:dirt_brick'},
		{'blocs:dirt_brick','blocs:dirt_brick'},
	}
})

--torchis
minetest.register_craft({
	output = 'blocs:torchis 4',
	recipe = {
		{"default:papyrus"},
		{"blocs:dirt_lump"},
		{"bucket:bucket_water"},
	},
	replacements = {
		{"bucket:bucket_water", "bucket:bucket_empty"}
	},
})
bloc_blocks_stairs("blocs:torchis", {
	description = "torchis",
	tiles = {"torchis.png"},
	is_ground_content = false,
	groups = {cracky=2,crumbly=3},
	sounds = ({
		footstep = {name="poc", gain=0.25},
		dug = {name="poc", gain=0.75},
	}),
})
--charbon en cuissant du bois:
minetest.register_craft({
	type = "cooking",
	output = "default:coal_lump",
	recipe = "group:tree",
})

-- Pièce en cuivre
minetest.register_craft({
	output = 'blocs:piece_cuivre 9',
	recipe = {
		{'default:copper_ingot'},
	}
})
minetest.register_craftitem("blocs:piece_cuivre", {
	description = "Piece en cuivre",
	inventory_image = "piece_cuivre.png",
})
 
--Bloc commerçant pour les pousses de sapin
minetest.register_node("blocs:commerce", {
	description = "bloc commerçant",
	tiles = {"commerce.png"},
	is_ground_content = false,
	groups = {cracky=1},
	sounds = ({
		footstep = {name="poc", gain=0.25},
		dug = {name="poc", gain=0.75},
	}),
	on_punch = function(p, node, player, pointed_thing)
		local nomDuJoueur=player:get_player_name()
		if player:get_inventory():contains_item('main', 'blocs:piece_cuivre') then
			player:get_inventory():remove_item('main', 'blocs:piece_cuivre')
			player:get_inventory():add_item('main', 'default:pine_sapling')
		else
			minetest.chat_send_player(nomDuJoueur, "Vous n'avez pas assez de pieces de cuivre! (cout : 1pc)")
		end
	end,
})

-- Récupération aléatoire de pine sapling dans la terre
--[[minetest.override_item("default:dirt", {
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:pine_sapling"},
				rarity = 40,
			},
			{
				items = {"default:dirt"},
			}
		}
	}
})

minetest.override_item("default:dirt_with_grass", {
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:pine_sapling"},
				rarity = 40,
			},
			{
				items = {"default:dirt"},
			}
		}
	}
})]]--

--craft des npcfs

--[[
--La potion pour créer des npc (s'obtient en cuisant de la nether glow stone
minetest.register_craft({
	type = "cooking",
	output = "blocs:life_potion",
	recipe = "nether:glowstone",
})
minetest.register_craftitem("blocs:life_potion", {
	description = "Potion to make npc",
	inventory_image = "life_potion.png",
})

--Le garde npcf
minetest.register_craft({
	output = 'npcf:guard_npc_spawner',
	recipe = {
		{'default:sword_diamond'},
		{'blocs:life_potion'},
		{'default:mese'},
	}
})

--Le npcf qui donne des infos
minetest.register_craft({
	output = 'npcf:info_npc_spawner',
	recipe = {
		{'default:bookshelf'},
		{'blocs:life_potion'},
		{'default:mese'},
	}
})

--le vendeur npcf
minetest.register_craft({
	output = 'npcf:trade_npc_spawner',
	recipe = {
		{"default:diamond"},
		{'blocs:life_potion'},
		{'default:mese'},
	}
})

--le constructeur npcf
minetest.register_craft({
	output = 'npcf:builder_npc_spawner',
	recipe = {
		{"default:pick_diamond"},
		{'blocs:life_potion'},
		{'default:mese'},
	}
})
]]--


--Fils mesecons avec le cuivre !
minetest.register_craft({
	type = "cooking",
	output = "mesecons:wire_10100000_off 9",
	recipe = "default:copper_ingot",
})
minetest.register_craft({
	type = "cooking",
	output = "mesecons:wire_10100000_off 81",
	recipe = "default:copperblock",
})

--Seau avec les copper ingot
minetest.register_craft({
	output = 'bucket:bucket_empty',
	recipe = {
		{"default:copper_ingot","","default:copper_ingot"},
		{"","default:copper_ingot",""},
	}
})

--[[
--Le 31/12/2016: alias pour virer les xdecor_tiles !!!!!
minetest.register_alias("xdecor:stone_tile", "moreblocks:stone_tile")
minetest.register_alias("xdecor:stone_tiles", "moreblocks:stone_tile")
minetest.register_alias("xdecor:wood_tiles", "xdecor:wood_tile")

--Le 15/01/2017: craft pour virer un autre probleme de xdecor !!!!
minetest.register_craft({
	output = 'moreblocks:split_stone_tile',
	recipe = {
		{"xdecor:stone_tile"},
	}
})
--]]
--alias pour virer les soucis de rail!
minetest.register_alias("default:rail", "carts:rail")


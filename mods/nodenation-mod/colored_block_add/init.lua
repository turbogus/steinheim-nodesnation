--[[
Codé par Jat sous licence GPL v3 ou superieur
Graphisme par Onyx sous WTFPL
--]]

Colored_Block_Create(
	"colored_block_add",
	"sand",
	{
		"default:sand",
		"default:desert_sand",
		"default:silver_sand"
	},
	{
		groups = {crumbly = 3, falling_node = 1, sand = 1},
		sounds = default.node_sound_sand_defaults(),
		tiles = {"colored_block_add_sand.png"},
	},
	{}	
)
Colored_Block_Create(
	"colored_block_add",
	"sandstone",
	{
		"default:sandstone",
		"default:desert_sandstone",
		"default:silver_sandstone"
	},
	{
		groups = {crumbly = 1, cracky = 3},
		sounds = default.node_sound_stone_defaults(),
		tiles = {"colored_block_add_sandstone.png"},
	},
	{moreblocks = true, angledwalls = true}
)
Colored_Block_Create(
	"colored_block_add",
	"sandstonebrick",
	{
		"default:sandstonebrick",
		"default:desert_sandstone_brick",
		"default:silver_sandstone_brick"
	},
	{
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
		tiles = {"colored_block_add_sandstonebrick.png"},
	},
	{moreblocks = true, angledwalls = true}
)
Colored_Block_Create(
	"colored_block_add",
	"stonebrick",
	{
		"default:stonebrick",
		"default:desert_stonebrick"
	},
	{
		groups = {cracky = 2, stone = 1},
		sounds = default.node_sound_stone_defaults(),
		tiles = {"colored_block_add_stonebrick.png"},
	},
	{moreblocks = true, letters = true, angledwalls = true}
)
Colored_Block_Create(
	"colored_block_add",
	"clay",
	{"default:clay"},
	{
		groups = {crumbly = 3},
		sounds = default.node_sound_dirt_defaults(),
		tiles = {"colored_block_add_clay.png"},
	},
	{moreblocks = true, angledwalls = true, letters = true}
)






--[[
Colored_Block_Create(
	{"default","default","default","default","default"},
	{"wood","acacia_wood","aspen_wood","junglewood","pinewood"},
	{
		groups = {},
		sounds = default.node_sound_wood_defaults(),
		tiles = {"colored_block_add_stonebrick.png"},
	},
	{moreblocks = true, letters = true, angledwalls = true}
)
--]]

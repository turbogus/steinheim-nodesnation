local function Conversion(ModInput, NameInput, ModOutput, NameOutput, TableColour)
	local NameInputMoreblocks = false
	local NameInputLetter = false

	if type(NameInput) == "table" then
		NameInputLetter = NameInput.letter
		NameInputMoreblocks = NameInput.moreblocks 
		NameInput = NameInput.default
	end

	for Mod,ConverseColour in pairs(TableColour) do
		for index,color in pairs(ConverseColour) do
			if table.getn(ConverseColour[index]) == 3 then
				minetest.register_lbm({
					name = "colored_block_alias:"..ModInput..NameInput..color[1]..ModOutput..NameOutput..color[2],
					label = "Convert",
					run_at_every_load = true,
					nodenames = ModInput..":"..NameInput..color[1],
					action = function(pos, node)
					
						minetest.swap_node(pos, {name = ModOutput..":"..NameOutput.."_"..color[2], param2 = color[3]+node.param2})

					end
				})
			
				for typenode,_ in pairs(stairsplus.defs) do
					for alternate,_ in pairs(stairsplus.defs[typenode]) do
						minetest.register_lbm({
							name = "colored_block_alias:"..ModInput..typenode.."_"..(NameInputMoreblocks or NameInput)..color[1]..alternate..ModOutput..typenode..NameOutput..color[2]..alternate,
							label = "Convert",
							run_at_every_load = true,
							nodenames = ModInput..":"..typenode.."_"..(NameInputMoreblocks or NameInput)..color[1]..alternate,
							action = function(pos, node)
							
								minetest.swap_node(pos, {name = ModOutput..":"..typenode.."_"..NameOutput.."_"..color[2]..alternate, param2 = color[3]+node.param2})

							end
						})
						
					end
				end
				
				local prefix_list={
					"angledwalls:angled_wall",
					"angledwalls:low_angled_wall",
					"angledwalls:corner"
				}
				
				for index,prefix in pairs(prefix_list) do
					local name1 = prefix..ModInput..color[1]
					local name2 = prefix..NameOutput.."_"..color[2]
					minetest.register_lbm({
						name = "colored_block_alias:"..NameOutput..color[1]..NameOutput..color[2]..index,
						label = "Convert",
						run_at_every_load = true,
						nodenames = name1,
						action = function(pos, node)
							minetest.swap_node(pos, {name = name2, param2 = color[3]+node.param2})
						end
					})
				end
			else
				if Mod == "default" then
					minetest.register_lbm({
						name = "colored_block_alias:"..ModInput..NameInput..color[1]..ModOutput..NameOutput..color[1],
						label = "Convert",
						run_at_every_load = true,
						nodenames = ModInput..":"..NameInput..color[1],
						action = function(pos, node)
							minetest.swap_node(pos, {name = ModOutput..":"..NameOutput, param2 = color[2]})
						end
					})
				else
					local Table_Letters = {
						{"al", "au", "a", "A"},
						{"bl", "bu", "b", "B"},
						{"cl", "cu", "c", "C"},
						{"dl", "du", "d", "D"},
						{"el", "eu", "e", "E"},
						{"fl", "fu", "f", "F"},
						{"gl", "gu", "g", "G"},
						{"hl", "hu", "h", "H"},
						{"il", "iu", "i", "I"},
						{"jl", "ju", "j", "J"},
						{"kl", "ku", "k", "K"},
						{"ll", "lu", "l", "L"},
						{"ml", "mu", "m", "M"},
						{"nl", "nu", "n", "N"},
						{"ol", "ou", "o", "O"},
						{"pl", "pu", "p", "P"},
						{"ql", "qu", "q", "Q"},
						{"rl", "ru", "r", "R"},
						{"sl", "su", "s", "S"},
						{"tl", "tu", "t", "T"},
						{"ul", "uu", "u", "U"},
						{"vl", "vu", "v", "V"},
						{"wl", "wu", "w", "W"},
						{"xl", "xu", "x", "X"},
						{"yl", "yu", "y", "Y"},
						{"zl", "zu", "z", "Z"},
					}
				
				
					for _,row in pairs(Table_Letters) do
						minetest.register_lbm({
							name = "colored_block_alias:"..ModInput..(NameInputLetter or NameInput)..color[1]..ModOutput..NameOutput..color[1].."letter_maj_"..row[1],
							label = "Convert",
							run_at_every_load = true,
							nodenames = ModInput..":"..(NameInputLetter or NameInput)..color[1].."_letter_"..row[1],
							action = function(pos, node)
								minetest.swap_node(pos, {name = ModOutput..":"..NameOutput.."_letter_"..row[1], param2 = color[2]+node.param2})
							end
						})
						
						minetest.register_lbm({
							name = "colored_block_alias:"..ModInput..(NameInputLetter or NameInput)..color[1]..ModOutput..NameOutput..color[1].."letters_min_"..row[2],
							label = "Convert",
							run_at_every_load = true,
							nodenames = ModInput..":"..(NameInputLetter or NameInput)..color[1].."_letter_"..row[2],
							action = function(pos, node)
								minetest.swap_node(pos, {name = ModOutput..":"..NameOutput.."_letter_"..row[2], param2 = color[2]+node.param2})
							end
						})						
					end
					
						--[[
						colouredstonebricks:black_letter_au
						colored_block:stonebrick_letter_au
						--]]
						--[[
						bakedclay:baked_clay_black_letter_au
						colored_block:clay_letter_au
						--]]
					
					
				end
			end
		end
	end


end



Conversion(
	"colouredstonebricks",
	"",
	"colored_block_add",
	"stonebrick",
	{
		default = {
			{"yellow", "yellow", 32},
			{"white","grey", 32},
			{"red", "red", 64},
			{"purple", "sapphire", 160},
			{"pink", "red", 24},
			{"orange", "orange", 96},
			{"grey", "grey", 64},
			{"green", "green", 32},
			{"dark_pink", "magenta", 32},
			{"dark_grey", "grey", 96},
			{"dark_green", "green", 64},
			{"dark_blue", "azure", 64},
			{"cyan", "cyan", 96},
			{"brown", "vermilion", 224},
			{"black", "grey", 128}
		},
		letters = {
			{"yellow", 80},
			{"white", 0},
			{"red", 64},
			{"purple", 232},
			{"pink", 120},
			{"orange", 72},
			{"grey", 8},
			{"green", 88},
			{"dark_pink", 184},
			{"dark_grey", 16},
			{"dark_green", 216},
			{"dark_blue", 40},
			{"cyan", 96},
			{"brown", 200},
			{"black", 24}
		}
	}
)


Conversion(
	"bakedclay",
	{default = "", moreblocks ="baked_clay_", letter ="baked_clay_"},
	"colored_block_add",
	"clay",
	{
		default={
			{"yellow", "amber", 64},
			{"white", "grey", 32},
			{"violet", "violet", 160},
			{"red", "red", 160},
			{"pink", "crimson", 0},
			{"orange", "orange", 64},
			{"magenta", "violet", 0},
			{"grey", "grey", 64},
			{"green", "lime", 160},
			{"dark_grey", "grey", 96},
			{"dark_green", "chartreuse", 224},
			{"cyan", "cyan", 160},
			{"brown", "orange", 224},
			{"blue", "cerulean", 224},
			{"black", "grey", 128},
		},

		letters={
			{"yellow", 208},
			{"white", 0},
			{"violet", 248},
			{"red", 192},
			{"pink", 120},
			{"orange", 72},
			{"magenta", 184},
			{"grey", 8},
			{"green", 152},
			{"dark_grey", 16},
			{"dark_green", 216},
			{"cyan", 224},
			{"brown", 200},
			{"blue", 240},
			{"black", 24},
		}
	}

)


Conversion(
	"speedwall",
	"sandstone",
	"colored_block_add",
	"sandstone",
	{
		default={
			{"yellow", "yellow", 32},
			{"white", "grey", 32},
			{"violet", "violet", 160},
			{"red", "red", 128},
			{"pink", "red", 64},
			{"orange", "orange", 32},
			{"grey", "grey", 96},
			{"green", "lime", 160},
			{"cyan", "cyan", 96},
			{"brown", "orange", 160},
			{"blue", "azure", 64},
			{"black","grey", 128},
		}
	}
)

Conversion(
	"speedwall",
	"sandstonebrick",
	"colored_block_add",
	"sandstonebrick",

	{
		default={
			{"yellow", "yellow", 32},
			{"white", "grey", 32},
			{"violet", "magenta", 64},
			{"red", "red", 32},
			{"pink", "red", 96},
			{"orange", "orange", 32},
			{"grey", "grey", 64},
			{"green", "green", 64},
			{"cyan", "cyan", 96},
			{"brown", "orange", 96},
			{"blue", "blue", 96},
			{"black", "grey", 128},
		}
	}
)


Conversion(
	"speedwall",
	"sand",
	"colored_block_add",
	"sand",
	{
		default={
			{"yellow", 52},
			{"white", 240},
			{"violet", 42},
			{"red", 120},
			{"pink", 50},
			{"orange", 74 },
			{"grey", 242},
			{"green", 174},
			{"cyan", 60},
			{"brown",170},
			{"blue", 40},
			{"black", 252},
		}
	}
)


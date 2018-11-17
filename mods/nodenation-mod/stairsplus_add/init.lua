local Block = {
	--Nether
	
	"nether:rack",
	"nether:brick",
	"nether:glowstone",
	
	--moreores
	
	"moreores:mithril_block",
	"moreores:silver_block",
	
	--Vehicles
	
	"vehicles:road",
	"vehicles:concrete",
	"vehicles:checker",
	"vehicles:stripe",
	"vehicles:stripe2",
	"vehicles:stripe3",
	"vehicles:stripe4",
	"vehicles:window",
	
	--default
	"default:coalblock",
	"default:clay"
	
}

local function CreationMoreblocks(nodename)
	
	local function CopieTable(Table)	
		return minetest.deserialize(minetest.serialize(Table))
	end
	
	--Definition du block de base
	local BlockDeBase = minetest.registered_nodes[nodename]

	local def = CopieTable(BlockDeBase)
	
	local mod, name = nodename:match("(.*):(.*)")

	for groupname,value in pairs(def.groups) do
		if	groupname ~= "cracky" and
			groupname ~= "choppy" and
			groupname ~="flammable" and
			groupname ~="crumbly" and
			groupname ~="snappy" 
		then
			def.groups.groupname = nil
		end
	end
	
	if mod == "default" then
		mod = "moreblocks"
	end
	
	stairsplus:register_all(
		mod,
		name,
		nodename,
		def
	)

end

for n=1,table.getn(Block) do
	CreationMoreblocks(Block[n])
end

--Conversion Pinewood 

stairsplus:register_alias_all("moreblocks", "pinetree", "moreblocks", "pine_tree")
stairsplus:register_alias_all("moreblocks", "pinewood", "moreblocks", "pine_wood")
stairsplus:register_alias_all("default", "coalblock", "moreblocks", "coalblock")
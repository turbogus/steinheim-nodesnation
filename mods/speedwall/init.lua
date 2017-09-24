--[[

[SPEEDWALL] 
Mod permettant de creer simplement des murs coloré !!!

Crée par turbogus
code et graphisme sous licence GPL v2 ou superieur

]]--

--déclaration de la liste de couleurs ( dyes et differentes couleur de bloc )
local couleurs = {"black","blue","brown","cyan","green","grey","orange","pink","red","violet","white","yellow"}



function CreationDeBlock(couleur, TypeDeBlock, Couper)
	
	--Serilize et de deserialize pour enlever tout lien avec les tables
	function CopieTable(Table)	
		return minetest.deserialize(minetest.serialize(Table))
	end
	
	--Definition du block de base
	local BlockDeBase = minetest.registered_nodes["default:"..TypeDeBlock]
	
	-- Ajoute du groups auquelle il appartien si ce n est pas deja fait
	if not( BlockDeBase["groups"][TypeDeBlock]== 1) then
		BlockDeBase["groups"][TypeDeBlock] = 1
	 end
	
	BlockDeBase = CopieTable(BlockDeBase)
	
	--Craft
	minetest.register_craft({
	output = "speedwall:"..TypeDeBlock..couleur,
	recipe = {
		{"dye:"..couleur},
		{"group:"..TypeDeBlock},
		}
	})
	
	--Conversion en speedwall
	BlockDeBase["description"]= "Bloc de "..TypeDeBlock.." "..couleur
	BlockDeBase["tiles"]={"speedwall_"..TypeDeBlock.."_"..couleur..".png"}
	minetest.register_node("speedwall:"..TypeDeBlock..couleur, BlockDeBase)

	--Retiré le groups	
	BlockDeBase = CopieTable(BlockDeBase)
	BlockDeBase["groups"][TypeDeBlock] = nil

	--Création moreblocks
	if minetest.global_exists("moreblocks") and Couper then	
		stairsplus:register_all("speedwall", TypeDeBlock..couleur, "speedwall:"..TypeDeBlock..couleur, BlockDeBase	)
	end
	
end


for z=1,table.getn(couleurs) do
	CreationDeBlock(couleurs[z],"sand",false)
	CreationDeBlock(couleurs[z],"sandstone",true)
	CreationDeBlock(couleurs[z],"sandstonebrick",true)	
end

minetest.register_alias("simplewall:bitume", "speedwall:sandstoneblack")

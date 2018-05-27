--[[

[SPEEDWALL] 
Mod permettant de creer simplement des murs coloré !!!

Crée par turbogus
code et graphisme sous licence GPL v2 ou superieur

]]--

--déclaration de la liste de couleurs ( dyes et differentes couleur de bloc )
local couleurs = {"black","blue","brown","cyan","green","grey","orange","pink","red","violet","white","yellow"}

local function CreationDeBlock(couleur, TypeDeBlock, BlockDeBase, Couper)
	
	-- Ajoute du groups auquelle il appartien si ce n est pas deja fait
	if not( BlockDeBase["groups"][TypeDeBlock]== 1) then
		BlockDeBase["groups"][TypeDeBlock] = 1
	 end
	
	table.copy(TypeDeBlock)
	
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
	table.copy(TypeDeBlock)
	BlockDeBase["groups"][TypeDeBlock] = nil

	--Création moreblocks
	if minetest.global_exists("moreblocks") and Couper then
		stairsplus:register_all("speedwall", TypeDeBlock..couleur, "speedwall:"..TypeDeBlock..couleur, BlockDeBase)
	end
	
end

for z=1,table.getn(couleurs) do
	CreationDeBlock(
		couleurs[z],
		"sand",
		{
			groups = {crumbly = 3, falling_node = 1, sand = 1},
			sounds = default.node_sound_sand_defaults(),
		},
		false
	)
	CreationDeBlock(
		couleurs[z],
		"sandstone",
		{
			groups = {crumbly = 1, cracky = 3},
			sounds = default.node_sound_stone_defaults(),
		},
		true
	)
	CreationDeBlock(
		couleurs[z],
		"sandstonebrick",
		{
			groups = {cracky = 2},
			sounds = default.node_sound_stone_defaults(),
		},
		true
	)	
end

minetest.register_alias("simplewall:bitume", "speedwall:sandstoneblack")

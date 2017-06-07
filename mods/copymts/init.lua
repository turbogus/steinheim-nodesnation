--Permet de copier le contenu d'un dossier vers un autre dossier
--Créé par turbogus, licence code et graphisme: WTFPL


-- Enter ici les dossiers sources et destination
local src="/home/turbogus/minetest-steinheim-new/worlds/world/schems/"
local dst="/home/turbogus/minetest-nodesnation/worlds/steinheim2/schems/"


-- Le pass (nécessaire pour activer le bloc de copie
minetest.register_craftitem("copymts:pass", {
	description = "Pass to copy mts datas",
	inventory_image = "pass.png",
})

-- Le bloc de copie
minetest.register_node("copymts:bloc", {
	description = "Bloc to copy mts datas",
	tiles = {"bloc.png"},
	groups = {crumbly = 3},
	diggable = false,

	--Copie des fichier d'un dossier vers l'autre en cliquant sur
	-- le bloc en tenant le pass dans les mains
	on_rightclick = function(pos, node, clicker)
		local name = clicker:get_player_name()
		local pass = clicker:get_wielded_item():get_name()
		if pass == "copymts:pass" then
			local cmd = "cp "..src.."* "..dst
			minetest.chat_send_player(name, "Copie des datas en cours...")
			local result = os.execute(cmd)
			if result then
				minetest.chat_send_player(name, "Copie des datas effectuée avec succès.")
			else
				minetest.chat_send_player(name, "Erreur lors de la copie des datas.")
			end
		else
			minetest.chat_send_player(name,"Vous devez prendre le pass dans votre main!")
		end
	end,
})



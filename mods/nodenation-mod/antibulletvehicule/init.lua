--Mod ajouté avec vehicules sur le serveur pour écraser et empécher les crafts des balles et missile

minetest.clear_craft({recipe = {
		{"default:coal_lump", "default:iron_lump"}
	}})
minetest.clear_craft({recipe = {
		{"", "default:steel_ingot", ""},
		{"", "default:torch", ""},
		{"default:stick", "default:coal_lump", "default:stick"}
	}})
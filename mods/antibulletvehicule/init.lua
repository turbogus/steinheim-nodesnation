--Mod ajouté avec vehicules sur le serveur pour écraser et empécher les crafts des balles et missile

minetest.register_craft({
	--output = "vehicles:bullet_item 5",
	output = "default:iron_lump",
	recipe = {
		{"default:coal_lump", "default:iron_lump",},
	}
})

minetest.register_craft({
	output = "default:steel_ingot",
	recipe = {
		{"", "default:steel_ingot", ""},
		{"", "default:torch", ""},
		{"default:stick", "default:coal_lump", "default:stick"}
	}
})
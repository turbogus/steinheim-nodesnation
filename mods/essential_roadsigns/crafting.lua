--[[
ESSENTIAL_ROADSIGNS: crafting recipes

--]]

minetest.register_craft({
	output = "essential_roadsigns:ers_016_50m 1",
	recipe = {
		{" ", " ", " "},
		{"default:steel_ingot", "dye:black", "default:steel_ingot"},
		{" ", " ", " "},
	}
})

minetest.register_craft({
	output = "essential_roadsigns:ers_016_150m 2",
	recipe = {
		{"default:steel_ingot", "dye:black", "default:steel_ingot"},
		{"default:steel_ingot", "dye:black", "default:steel_ingot"},
		{" ", " ", " "},
	}
})

minetest.register_craft({
	output = "essential_roadsigns:ers_016_clp 2",
	recipe = {
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"default:steel_ingot", "dye:black", "default:steel_ingot"},
		{" ", " ", " "},
	}	
})

minetest.register_craft({
	output = "essential_roadsigns:ers_001 4",
	recipe = {
		{"default:steel_ingot", "dye:red", "default:steel_ingot"},
		{"dye:red", "dye:white", "dye:red"},
		{"default:steel_ingot", "dye:red", "default:steel_ingot"},
	}	
})

minetest.register_craft({
	output = "essential_roadsigns:ers_002 1",
	recipe = {
		{" ", "dye:red", " "},
		{" ", "essential_roadsigns:ers_001", " "},
		{" ", " ", " "},
	}
})

minetest.register_craft({
	output = "essential_roadsigns:ers_003 1",
	recipe = {
		{" ", " ", " "},
		{"dye:black", "essential_roadsigns:ers_001", " "},
		{" ", " ", " "},
	}
})

minetest.register_craft({	
	output = "essential_roadsigns:ers_004 1",
	recipe = {
		{" ", " ", " "},
		{" ", "essential_roadsigns:ers_001", "dye:black"},
		{" ", " ", " "},
	}
})

minetest.register_craft({
	output = "essential_roadsigns:ers_005 1",
	recipe = {
		{" ", " ", " "},
		{" ", "essential_roadsigns:ers_001", " "},
		{" ", "dye:black", " "},
	}
})

minetest.register_craft({
	output = "essential_roadsigns:ers_006 1",
	recipe = {
		{" ", "dye:black", " "},
		{" ", "essential_roadsigns:ers_001", " "},
		{" ", " ", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_007_end 4",
		recipe = {
			{"default:steel_ingot", "default:steel_ingot", "dye:black"},
			{"dye:white", "dye:black", "dye:white"},
			{"dye:black", "default:steel_ingot", "default:steel_ingot"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_008 1",
		recipe = {
			{"dye:red", " ", "dye:black"},
			{" ", "essential_roadsigns:ers_001", " "},
			{" ", " ", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_009 1",
		recipe = {
			{" ", " ", "dye:black"},
			{" ", "essential_roadsigns:ers_001 1", " "},
			{"dye:black", " ", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_010 1",
		recipe = {
			{" ", "dye:black", " "},
			{" ", "essential_roadsigns:ers_001", " "},
			{" ", "dye:black", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_011 1",
		recipe = {
			{" ", "dye:black", "dye:black"},
			{" ", "essential_roadsigns:ers_001", " "},
			{"dye:black", "dye:black", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_012 1",
		recipe = {
			{" ", "dye:black", " "},
			{" ", "essential_roadsigns:ers_001", " "},
			{" ", "dye:red", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_013_end 1",
		recipe = {
			{" ", " ", " "},
			{"dye:black", "essential_roadsigns:ers_007_end", " "},
			{" ", " ", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_013 1",
		recipe = {
			{" ", " ", " "},
			{"dye:black", "essential_roadsigns:ers_001", "dye:black"},
			{" ", " ", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_014 4",
		recipe = {
			{" ", "default:steel_ingot", " "},
			{"dye:black", "essential_roadsigns:ers_001", "dye:black"},
			{"default:steel_ingot", " ", "default:steel_ingot"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_014_car_gir 2",
		recipe = {
			{"dye:white", "dye:black", "dye:white"},
			{" ", "essential_roadsigns:ers_001", " "},
			{"dye:black", "dye:white", "dye:black"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_015 1",
		recipe = {
			{" ", "dye:black", " "},
			{" ", "essential_roadsigns:ers_014", " "},
			{" ", "dye:black", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_016 4",
		recipe = {
			{"default:steel_ingot", " ", "default:steel_ingot"},
			{" ", "essential_roadsigns:ers_001", " "},
			{" ", "default:steel_ingot", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_017 1",
		recipe = {
			{" ", "dye:red", " "},
			{"dye:red", "essential_roadsigns:ers_001", "dye:red"},
			{" ", "dye:red", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_018 4",
		recipe = {
			{" ", "default:steel_ingot", " "},
			{"default:steel_ingot", "dye:yellow", "default:steel_ingot"},
			{" ", "default:steel_ingot", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_019 1",
		recipe = {
			{" ", " ", "dye:black"},
			{" ", "essential_roadsigns:ers_018", " "},
			{"dye:black", " ", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_020 1",
		recipe = {
			{" ", " ", "dye:black"},
			{" ", "essential_roadsigns:ers_014", " "},
			{" ", " ", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_021 1",
		recipe = {
			{"dye:black", " ", " "},
			{" ", "essential_roadsigns:ers_014", " "},
			{" ", " ", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_022 1",
		recipe = {
			{" ", " ", "dye:black"},
			{" ", "essential_roadsigns:ers_014", " "},
			{"dye:black", " ", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_023 1",
		recipe = {
			{"dye:black", " ", " "},
			{" ", "essential_roadsigns:ers_014", " "},
			{" ", " ", "dye:black"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_024 1",
		recipe = {
			{" ", " ", " "},
			{" ", "essential_roadsigns:ers_014", " "},
			{"dye:black", "dye:black", "dye:black"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_025 1",
		recipe = {
			{"dye:black", " ", "dye:black"},
			{"dye:black", "essential_roadsigns:ers_014", "dye:black"},
			{"dye:black", " ", "dye:black"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_025_l 1",
		recipe = {
			{" ", "dye:black", "dye:black"},
			{" ", "essential_roadsigns:ers_014", "dye:black"},
			{" ", "dye:black", "dye:black"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_025_r 1",
		recipe = {
			{"dye:black", "dye:black", " "},
			{"dye:black", "essential_roadsigns:ers_014", " "},
			{"dye:black", "dye:black", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_026 1",
		recipe = {
			{" ", "dye:black", " "},
			{" ", "essential_roadsigns:ers_014", " "},
			{"dye:black", "dye:black", "dye:black"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_027 1",
		recipe = {
			{" ", "dye:black", " "},
			{"dye:black", "essential_roadsigns:ers_014", "dye:black"},
			{"dye:black", "dye:blue", "dye:black"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_028 1",
		recipe = {
			{"dye:black", "dye:black", "dye:black"},
			{" ", "essential_roadsigns:ers_014", " "},
			{" ", " ", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_029 1",
		recipe = {
			{" ", "dye:grey", "dye:grey"},
			{"dye:black", "essential_roadsigns:ers_014", " "},
			{"dye:black", "dye:black", "dye:black"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_030 1",
		recipe = {
			{" ", "dye:black", " "},
			{" ", "essential_roadsigns:ers_014", " "},
			{"dye:black", " ", "dye:black"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_031 1",
		recipe = {
			{" ", "dye:black", " "},
			{" ", "essential_roadsigns:ers_014", " "},
			{"dye:black", "dye:white", "dye:black"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_032 1",
		recipe = {
			{" ", " ", " "},
			{"dye:black", "essential_roadsigns:ers_014", "dye:black"},
			{"dye:green", "dye:green", "dye:green"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_033 1",
		recipe = {
			{" ", " ", " "},
			{"dye:black", "essential_roadsigns:ers_014", "dye:black"},
			{"dye:brown", "dye:green", "dye:brown"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_034 1",
		recipe = {
			{" ", " ", "dye:red"},
			{" ", "essential_roadsigns:ers_014", "dye:yellow"},
			{" ", " ", "dye:green"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_035 2",
		recipe = {
			{"dye:black", "dye:white", "dye:black"},
			{"dye:black", "essential_roadsigns:ers_014", "dye:black"},
			{"dye:black", "dye:white", "dye:black"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_036 1",
		recipe = {
			{" ", " ", "dye:black"},
			{"dye:black", "essential_roadsigns:ers_014", "dye:black"},
			{"dye:black", "dye:black", "dye:black"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_037 1",
		recipe = {
			{" ", "dye:black", " "},
			{"dye:black", "essential_roadsigns:ers_014", ""},
			{"dye:black", "dye:blue", "dye:black"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_038 1",
		recipe = {
			{"dye:black", "dye:blue", "dye:blue"},
			{"dye:black", "essential_roadsigns:ers_014", "dye:black"},
			{" ", " ", "dye:black"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_039 1",
		recipe = {
			{" ", " ", " "},
			{"dye:black", "essential_roadsigns:ers_014", " "},
			{"dye:black", "dye:black", "dye:black"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_040 1",
		recipe = {
			{" ", "dye:red", " "},
			{" ", "essential_roadsigns:ers_014", " "},
			{" ", "dye:red", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_041 6",
		recipe = {
			{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
			{"dye:blue", "dye:white", "dye:blue"},
			{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_042 1",
		recipe = {
			{" ", "dye:blue", " "},
			{" ", "essential_roadsigns:ers_041", " "},
			{" ", "dye:white", " "},
	}
})

	minetest.register_craft({
		output = "essential_roadsigns:ers_043 1",
		recipe = {
			{" ", "dye:blue", "dye:red"},
			{" ", "essential_roadsigns:ers_041", " "},
			{"dye:red", "dye:white", ""},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_044 1",
		recipe = {
			{" ", "dye:white", " "},
			{" ", "essential_roadsigns:ers_001", " "},
			{" ", "dye:blue", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_045 1",
		recipe = {
			{" ", " ", " "},
			{"dye:blue", "essential_roadsigns:ers_001", "dye:white"},
			{" ", " ", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_046 1",
		recipe = {
			{" ", " ", " "},
			{"dye:white", "essential_roadsigns:ers_001", "dye:blue"},
			{" ", " ", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_047 1",
		recipe = {
			{"dye:blue", " ", "dye:blue"},
			{" ", "essential_roadsigns:ers_041", " "},
			{"dye:blue", " ", "dye:blue"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_048 1",
		recipe = {
			{"dye:red", " ", "dye:blue"},
			{" ", "essential_roadsigns:ers_001", " "},
			{"dye:blue", " ", "dye:red"},
	}
})	

minetest.register_craft({
		output = "essential_roadsigns:ers_049 1",
		recipe = {
			{"dye:white", "essential_roadsigns:ers_001", "dye:white"},
			{" ", " ", " "},
			{" ", "dye:black", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_050 1",
		recipe = {
			{" ", "dye:black", " "},
			{" ", " ", " "},
			{"dye:white", "essential_roadsigns:ers_001", "dye:white"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_051 1",
		recipe = {
			{" ", "dye:blue", " "},
			{" ", "essential_roadsigns:ers_001", " "},
			{" ", "dye:white", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_052 1",
		recipe = {
			{" ", "dye:red", " "},
			{" ", "essential_roadsigns:ers_041", " "},
			{" ", " ", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_053_end 1",
		recipe = {	
			{" ", " ", "dye:black"},
			{"dye:grey", "essential_roadsigns:ers_007_end", "dye:grey"},
			{"dye:black", " ", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_053 2",
		recipe = {
			{"dye:red", "dye:black", "dye:red"},
			{"dye:white", "essential_roadsigns:ers_001", "dye:white"},
			{" ", "dye:red", " "},
	}
})	
			
minetest.register_craft({
		output = "essential_roadsigns:ers_054 1",
		recipe = {
			{" ", " ", "dye:black"},
			{" ", "essential_roadsigns:ers_007_end", " "},
			{"dye:black", " ", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_055 6",
		recipe = {
			{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
			{"default:steel_ingot", "dye:black", "default:steel_ingot"},
			{"dye:black", "dye:white", "dye:black"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_056 1",
		recipe = {
			{" ", "dye:red", " "},
			{"dye:red", "essential_roadsigns:ers_055", "dye:red"},
			{" ", "dye:red", " "},
	}
})	
			
minetest.register_craft({
		output = "essential_roadsigns:ers_057 1",
		recipe = {
			{" ", "dye:black", " "},
			{" ", "essential_roadsigns:ers_055", " "},
			{" ", "dye:black", " "},
	}
})	
			
minetest.register_craft({
		output = "essential_roadsigns:ers_058 1",
		recipe = {
			{"dye:black", " ", " "},
			{" ", "essential_roadsigns:ers_055", " "},
			{" ", " ", "dye:black"},
	}
})	
	
minetest.register_craft({
		output = "essential_roadsigns:ers_059 1",
		recipe = {
			{" ", " ", "dye:black"},
			{" ", "essential_roadsigns:ers_055", " "},
			{" ", "dye:black", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_060 1",
		recipe = {	
			{" ", "dye:black", " "},
			{" ", "essential_roadsigns:ers_055", " "},
			{"dye:black", "dye:black", "dye:black"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_061 1",
		recipe = {
			{" ", "dye:white", " "},
			{"dye:black", "essential_roadsigns:ers_041", "dye:black"},
			{" ", "dye:white", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_062 1",
		recipe = {
			{" ", "dye:black", " "},
			{" ", "essential_roadsigns:ers_041", " "},
			{" ", "dye:black", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_063 1",
		recipe = {
			{"dye:black", " ", "dye:black"},
			{" ", "essential_roadsigns:ers_041", " "},
			{"dye:black", " ", "dye:black"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_064 1",
		recipe = {
			{" ", "dye:black", " "},
			{" ", "essential_roadsigns:ers_016_150m", " "},
			{" ", " ", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_065 1",
		recipe = {	
			{" ", " ", "dye:black"},
			{"dye:black", "essential_roadsigns:ers_055", " "},
			{"dye:black", " ", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_066 2",
		recipe = {	
			{"dye:black", "dye:black", " "},
			{"dye:black", "essential_roadsigns:ers_055", " "},
			{"dye:black", "dye:blue", "dye:black"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_067 2",
		recipe = {	
			{" ", "dye:yellow", " "},
			{"dye:yellow", "essential_roadsigns:ers_041", "dye:yellow"},
			{" ", "dye:yellow", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_068_l 1",
		recipe = {	
			{" ", "dye:green", " "},
			{"dye:white", "essential_roadsigns:ers_055", " "},
			{" ", "dye:green", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_068_r 1",
		recipe = {	
			{" ", "dye:green", " "},
			{" ", "essential_roadsigns:ers_055", "dye:white"},
			{" ", "dye:green", " "},
	}
})	
				
minetest.register_craft({
		output = "essential_roadsigns:ers_069 1",
		recipe = {			
			{" ", "dye:yellow", " "},
			{" ", "essential_roadsigns:ers_014", " "},
			{"dye:yellow", " ", "dye:yellow"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_070 2",
		recipe = {
			{"dye:white", "dye:white", "dye:white"},
			{" ", "essential_roadsigns:ers_044", " "},
			{"dye:white", "dye:white", "dye:white"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_071_end 2",
		recipe = {	
			{" ", " ", "dye:red"},
			{"dye:black", "essential_roadsigns:ers_064", "dye:black"},
			{"dye:red", " ", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_071 3",
		recipe = {	
			{"dye:red", "dye:red", "dye:red"},
			{"dye:red", "essential_roadsigns:ers_064", "dye:red"},
			{"dye:red", "dye:red", "dye:red"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_072 3",
		recipe = {	
			{"dye:yellow", "dye:yellow", "dye:yellow"},
			{"dye:yellow", "essential_roadsigns:ers_041", "dye:yellow"},
			{"dye:yellow", "dye:yellow", "dye:yellow"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_073 1",
		recipe = {		
			{"dye:black", " ", " "},
			{"dye:black", "essential_roadsigns:ers_064", " "},
			{"dye:black", " ", " "},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_074 1",
		recipe = {	
			{"dye:black", "dye:black", "dye:black"},
			{"dye:yellow", "essential_roadsigns:ers_071", "dye:yellow"},
			{"dye:black", "dye:black", "dye:black"},
	}
})	

minetest.register_craft({
		output = "essential_roadsigns:ers_075 4",
		recipe = {	
			{"dye:blue", "dye:black", "dye:blue"},
			{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
			{"dye:blue", "dye:black", "dye:blue"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_076 1",
		recipe = {	
			{"dye:black", "dye:white", " "},
			{" ", "essential_roadsigns:ers_055", " "},
			{" ", "dye:white", "dye:black"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_077 2",
		recipe = {
			{"dye:white", " ", "dye:white"},
			{"dye:black", "essential_roadsigns:ers_055", "dye:black"},
			{"dye:white", " ", "dye:white"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_078 2",
		recipe = {
			{"dye:white", "dye:white", "dye:black"},
			{"dye:white", "essential_roadsigns:ers_055", "dye:white"},
			{"dye:black", "dye:white", "dye:white"},
	}
})	

minetest.register_craft({
		output = "essential_roadsigns:ers_079_end 2",
		recipe = {
			{" ", "dye:white", "dye:red"},
			{"dye:white", "essential_roadsigns:ers_041", "dye:white"},
			{"dye:red", " ", "dye:white"},
	}
})

minetest.register_craft({
		output = "essential_roadsigns:ers_079 2",
		recipe = {	
			{" ", "dye:white", " "},
			{"dye:white", "essential_roadsigns:ers_041", "dye:white"},
			{"dye:white", " ", "dye:white"},
	}
})	
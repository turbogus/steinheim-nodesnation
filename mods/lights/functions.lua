--************************************************************************************
--* FUNCTIONS                                                                        *
--************************************************************************************

function lights.register_glasslike(nodeid, description, color)
	minetest.register_node("lights:"..nodeid, {
		description = description,
		drawtype = "glasslike_framed_optional",
		tiles = {"default_glass.png^[colorize:"..color..":120", "default_glass_detail.png^[colorize:"..color..":120"},
		paramtype = "light",
		sunlight_propagates = true,
		light_source = 14,
		is_ground_content = false,
		groups = {cracky = 3, oddly_breakable_by_hand = 3},
		sounds = default.node_sound_glass_defaults(),
	})
end

function  lights.searchlight_on(pos)
	for i = 1, 30, 1 do
		local xm = {x=pos.x-i,y=pos.y-i,z=pos.z}
		local xp = {x=pos.x+i,y=pos.y-i,z=pos.z}
		local zm = {x=pos.x,y=pos.y-i,z=pos.z-i}
		local zp = {x=pos.x,y=pos.y-i,z=pos.z+i}
		local xmn  = minetest.get_node_or_nil(xm)
		local xpn  = minetest.get_node_or_nil(xp)
		local zmn  = minetest.get_node_or_nil(zm)
		local zpn  = minetest.get_node_or_nil(zp)

		if xmn ~= nil and xmn.name == "air"	then
			minetest.set_node(xm,{name='lights:light'})
		end
		if xpn ~= nil and xpn.name == "air"	then
			minetest.set_node(xp,{name='lights:light'})
		end
		if zmn ~= nil and zmn.name == "air"	then
			minetest.set_node(zm,{name='lights:light'})
		end
		if zpn ~= nil and zpn.name == "air"	then
			minetest.set_node(zp,{name='lights:light'})
		end
	end
end

function lights.searchlight_off(pos)
	for i = 1, 30, 1 do
		local xm = {x=pos.x-i,y=pos.y-i,z=pos.z}
		local xp = {x=pos.x+i,y=pos.y-i,z=pos.z}
		local zm = {x=pos.x,y=pos.y-i,z=pos.z-i}
		local zp = {x=pos.x,y=pos.y-i,z=pos.z+i}
		local xmn  = minetest.get_node_or_nil(xm)
		local xpn  = minetest.get_node_or_nil(xp)
		local zmn  = minetest.get_node_or_nil(zm)
		local zpn  = minetest.get_node_or_nil(zp)

		if xmn ~= nil and xmn.name == 'lights:light' then
			minetest.remove_node(xm)
		end
		if xpn ~= nil and xpn.name == 'lights:light' then
			minetest.remove_node(xp)
		end
		if zmn ~= nil and zmn.name == 'lights:light' then
			minetest.remove_node(zm)
		end
		if zpn ~= nil and zpn.name == 'lights:light' then
			minetest.remove_node(zp)
		end
	end
end

function lights.toggle_searchlight(pos, node)
	if node.name == "lights:searchlight" then
		minetest.swap_node(pos, {name="lights:searchlight_on"})
		lights.searchlight_on(pos)
	elseif node.name == "lights:searchlight_on" then
		minetest.swap_node(pos, {name="lights:searchlight"})
		lights.searchlight_off(pos)
	end
end

function lights.spotlight_off(pos)
	for i = 1, 19, 1 do
		local ontop = {x=pos.x,y=pos.y+i,z=pos.z}
		local is_air  = minetest.get_node_or_nil(ontop)
		if is_air ~= nil and is_air.name == "lights:light" then
			minetest.remove_node(ontop)
		end
	end
end

function lights.spotlight_on(pos)
	for i = 1, 19, 1 do
		local ontop = {x=pos.x,y=pos.y+i,z=pos.z}
		local is_air  = minetest.get_node_or_nil(ontop)

		if is_air ~= nil and is_air.name == "air" then
			minetest.set_node(ontop,{name="lights:light"})
		end
	end
end

function lights.toggle_spotlight(pos, node)
	if node.name == "lights:spotlight" then
		minetest.swap_node(pos, {name="lights:spotlight_on"})
		lights.spotlight_on(pos)
	elseif node.name == "lights:spotlight_on" then
		minetest.swap_node(pos, {name="lights:spotlight"})
		lights.spotlight_off(pos)
	end
end

function lights.daylight(pos,node)
	pos = {x=pos.x,y=pos.y-3,z=pos.z}-- go down 3 nodes.

	for i = 1, 2, 1 do -- place 2 nodes of lights:daylight
		local ontop = {x=pos.x,y=pos.y+i,z=pos.z}
		local node  = minetest.get_node_or_nil(ontop)

		if node ~= nil and node.name == "air" then
			minetest.set_node(ontop,{name='lights:daylight'})
		end
	end
	minetest.after(1, function(pos) -- wait a secound
		for i = 1, 2, 1 do -- remove both nodes.
			local ontop = {x=pos.x,y=pos.y+i,z=pos.z}
			local node  = minetest.get_node_or_nil(ontop)

			if node ~= nil and node.name == "lights:daylight" then
				minetest.remove_node(ontop)
			end
		end
	end, pos)
	-- the first node of air have now dayligt at day and nightlight in night.
	-- perfectly for underground farms
end

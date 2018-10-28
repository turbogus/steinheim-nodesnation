local old_nodes = {

	"signs_road:black_right_sign",
	"signs_road:black_left_sign",
	"signs_road:blue_street_sign",	
	"signs_road:green_left_sign",
	"signs_road:green_right_sign",
	"signs_road:green_street_sign",
	"signs_road:large_street_sign",
	"signs_road:red_street_sign",
	"signs_road:white_left_sign",
	"signs_road:white_right_sign",	
	"signs_road:white_street_sign",
	"signs_road:yellow_left_sign",
	"signs_road:yellow_right_sign",	
	"signs_road:yellow_street_sign",
	

	
	"signs:wooden_left_sign",
	"signs:wooden_right_sign",
	"signs:paper_poster",
	
	"steles:stone_stele",
	"steles:sandstone_stele",
	"steles:granite_stele",
	"steles:desert_stone_stele",
	
	"ontime_clocks:white",
	"ontime_clocks:frameless_black",
	"ontime_clocks:frameless_gold",
	"ontime_clocks:frameless_white",
	"ontime_clocks:green_digital",
	"ontime_clocks:red_digital",
}



minetest.register_lbm({
	name = "clear_sign:replace",
    nodenames = old_nodes,
	run_at_every_load = false,
    action = function(pos, node)
        local listeobj = minetest.get_objects_inside_radius(pos, 0.80)
		for c=1,table.getn(listeobj) do
			if not(listeobj[c]:is_player()) then
				listeobj[c]:remove()
			end
		end
    end,
})
minetest.register_node("advtrains_subwayblocks:mr", {	description = "Mountain Railway",
								tiles = {"advtrains_subwayblocks_mr_top.png", "advtrains_subwayblocks_mr_top.png","advtrains_subwayblocks_mr.png","advtrains_subwayblocks_mr.png","advtrains_subwayblocks_mr.png","advtrains_subwayblocks_mr.png"},
								groups = {cracky=3},
								light_source=10,
								paramtype=light,
})
minetest.register_node("advtrains_subwayblocks:germany", {	description = "German subway sign",
								tiles = {"advtrains_subwayblocks_u_top.png", "advtrains_subwayblocks_u_top.png","advtrains_subwayblocks_u-bahn-sign.png","advtrains_subwayblocks_u-bahn-sign.png","advtrains_subwayblocks_u-bahn-sign.png","advtrains_subwayblocks_u-bahn-sign.png"},
								groups = {cracky=3},
								light_source=10,
								paramtype=light,
})
for _,i in ipairs({1, 2, 3, 4, 5, 6, 7, 8, 9, 10 }) do
   minetest.register_node("advtrains_subwayblocks:line"..i, {
			     description = "Line "..i,
			  tiles={"advtrains_subwayblocks_line"..i..".png"},
			  drawtype = "nodebox",
			  paramtype2 = "wallmounted",
			  legacy_wallmounted = true,
			  paramtype=light,
			  light_source=12,
			  sunlight_propagates = true,
			  is_ground_content = false,
			  walkable = false,
			  
			  groups = {choppy = 2, attached_node = 1, flammable = 2, oddly_breakable_by_hand = 3},			
			  node_box = {
			     type = "wallmounted",
			     wall_top ={-0.5, -0.25, -0.25, -0.4375, 0.25, 0.25},
			     wall_bottom = {-0.5, -0.25, -0.25, -0.4375, 0.25, 0.25},
			     wall_side =  {-0.5, -0.25, -0.25, -0.4375, 0.25, 0.25},
			     						     
			  }
			  
   })
end

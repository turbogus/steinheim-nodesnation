-- **************************************************************************************************** MATERIALS

-- Galvanized steel stair, slab, panel and microblock
	local subset = streets.subset_stairsplus or {
		{ "micro", "" },
		{ "micro", "_1" },
		{ "micro", "_2" },
		{ "micro", "_4" },
		{ "micro", "_12" },
		{ "micro", "_14" },
		{ "micro", "_15" },
		{ "panel", "" },
		{ "panel", "_1" },
		{ "panel", "_2" },
		{ "panel", "_4" },
		{ "panel", "_12" },
		{ "panel", "_14" },
		{ "panel", "_15" },
		{ "slab",  "" },
		{ "slab",  "_quarter" },
		{ "slab",  "_three_quarter" },
		{ "slab",  "_1" },
		{ "slab",  "_2" },
		{ "slab",  "_14" },
		{ "slab",  "_15" },
		{ "slab",  "_two_sides" },
		{ "slab",  "_three_sides" },
		{ "slab",  "_three_sides_u" },
		{ "slope", "" },
		{ "slope", "_half" },
		{ "slope", "_half_raised" },
		{ "slope", "_inner" },
		{ "slope", "_inner_half" },
		{ "slope", "_inner_half_raised" },
		{ "slope", "_inner_cut" },
		{ "slope", "_inner_cut_half" },
		{ "slope", "_inner_cut_half_raised" },
		{ "slope", "_outer" },
		{ "slope", "_outer_half" },
		{ "slope", "_outer_half_raised" },
		{ "slope", "_outer_cut" },
		{ "slope", "_outer_cut_half" },
		{ "slope", "_outer_cut_half_raised" },
		{ "slope", "_cut" },
		{ "stair", "" },
		{ "stair", "_half" },
		{ "stair", "_right_half" },
		{ "stair", "_inner" },
		{ "stair", "_outer" },
		{ "stair", "_alt" },
		{ "stair", "_alt_1" },
		{ "stair", "_alt_2" },
		{ "stair", "_alt_4" },
	}
	
	stairsplus:register_custom_subset(
		subset,
		"infrastructure", 
		"galvanized_steel", 
		"infrastructure:galvanized_steel",
		{
			groups = {not_in_creative_inventory=NOT_IN_CREATIVE_INVENTORY, cracky=2},
			tiles = {"infrastructure_galvanized_steel.png"},
			description = "Galvanized steel",
			drop = "galvanized_steel",
			light = 0,
		}
			)

-- **************************************************************************************************** CENTER LINES

-- Asphalt stair, slab, panel and microblock with center solid line
	stairsplus:register_custom_subset(
		subset,
		"infrastructure", 
		"asphalt_center_solid_line", 
		"infrastructure:asphalt_center_solid_line",
		{
			groups = {not_in_creative_inventory=NOT_IN_CREATIVE_INVENTORY, cracky=1},
			tiles = {
				"streets_asphalt.png^infrastructure_single_yellow_line.png",
				"streets_asphalt.png",
				"streets_asphalt.png",
				"streets_asphalt.png",
				"streets_asphalt.png",
				"streets_asphalt.png"
			},
			description = "Asphalt with center solid line",
			drop = "asphalt_center_solid_line",
			light = 0,
		}
		)

-- Asphalt stair, slab, panel and microblock with center solid line on one side
	stairsplus:register_custom_subset(subset,"infrastructure", "asphalt_center_solid_one_side", "infrastructure:asphalt_center_solid_one_side",
			{groups = {not_in_creative_inventory=NOT_IN_CREATIVE_INVENTORY, cracky=1},
			tiles = {
				"streets_asphalt.png^infrastructure_solid_yellow_line_one_side.png",
				"streets_asphalt.png",
				"streets_asphalt.png",
				"streets_asphalt.png",
				"streets_asphalt.png",
				"streets_asphalt.png"
			},
			description = "Asphalt with center solid line on one side",
			drop = "asphalt_center_solid_one_side",
			light = 0,
			}
			)

-- Asphalt stair, slab, panel and microblock with center solid double line
	stairsplus:register_custom_subset(subset,"infrastructure", "asphalt_center_solid_double", "infrastructure:asphalt_center_solid_double",
			{groups = {not_in_creative_inventory=NOT_IN_CREATIVE_INVENTORY, cracky=1},
			tiles = {
				"streets_asphalt.png^infrastructure_double_yellow_line.png",
				"streets_asphalt.png",
				"streets_asphalt.png",
				"streets_asphalt.png",
				"streets_asphalt.png",
				"streets_asphalt.png"
			},
			description = "Asphalt with center solid double line",
			drop = "asphalt_center_solid_double",
			light = 0,
			})

-- Asphalt block with center corner single line
	stairsplus:register_custom_subset(subset,"infrastructure", "asphalt_center_corner_single", "infrastructure:asphalt_center_corner_single",
			{groups = {not_in_creative_inventory=NOT_IN_CREATIVE_INVENTORY, cracky=1},
			tiles = {
				"streets_asphalt.png^infrastructure_single_yellow_line_corner.png",
				"streets_asphalt.png",
				"streets_asphalt.png",
				"streets_asphalt.png",
				"streets_asphalt.png",
				"streets_asphalt.png"
			},
			description = "Asphalt with center corner single line",
			drop = "asphalt_center_corner_single",
			light = 0,
			})

-- Asphalt block with center corner double line
	stairsplus:register_custom_subset(subset,"infrastructure", "asphalt_center_corner_double", "infrastructure:asphalt_center_corner_double",
			{groups = {not_in_creative_inventory=NOT_IN_CREATIVE_INVENTORY, cracky=1},
			tiles = {
				"streets_asphalt.png^infrastructure_solid_double_yellow_line_corner.png",
				"streets_asphalt.png",
				"streets_asphalt.png",
				"streets_asphalt.png",
				"streets_asphalt.png",
				"streets_asphalt.png"
			},
			description = "Asphalt with center corner double line",
			drop = "asphalt_center_corner_double",
			light = 0,
			})

-- **************************************************************************************************** TRAFFIC MARKS

-- Asphalt stair, slab, panel and microblock with arrow straight
	stairsplus:register_custom_subset(subset,"infrastructure", "asphalt_arrow_straight", "infrastructure:asphalt_arrow_straight",
			{groups = {not_in_creative_inventory=NOT_IN_CREATIVE_INVENTORY, cracky=1},
			tiles = {"streets_arrow_straight.png", "infrastructure_asphalt.png"},
			description = "Asphalt with arrow straight",
			drop = "asphalt_arrow_straight",
			light = 0,
			})

-- Asphalt stair, slab, panel and microblock with arrow straight + left
	stairsplus:register_custom_subset(subset,"infrastructure", "asphalt_arrow_straight_left", "infrastructure:asphalt_arrow_straight_left",
			{groups = {not_in_creative_inventory=NOT_IN_CREATIVE_INVENTORY, cracky=1},
			tiles = {"streets_asphalt.png^streets_arrow_straight_left.png", "infrastructure_asphalt.png"},
			description = "Asphalt with arrow straight + left",
			drop = "asphalt_arrow_straight_left",
			light = 0,
			})

-- Asphalt stair, slab, panel and microblock with arrow straight + right
	stairsplus:register_custom_subset(subset,"infrastructure", "asphalt_arrow_straight_right", "infrastructure:asphalt_arrow_straight_right",
			{groups = {not_in_creative_inventory=NOT_IN_CREATIVE_INVENTORY, cracky=1},
			tiles = {"streets_asphalt.png^streets_arrow_straight_right.png", "infrastructure_asphalt.png"},
			description = "Asphalt with arrow straight + right",
			drop = "asphalt_arrow_straight_right",
			light = 0,
			})

-- Asphalt stair, slab, panel and microblock with arrow left
	stairsplus:register_custom_subset(subset,"infrastructure", "asphalt_arrow_left", "infrastructure:asphalt_arrow_left",
			{groups = {not_in_creative_inventory=NOT_IN_CREATIVE_INVENTORY, cracky=1},
			tiles = {"streets_asphalt.png^streets_arrow_left.png", "infrastructure_asphalt.png"},
			description = "Asphalt with arrow left",
			drop = "asphalt_arrow_left",
			light = 0,
			})

-- Asphalt stair, slab, panel and microblock with arrow right
	stairsplus:register_custom_subset(subset,"infrastructure", "asphalt_arrow_right", "infrastructure:asphalt_arrow_right",
			{groups = {not_in_creative_inventory=NOT_IN_CREATIVE_INVENTORY, cracky=1},
			tiles = {"streets_asphalt.png^streets_arrow_right.png", "infrastructure_asphalt.png"},
			description = "Asphalt with arrow right",
			drop = "asphalt_arrow_right",
			light = 0,
			})

-- Asphalt stair, slab, panel and microblock with "P"-sign
	stairsplus:register_custom_subset(subset,"infrastructure", "asphalt_parking", "infrastructure:asphalt_parking",
			{groups = {not_in_creative_inventory=NOT_IN_CREATIVE_INVENTORY, cracky=1},
			tiles = {"streets_asphalt.png^streets_parking.png", "infrastructure_asphalt.png"},
			description = "Asphalt with a parking sign",
			drop = "asphalt_parking",
			light = 0,
			})

-- Register known infrastructure nodes in circular saw if avaiable
	if circular_saw then
		for i,v in ipairs({
-- Materials
			"asphalt",
			"concrete",
			"galvanized_steel",
-- Center lines
			"asphalt_center_dashed",
			"asphalt_center_solid",
			"asphalt_center_solid_one_side",
			"asphalt_center_solid_double",
			"asphalt_center_corner_single",
			"asphalt_center_corner_double",
-- Traffic marks
			"asphalt_arrow_straight",
			"asphalt_arrow_straight_left",
			"asphalt_arrow_straight_right",
			"asphalt_arrow_left",
			"asphalt_arrow_right",
			"asphalt_parking"
		}) do
			table.insert(circular_saw.known_stairs, "infrastructure:"..v);
		end
	end

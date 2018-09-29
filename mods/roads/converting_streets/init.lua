local function converting_mark(source,convert,color)
	
	for _,scolor in ipairs(color) do
		minetest.register_alias(source[1]..scolor..source[2].."_on_asphalt", convert[1]..scolor..convert[2].."_on_asphalt")
		minetest.register_alias(source[1]..scolor..source[2], convert[1]..scolor..convert[2])
	end

end

converting_mark(
	{"streets:mark_all_",""},
	{"streets:mark_solid_","_stripe"},
	{"white"}
)

converting_mark(
	{"streets:mark_double_","_center_line_wide_corner"},
	{"streets:mark_double_solid_","_center_line_corner"},
	{"yellow"}
)


converting_mark(
	{"streets:mark_double_","_center_line_wide"},
	{"streets:mark_double_solid_","_center_line"},
	{"yellow"}
)

converting_mark(
	{"streets:mark_","_diagonal"},
	{"streets:mark_double_solid_","_diagonal_line"},
	{"yellow"}
)

converting_mark(
	{"streets:mark_","_x"},
	{"streets:mark_","_cross"},
	{"yellow"}
)

converting_mark(
	{"streets:mark_solid_","_side_line_rotated"},
	{"streets:mark_solid_","_side_line_r180"},
	{"yellow","white"}
)

converting_mark(
	{"streets:mark_","_arrow_left_straight_right"},
	{"streets:mark_","_arrow_left_right_straight"},
	{"yellow","white"}
)

converting_mark(
	{"streets:mark_","_arrow_straight_right"},
	{"streets:mark_","_arrow_right_straight"},
	{"yellow","white"}
)

converting_mark(
	{"streets:mark_solid_","_center_line_wide_offset"},
	{"streets:mark_solid_","_center_line_wide"},
	{"yellow"}
)

converting_mark(
	{"streets:mark_solid_","_side_line_corner_rotated"},
	{"streets:mark_solid_","_side_line_corner_r270"},
	{"white","yellow"}
)


minetest.register_alias("streets:concrete_wall_flat", "streets:concrete_wall_top")

minetest.register_alias("streets:manhole", "streets:asphalt_manhole")
minetest.register_alias("streets:manhole_adv_closed", "streets:asphalt_manhole")
minetest.register_alias("streets:manhole_adv_open", "streets:asphalt_manhole_open")

minetest.register_alias("streets:pole_bottom", "streets:bigpole")
minetest.register_alias("streets:pole_top", "streets:bigpole")

minetest.register_alias("streets:streetlamp_basic_bottom", "streets:bigpole")
minetest.register_alias("streets:streetlamp_basic_middle", "streets:bigpole")
minetest.register_alias("streets:constructionfence_bottom","streets:roadwork_traffic_fence")


--minetest.register_alias("streets:streetlamp_basic_top_on", "streets:light_vertical_off")
minetest.register_lbm({
	name = "converting_streets:streetlamp_basic_top_on",
	label = "Convert",
	run_at_every_load = false,
	nodenames = "streets:streetlamp_basic_top_on",
	action = function(pos, node)
		minetest.set_node(pos, {name ="streets:light_vertical_off"})
	end
})	



minetest.register_alias("streets:green_arrow", "air")
minetest.register_alias("streets:constructionfence_top", "air")

minetest.register_alias("streets:slope_solid_white_side_line_rotated_half", "streets:slope_mark_solid_white_side_line_r180_on_asphalt_half")
minetest.register_alias("streets:slope_solid_white_side_line_rotated_half_raised", "streets:slope_mark_solid_white_side_line_r180_on_asphalt_half_raised")

minetest.register_alias("streets:slope_solid_white_side_line_half", "streets:slope_mark_solid_white_side_line_on_asphalt_half")
minetest.register_alias("streets:slope_solid_white_side_line_half_raised", "streets:slope_mark_solid_white_side_line_on_asphalt_half_raised")

minetest.register_alias("streets:slope_white_arrow_straight_right_half_raised", "streets:slope_mark_white_arrow_right_straight_on_asphalt_half_raised")

minetest.register_alias("streets:slope_solid_white_center_line_half", "streets:slope_mark_solid_white_center_line_on_asphalt_half")
minetest.register_alias("streets:slope_solid_white_center_line_half_raised", "streets:slope_mark_solid_white_center_line_on_asphalt_half_raised")

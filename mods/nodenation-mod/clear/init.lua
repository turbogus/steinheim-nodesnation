local old_nodes = {
	"mobs:egg",
	"mobs:chicken",
	"craft_guide:sign_wall",
	"xdecor:workbench",
	"nyancat:nyancat",
	"nyancat:nyancat_rainbow",
	"mycorners:machine_corner",
	"bakedclay:delphinium",
	"bakedclay:thistle",
	"bakedclay:lazarus",
	"bakedclay:mannagrass",
	"memorandum:letter_empty",
	"memorandum:letter_written"
}

local old_entities = {
}

minetest.register_lbm({
	name = "clear:replace",
    nodenames = old_nodes,
	run_at_every_load = true,
    action = function(pos, node)
        minetest.remove_node(pos)
    end,
})

for _,entity_name in ipairs(old_entities) do
    minetest.register_entity(":"..entity_name, {
        on_activate = function(self, staticdata)
            self.object:remove()
        end,
    })
end

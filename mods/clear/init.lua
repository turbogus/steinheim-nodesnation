local old_nodes = {
	"mobs:egg",
	"mobs:chicken",
	"craft_guide:sign_wall",
	"xdecor:workbench",
	"nyancat:nyancat",
	"nyancat:nyancat_rainbow"
}
local old_entities = {}

minetest.register_lbm({
	name = "clear:replace",
    nodenames = old_nodes,
	run_at_every_load = false,
    action = function(pos, node)
        minetest.env:remove_node(pos)
    end,
})

for _,entity_name in ipairs(old_entities) do
    minetest.register_entity(":"..entity_name, {
        on_activate = function(self, staticdata)
            self.object:remove()
        end,
    })
end

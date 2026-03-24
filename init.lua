minetest.register_node("classicmese:mese1", {
        description = "Transition Mese",
        tiles = {"classicmese_mese2.png"}, --tile_images
        is_ground_content = true,
        groups = {cracky=1},
        sounds = default.node_sound_defaults(),
})

minetest.register_node("classicmese:mese2", {
        description = "Classic Mese",
        tiles = {"classicmese_mese1.png"},
        is_ground_content = true,
        groups = {cracky=1},
        sounds = default.node_sound_defaults(),
})
--generation

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "classicmese:mese2",
	wherein        = "default:stone",
        clust_scarcity = 12*12*12,
        clust_num_ores = 3,
        clust_size = 2,
	height_min     = -31000,
	height_max     = -40,
	flags          = "absheight",
})
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "classicmese:mese1",
	wherein        = "default:stone",
        clust_scarcity = 12*12*12,
        clust_num_ores = 3,
        clust_size = 2,
	height_min     = -31000,
	height_max     = -40,
	flags          = "absheight",
})

--crafting
minetest.register_craft({
        output = 'default:pick_mese',
        recipe = {
                {'classicmese:mese1', 'classicmese:mese1', 'classicmese:mese1'},
                {'', 'default:stick', ''},
                {'', 'default:stick', ''},
        }
})

minetest.register_craft({
        output = 'default:pick_mese',
        recipe = {
                {'classicmese:mese2', 'classicmese:mese2', 'classicmese:mese2'},
                {'', 'default:stick', ''},
                {'', 'default:stick', ''},
        }
})
--Fuel
minetest.register_craft({
        type = "fuel",
        recipe = "classicmese:mese1",
        burntime = 30,
})

minetest.register_craft({
        type = "fuel",
        recipe = "classicmese:mese2",
        burntime = 30,
})

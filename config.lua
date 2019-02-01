treasures.max_level =  tonumber(minetest.settings:get("treasures.max_level")) or 5

treasures.treasure_default={
	is_ground_content = false,
	groups = {cracky = 3, choppy = 3},
	sounds = default.node_sound_wood_defaults(),
	drop = {
		max_items = 5,
		items = {
			{items = {'default:torch 10'},rarity = 15,},
			{items = {'default:apple 3'},rarity = 15,},
			{items = {'default:coal_lump 3'},rarity = 15,},
		}
	},
}

trasures.map_def={ore_type    = "scatter",
			wherein        = "default:stone",
			clust_scarcity = 10 * 10 * 10,
			clust_num_ores = 1,
			clust_size     = 1,
			y_min          = (-31000),
			y_max          = 0,
		}

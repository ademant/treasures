treasures.add_treasure("treasures:treasure1", {
		description = "".. core.colorize("#BFFFFF", "Wooden loot crate\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)"),
	tiles = {"minerdream_treasure1.png"},
	groups = {cracky = 3, choppy = 3},
	drop = {
		max_items = 5,
		items = {
			{items = {'default:sword_steel 1'},rarity = 25,},
			{items = {'default:wood 5'},rarity = 5,},
			{items = {'default:stick 5'},rarity = 5,},
			{items = {'default:torch 10'},rarity = 5,},
			{items = {'default:apple 3'},rarity = 5,},
			{items = {'default:coal_lump 3'},rarity = 10,},
			{items = {'default:flint 2'},rarity = 10,},
			{items = {'default:iron_lump 3'},rarity = 15,},
			{items = {'default:copper_lump 3'},rarity = 15,},
			{items = {'default:tin_lump 3'},rarity = 15,},
		}
	},
})

treasures.add_treasure("treasures:treasure2", {
		description = "".. core.colorize("#00FFFF", "Sturdy wooden loot crate\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)"),
	tiles = {"minerdream_treasure2.png"},
	groups = {cracky = 2, choppy = 2},
	drop = {
		max_items = 5,
		items = {
			{items = {'default:tree 5'},rarity = 5,},
			{items = {'default:wood 5'},rarity = 5,},
			{items = {'default:torch 15'},rarity = 5,},
			{items = {'default:coal_lump 5'},rarity = 10,},
			{items = {'default:steel_ingot 3'},rarity = 10,},
			{items = {'default:ladder_wood 15'},rarity = 5,},
			{items = {'default:gold_lump 3'},rarity = 15,},
			{items = {'default:mese_crystal 3'},rarity = 15,},
			{items = {'default:diamond 2'},rarity = 20,},
		}
	},
})

treasures.add_treasure("treasures:treasure3", {
		description = "".. core.colorize("#40FF80", "Reinforced wooden loot crate\n")..core.colorize("#A0A0A0", "tier: 4 (rare)"),
	tiles = {"minerdream_treasure3.png"},
	groups = {cracky = 1, choppy = 1},
	drop = {
		max_items = 5,
		items = {
			{items = {'default:tree 5'},rarity = 5,},
			{items = {'default:torch 25'},rarity = 5,},
			{items = {'default:coal_lump 8'},rarity = 10,},
			{items = {'default:steel_ingot 5'},rarity = 10,},
			{items = {'default:ladder_wood 20'},rarity = 5,},
		}
	},
})

treasures.add_treasure("treasures:treasure4", {
		description = "".. core.colorize("#0040FF", "Well-reinforced wooden loot crate\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)"),
	tiles = {"minerdream_treasure4.png"},
	groups = {cracky = 4, choppy = 1},
	drop = {
		max_items = 5,
		items = {
			{items = {'default:torch 35'},rarity = 5,},
			{items = {'default:coal_lump 10'},rarity = 10,},
			{items = {'default:steel_ingot 8'},rarity = 10,},
			{items = {'default:ladder_wood 25'},rarity = 5,},
		}
	},
})

treasures.add_treasure("treasures:treasure5", {
		description = "".. core.colorize("#00FF00", "Steel loot crate\n")..core.colorize("#A0A0A0", "tier: 6 (epic)"),
	tiles = {"minerdream_treasure5.png"},
	groups = {cracky = 5},
	drop = {
		max_items = 5,
		items = {
			{items = {'default:torch 50'},rarity = 5,},
			{items = {'default:steel_ingot 10'},rarity = 10,},
			{items = {'default:ladder_wood 30'},rarity = 5,},
		}
	},
})


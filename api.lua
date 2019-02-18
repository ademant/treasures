
local M=treasures

M.update_treasure=function(name,tdef)
	if minetest.registered_items[name] == nil then
		M.add_treasure(name,tdef)
	else
		minetest.override_item(name,tdef)
	end
end

M.map_treasure=function(name,tdef)
	if tdef == nil then return end
	if minetest.registered_items[name] == nil then 
		print(name.." not yet registered")
		M.add_treasure(name,M.treasure_default)
	end
	for i,attr in ipairs({"ore_type","wherein","clust_scarcity","clust_num_ores","clust_size","y_min","y_max"}) do
		if tdef[attr]==nil then
			tdef[attr]=M.map_def[attr]
		end
	end
	if tdef.ore == nil then tdef.ore=name end
	minetest.register_ore(tdef)
end

M.add_treasure=function(name,tdef)
	if tdef.tiles == nil then
		return
	end
	if minetest.registered_items[name] ~= nil then
		minetest.override_item(name,tdef)
	else
		for i,attr in ipairs({"is_ground_content","groups","sounds","drop"}) do
			if tdef[attr]==nil then
				tdef[attr]=M.treasure_default[attr]
			end
		end
		if tdef.description==nil then
			tdef.despricption=name
		end
		minetest.register_node(name, tdef)
	end
end

M.add_drop=function(name,drop_def)
	if drop_def.items == nil then
		return
	end
	
	if minetest.registered_items[drop_def.items:split(" ")[1]] == nil then
		return
	end
	if drop_def.rarety == nil then
		drop_def.rarety = 20
	end
	if minetest.registered_items[name] == nil then
		local tdef={	
			drop = {
				max_items = 5,
				items = {drop_def}
				}}
		M.add_treasure(name,tdef)
	else
		local tdef={}
		tdef=table.copy(minetest.registered_items[name])
		table.insert(tdef.drop.items,math.random(1,#tdef.drop.items),drop_def)
		minetest.register_node(":"..name,tdef)
	end

end

M.register_ore=function(tdef)
	for i,attr in pairs(M.map_def) do
		if tdef[i] == nil then
			tdef[i]= attr
		end
	end
	minetest.register_ore(tdef)
	
end

M.add_register_treasure=function(name,tdef,mapdef)
	M.add_treasure(name,tdef)
	M.register_ore(mapdef)
end

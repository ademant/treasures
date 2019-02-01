
local M=treasures

M.update_treasure=function(name,tdef)
	if M.registered_treasures[name] == nil then
		M.add_treasure(name,tdef)
	else
		minetest.override_item(name,tdef)
	end
end

M.add_treasure=function(name,tdef)
	if tdef.tiles == nil then
		return
	end
	if M.registered_treasures[name] ~= nil then
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
	if drop_def.name == nil then
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
		tdef.drop=table.copy(minetest.registered_items[name])
		table.insert(tdef.drop,drop_def)
		minetest.override_item(name,tdef)
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

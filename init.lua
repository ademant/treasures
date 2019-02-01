
treasure = {}
treasure.path = minetest.get_modpath("treasure")
treasure.modname=minetest.get_current_modname()
treasure.mod_storage=minetest.get_mod_storage()
treasure.store_table={}
treasure.attributes={}

minetest.log("action", "[MOD]"..minetest.get_current_modname().." -- start loading from "..minetest.get_modpath(minetest.get_current_modname()))
-- Load files

-- import settingtypes.txt
basic_functions.import_settingtype(treasure.path .. "/settingtypes.txt")

dofile(treasure.path .. "/api.lua") -- API
dofile(treasure.path .. "/treasures.lua") -- API


minetest.log("action", "[MOD]"..minetest.get_current_modname().." -- loaded ")

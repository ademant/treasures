
treasures = {}
treasures.path = minetest.get_modpath("treasures")
treasures.modname=minetest.get_current_modname()
treasures.mod_storage=minetest.get_mod_storage()
treasures.store_table={}
treasures.attributes={}

minetest.log("action", "[MOD]"..minetest.get_current_modname().." -- start loading from "..minetest.get_modpath(minetest.get_current_modname()))
-- Load files

-- import settingtypes.txt
basic_functions.import_settingtype(treasures.path .. "/settingtypes.txt")

dofile(treasures.path .. "/config.lua") -- config
dofile(treasures.path .. "/api.lua") -- API
dofile(treasures.path .. "/treasures.lua") -- API
dofile(treasures.path .. "/map_gen.lua") -- API

minetest.log("action", "[MOD]"..minetest.get_current_modname().." -- loaded ")

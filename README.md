[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
# Minetest mod: Treasure

Main repository:

https://notabug.org/ademant/treasures.git

Mirrors:

https://gitlab.com/ademant/treasures.git

https://github.com/ademant/treasures.git

## Short description
Outsource of treasure nodes from minerdream.

## Longer description
Five loot nodes are defined (treasures:treasure1 .. treasures:treasure5), which can be found in different depths. The possible drop items can be extended by other mods.

API:

- treasures.add_treasure(name,treasure_def) add a new node <name> similar to minetest.register_node
- treasures.map_treasure(name,map_def) add the definition for map generation to treasure <name>
- treasures.add_drop(name,drop_def) add to treasure <name> a new drop item (and optional rarety).

# Authors of source code

daviddoesminetest (MIT)

ademant (MIT)

# Authors of media (textures)
  

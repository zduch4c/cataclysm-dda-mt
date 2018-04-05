-- NODES

minetest.register_node("default:grass",
  {
    description = "Grass tile",
    tiles = {"default_grass.png"},
    is_ground_content = true,
    groups = {crumbly = 3}
  })

minetest.register_node("default:dirt",
  {
    description = "Dirt tile",
    tiles = {"default_dirt.png"},
    is_ground_content = true
  })

-- BIOMES

minetest.register_on_mapgen_init(
  function (mapgen_params)
    minetest.set_mapgen_params(
    {
      mgname = "flat",
      flags = "notrees, nocaves, nodungeons, flat"
    })end)

minetest.register_biome(
  {
    name = "default:grassland",
    node_top = "default:grass",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_fille = 3,
    node_stone = "default:dirt"
  })


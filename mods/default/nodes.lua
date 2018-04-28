minetest.register_node("default:grass", {
			  description = "Grass tile",
			  tiles = { "default_grass.png" },
			  is_ground_content = true,
			  groups = { crumbly = 3 }
})

minetest.register_node("default:dirt", {
			  description = "Dirt tile",
			  tiles = { "default_dirt.png" },
			  is_ground_content = true
})

minetest.register_node("default:brick", {
			  description = "Brick tile",
			  tiles = { "default_brick.png" },
			  is_ground_content = true
})

minetest.register_node("default:tile_floor", {
			  description = "Tile floor tile",
			  tiles = { "default_tile_floor.png" },
			  is_ground_content = true
})

dofile(minetest.get_modpath("default") .. "/nodes.lua")

minetest.register_on_mapgen_init(
   function (mapgen_params)
      minetest.set_mapgen_params({
	    mgname = "singlenode",
      })
end)

minetest.register_biome({
      name = "default:grassland",
      node_top = "default:grass",
      depth_top = 1,
      node_filler = "default:dirt",
      depth_filler = 3,
      node_stone = "default:dirt"
})

function place_building(x, y, w, h, doorx, doorz)
   for x0=x,w do
      for z0=y,h do
	 if x0 == x or x0 == w or z0 == y or z0 == h and (x0 ~= doorx and z0 == doorz) then
	    minetest.set_node({x=x0,y=1,z=z0},{name="default:brick"})
	 end
	 minetest.set_node({x=x0,y=2,z=z0},{name="default:brick"})
	 minetest.set_node({x=x0,y=0,z=z0},{name="default:tile_floor"})
      end
   end
end

minetest.register_on_generated(function(minp, maxp, seed)
      local minx=minp.x
      local maxx=maxp.x
      local minz=minp.z
      local maxz=maxp.z

      for x = minx, maxx do
	 for z = minz, maxz do
	    minetest.set_node({x = x, y=0, z = z }, { name = "default:dirt" })
	 end
      end

      place_building(4,4,10,10,5,10)
end)

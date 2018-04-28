minetest.register_on_joinplayer(function(player)
      player:set_properties({
	    collisionbox={-0.4,-0.4,-0.4, 0.4,0.4,0.4},
	    visual_size={x=1,y=0.4}
      })

      player:set_eye_offset(
	 {x=0,y=-15,z=0},
	 nil
      )

      player:set_physics_override({
	    speed=0.5,
	    jump=0,
	    gravity=1,
	    sneak=true,
	    sneak_glitch=true,
      })

      player:set_sky(nil, "plain")
end)

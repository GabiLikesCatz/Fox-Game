var target = place_meeting(x,y,obj_player)
if target
	visiblelayer = 1
else
	visiblelayer = 0
layer_set_visible("Tile_Secret",visiblelayer)
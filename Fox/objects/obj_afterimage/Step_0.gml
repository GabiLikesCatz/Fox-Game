if obj_player.state != 2
	image_alpha -= 0.05
if image_alpha < 0
	instance_destroy()

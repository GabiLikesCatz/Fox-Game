with obj_player
{
	if place_meeting(x,y+1,obj_solid)
	{
		if k_up and global.haskey = 1 and state != 999999
		{
			state = 999999
			other.opened = 1
			other.alarm[0] = 60
			other.image_index = 1
			global.targetrm = other.targetrm
			obj_camera.lvlscore = global.collect
			obj_camera.lvlcombo = global.combo
			sound(sfx_win)
			sound(sfx_door)
		}
	}
}

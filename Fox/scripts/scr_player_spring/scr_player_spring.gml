// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_spring(){
	sprite_index = spr_player_hurt
	image_speed = 0.35
	vsp = -15
	hsp = 0
	movespeed = 0
	if place_meeting(x,y-1,obj_solid)
	{
		state = 3
		vsp = 0
		movespeed = 1
	}
	
}
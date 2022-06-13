// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_spring(){
	sprite_index = spr_player_hurt
	hsp = Approach( hsp, move * 5, 0.5)
	image_speed = 0.7
	if vsp > -15
		vsp -= 1
	if k_jump_press
	{
		movespeed = hsp
		state = 0
		vsp = -11
	}
	if place_meeting(x,y-1,obj_solid)
		vsp = 10
	if place_meeting(x-1,y,obj_solid)
	{
		hsp = 10
	}
	if place_meeting(x+1,y,obj_solid)
	{
		hsp = -10
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_groundpound(){
	hsp = movespeed * move
	sprite_index = spr_player_groundpound
	if vsp < 40
	{
		vsp += (grav * 2)
		groundpoundsmash += grav
	}
	movespeed = 3
	if move != 0
		xscale = move
	if place_meeting(x,y+1,obj_solid) or place_meeting(x,y+1,obj_slope)
	{
		state = 3
		vsp = -(groundpoundsmash / 1.5)
	}
	if !instance_exists(obj_groundpoundeffect)
		instance_create_depth(x,y,depth-1,obj_groundpoundeffect)
}
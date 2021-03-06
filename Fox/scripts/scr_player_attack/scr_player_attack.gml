// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_attack(){
	rgb = make_color_rgb(150,150,255)
	if !audio_is_playing(sfx_walk)
		sound(sfx_walk)
	if !audio_is_playing(sfx_dashing) and attackstyle != "OLD"
		sound(sfx_dashing)
	if !instance_exists(obj_speedlines)
		instance_create_depth(x,y,depth,obj_speedlines)
	/*if !instance_exists(obj_dasheffect)
		with instance_create_depth(x,y,depth - 1,obj_dasheffect)
			image_xscale = other.xscale*/
	if grounded
	{
	if !instance_exists(obj_walkdust)
	{
		with instance_create_depth(x,y,depth-1,obj_walkdust)
		{
			image_xscale = other.xscale
			image_index = 0
		}
	}
	}
	if attackstyle = "OLD"
	{
		image_speed = 0.35
		hsp = movespeed * xscale
		//sprite_index = spr_player_attack
		movespeed = 8
		if vsp < 20
			vsp += grav
		if floor(image_index) = image_number - 1 and sprite_index = spr_player_attack
			state = 0
		if (floor(image_index) = image_number - 1 and sprite_index = spr_player_attackairprep) or (!grounded and sprite_index != spr_player_attackair and sprite_index != spr_player_attackairprep)
		{
			sprite_index = spr_player_attackair
			image_index = 0
		}
		if (grounded) and ( sprite_index = spr_player_attackair or  sprite_index = spr_player_attackairprep)
			state = 0
	}
	else if attackstyle = "SHOULDERBASH"
	{
	sprite_index = spr_player_shoulderbash
	image_speed = 0.35
	hsp = movespeed * xscale
	if place_meeting(x,y+1,obj_solid) or place_meeting(x,y+1,obj_slope)
	{
		if floor(image_index) < 9
		{
		if movespeed < 12
		movespeed += 0.25
		}
		else
		if movespeed > 0
			movespeed -= 0.1
	}
	else
		movespeed = 10
	if floor(image_index) = image_number - 1
	{
		//if !k_run
		state = 0
		//else
		//state = 5
	}
	if vsp < 20
		vsp += grav
	if (place_meeting(x,y+1,obj_solid) or place_meeting(x,y+1,obj_slope)) and airattack = 1
		state = 0
	if (place_meeting(x,y+1,obj_solid) or place_meeting(x,y+1,obj_slope)) and k_jump_press
	{
		airattack = 1
		vsp = -11
		state = 10
		image_index = 0
		sound(sfx_jump)
		sprite_index = spr_player_slidejump
	}
	if place_meeting(x+xscale,y,obj_solid)
	{
		state = 3
		vsp = -5
		movespeed = movespeed / 2
		image_index = 0
		sound(sfx_bump)
			repeat 6
				instance_create_depth(x,y,depth,obj_hitstar)
				instance_create_depth(x,y,depth,obj_hiteffect)
	}
	}
	else
	{
		if vsp < 20
			vsp += grav
		image_speed = 0.35
		if movespeed < 12 and sprite_index != spr_player_dashturn
			movespeed += 0.25
		else if sprite_index = spr_player_dashturn
			movespeed -= 0.25
		if sprite_index != spr_player_dashturn
		hsp = xscale * movespeed
		else
		hsp = -xscale * movespeed
		if movespeed < 0
			movespeed = 0
		if (!k_attack_down) and grounded and movespeed >= 10
			state = 0
		if sprite_index != spr_player_dash and sprite_index != spr_player_dashturn
			sprite_index = spr_player_dash
		if sprite_index != spr_player_dashturn and move = -xscale
		{
			xscale *= -1
			movespeed -= 1
			sprite_index = spr_player_dashturn
			image_index = 0
		}
		if sprite_index = spr_player_dashturn and floor(image_index) = image_number - 1
		{
			if grounded
				sprite_index = spr_player_dash
			else
				image_speed = 0
		}
		if k_jump_press and grounded
		{
			vsp = -10.5
			sound(sfx_jump)
		}
		if place_meeting(x+xscale,y,obj_solid)
		{
			state = 3
			vsp = -5
			movespeed = movespeed / 2
			image_index = 0
			sound(sfx_bump)
				repeat 6
					instance_create_depth(x,y,depth,obj_hitstar)
					instance_create_depth(x,y,depth,obj_hiteffect)
		}
		if movespeed = 12
			instance_create_unique(x + (32 * -xscale),y,obj_dasheffect)
	}
	/*if (!place_meeting(x,y+1,obj_solid) and !place_meeting(x,y+1,obj_slope))
	{
		if k_attack
		{
			state = 7
			groundpoundsmash = 0
			vsp = -11
		}
	}*/
	if (place_meeting(x,y+1,obj_solid) or place_meeting(x,y+1,obj_slope)) and k_down
	{
		state = 10
		vsp = 0
		image_index = 0
		movespeed = 10
	}
}
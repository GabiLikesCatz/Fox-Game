// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_normal(){
	if sprite_index != spr_player_uppercut
	image_speed = 0.35
	else
	image_speed = 0.35
	hsp = movespeed * move
	if vsp < 20
		vsp += grav
	if move != 0
		xscale = move
	if grounded
	{
		if move != 0
		{
			sprite_index = spr_player_walk
			if movespeed < 6
				movespeed += 0.5
			if movespeed > 6
				movespeed -= 0.5
			if !instance_exists(obj_walkdust)
			{
				with instance_create_depth(x,y,depth+1,obj_walkdust)
				{
					image_xscale = other.xscale
					image_index = 0
				}
			}
			if !audio_is_playing(sfx_walk)
				sound(sfx_walk)
		}
		else
		{
			if invframes < 0
			sprite_index = spr_player_idle
			else
			sprite_index = spr_player_hurtidle
			movespeed = 0
		}
		if (k_jump_press || jumpbuffer > 0)
		{
			vsp = -11
			image_index = 0
			if !playedjump
				sound(sfx_jump)
			playedjump = 1
			jumpbuffer = 0
		}
	}
	else
	{
		if sprite_index != spr_player_uppercut
		sprite_index = spr_player_jump
		if floor(image_index) = image_number - 1
		{
			image_speed = 0	
		}
		if sprite_index = spr_player_uppercut
		{
			if floor(image_index) = image_number - 1
			{
				sprite_index = spr_player_jump
				image_index = 3
				image_speed = 0
			}
		}
		if move != 0
		{
			if movespeed < 6
				movespeed += 0.25
		}
	}
	if k_attack
	{
		sound(sfx_dash)
		if attackstyle = "OLD"
		{
		if grounded
		{
			if attackstyle = "OLD"
			sprite_index = spr_player_attack
			else
			airattack = 0
		}
		else
		{
			if attackstyle = "OLD"
			sprite_index = spr_player_attackairprep
			else
			airattack = 1
		}
		state = 1
		image_index = 0
		}
		else
		{
		if !k_up
		{
		if grounded
		{
			state = 1
			image_index = 0
			airattack = 0
			movespeed = 6
			if !instance_exists(obj_dasheffect)
			{
				with instance_create_depth(x,y,depth+1,obj_dasheffect)
				{
					image_xscale = other.xscale
					image_index = 0
				}
			}
		}
		else
		{
			state = 11
			image_index = 0
			airattack = 1
			vsp = /*-2.5*/ -9
			movespeed = 6
		}
		}
		else
		{
			state = 11
			movespeed = 0
			if grounded
				vsp = -14
			else
				vsp = -9
		}
		}
	}
	/*if k_run and (place_meeting(x,y+1,obj_solid) or place_meeting(x,y+1,obj_slope))
	{
		state = 5
		movespeed = 5
	}*/
	/*if place_meeting(x,y+1,obj_solid)
	{
		if keyboard_check_pressed(ord("C"))	
		{
			state = 9
			image_index = 0
			sprite_index = spr_player_chainsawstart
		}
	}*/
}
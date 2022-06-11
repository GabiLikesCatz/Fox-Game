// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_bump(){
	if !audio_is_playing(sfx_fall)
		sound(sfx_fall)
	rgb = make_color_rgb(150,150,255)
	hsp = movespeed * -xscale
	//movespeed = 3
	sprite_index = spr_player_hurt
	image_speed = 0.35
	if vsp < 20
		vsp += grav
	//if floor(image_index) = image_number - 1
	if (place_meeting(x,y+1,obj_solid) or place_meeting(x,y+1,obj_slope)) and frames < 0
		state = 0
		
}
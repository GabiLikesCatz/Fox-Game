// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collide(){
	if place_meeting(x + hsp,y,obj_solid)
	{
		while !place_meeting(x+sign(hsp),y,obj_solid)
			x += sign(hsp)
		hsp = 0
	}
	x += hsp
	
	if place_meeting(x,y + vsp,obj_solid)
	{
		while !place_meeting(x,y+sign(vsp),obj_solid)
			y += sign(vsp)
		vsp = 0
	}
	y += vsp
	
	if place_meeting(x,y,obj_slope)
	{
		if instance_place(x+sign(hsp),y,obj_slope)
		{
		var slope = instance_place(x+sign(hsp),y,obj_slope)
		var slopexscale = sign(slope.image_xscale)
		}
		while place_meeting(x+sign(hsp),y,obj_slope)
		{
			if slopexscale = image_xscale
				y += -1
			if slopexscale = -image_xscale
				y += -1
		}
	}
}
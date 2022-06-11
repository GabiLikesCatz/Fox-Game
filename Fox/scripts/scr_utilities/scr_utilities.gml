// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_afterimage(){
	afterimagebuffer -= 0.5
	if afterimagebuffer < 0
	{
		with instance_create_depth(x + random_range(-4,4),y + random_range(-4,4),depth+1,obj_afterimage)
		{
			sprite_index = other.sprite_index
			image_index = other.image_index
			image_xscale = other.xscale
			other.afterimagebuffer = 0
			image_blend = other.rgb
		}
	}
}
function Approach(argument0,argument1,argument2){
if (argument0 < argument1)
    return min(argument0 + argument2, argument1); 
else
    return max(argument0 - argument2, argument1);
}

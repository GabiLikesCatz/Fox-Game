draw_set_color(c_white)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, drawAngle, image_blend, image_alpha)
if room != Hub and room != Title
{
collect_font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890", true, 2);
draw_set_font(collect_font)
collectstring = (string("COLLECT X ") + string(global.collect))
collectstringw = string_width(collectstring)
draw_text(x - (collectstringw / 2),y-64,collectstring)
combostring = (string("COMBO X ") + string(global.combo))
combostringw = string_width(combostring)
if combotime < 15
	comboshakew = random_range(-4,4)
else
	comboshakew = 0
if combotime < 15
	comboshakeh = random_range(-4,4)
else
	comboshakeh = 0
if global.combo > 0
{
draw_set_color(c_white)
draw_text(x - ((combostringw / 2) + comboshakew),y-(128 + comboshakeh),combostring)
draw_set_color(c_black)
draw_rectangle(x-60,y-100,x+60,y-110,false)
draw_set_color(c_white)
draw_rectangle(x-60,y-100,x+(combotime-60),y-110,false)
draw_set_color(c_black)
draw_rectangle(x-60,y-100,x+60,y-110,true)
draw_set_color(c_white)
}
}
if global.drawhud
{
	draw_set_font(collect_font)
	collectstring = (string("SCORE X ") + string(global.collect))
	// collectstringw = string_width(collectstring)
	draw_text(40, 32.5, collectstring)
	combostring = (string("COMBO X ") + string(global.combo))
	// combostringw = string_width(combostring)
	if combotime < 15
		comboshakew = random_range(-2,2)
	else
		comboshakew = 0
	if combotime < 15
		comboshakeh = random_range(-2,2)
	else
		comboshakeh = 0
		draw_set_color(c_white)
		
		if global.combo > 0
			combotextoffset_target = 0
		else
			combotextoffset_target = -500
		combotextoffset = lerp(combotextoffset,combotextoffset_target,0.1)
		draw_text(40 + comboshakew + combotextoffset + combosin, 80 + comboshakeh,combostring)
		draw_healthbar(50 + string_width(combostring) + comboshakew + combotextoffset + combosin, 80 + comboshakeh,180 + string_width(combostring) + comboshakew + combotextoffset + combosin,75 + comboshakeh,combotime,c_black,c_white,c_white,0,1,1)
}
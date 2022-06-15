draw_set_font(ComicSans)
draw_set_color(c_white)
fakey = y + yplus
yplus += changeby
if yplus >= 5
	changeby = -0.25
if yplus <= -5
	changeby = 0.25
draw_text(x,fakey,"New Game")
draw_text(x,fakey + 30,"Options")
draw_text(x,fakey + 60,"Exit")
draw_sprite(sprite,-1,x + 137.5,fakey+(30*selected))
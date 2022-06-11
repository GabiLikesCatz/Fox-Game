if paused
{
	draw_set_color(c_black)
	draw_rectangle(0,0,view_get_wport(view_camera[0]),view_get_hport(view_camera[0]),false)
	draw_set_color(c_white)
	draw_rectangle(0,0,view_get_wport(view_camera[0]),view_get_hport(view_camera[0]),true)
	draw_set_font(ComicSans)
	draw_text(480,240,"Paused")
	draw_text(480,300,"Continue")
	draw_text(480,330,"Restart")
	draw_text(480,360,"Exit")
	draw_sprite(sprite,-1,380,300+(30*selected))
}

messages = ds_list_create()
messageID = 0
message = "Pee Pee Poo Poo"
character = 0
messagespeed = 0.3
enum msg
{
	name,
	image,
	text	
}
var guiW = display_get_gui_width()
var guiH = display_get_gui_height()
height = floor(guiH * 0.45)
width = guiW
x = 0
y = guiH - height
padding = 8
image_speed = 0.35
font = ComicSans
draw_set_color(c_white)
var arr = messages[|messageID]
var name = arr[msg.name]
var image = arr[msg.image]
draw_set_font(font)
var drawX = x + padding
var drawY = y + padding
if sprite_exists(image)
{
	var imageW = sprite_get_width(image)
	var imageH = sprite_get_height(image)
	draw_sprite(image,-1,drawX + imageW / 2,drawY + imageH / 2)
	drawX += imageW + padding
}
draw_text(drawX,drawY,name)
drawY += string_height(name) + padding
var maxW = width - (drawX + padding)
draw_text_ext(drawX,drawY,message,-1,maxW)
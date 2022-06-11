if targetDoor = 1
{
	x = obj_door1.x + (64 * hallwayxscale)
	y = obj_door1.y - 10
}
if targetDoor = 2
{
	x = obj_door2.x + (64 * hallwayxscale)
	y = obj_door2.y - 10
}
if targetDoor = 3
{
	x = obj_door3.x + (64 * hallwayxscale)
	y = obj_door3.y - 10
}
if targetDoor = 4
{
	x = obj_door4.x + (64 * hallwayxscale)
	y = obj_door4.y - 10
}
starty = y
startx = x
if state = 8
	state = 0
if global.combo > 0
combotime = 120
if combostop < 15
	combostop = 15

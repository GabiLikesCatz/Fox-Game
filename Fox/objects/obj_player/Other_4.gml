if roomstart = 0
roomstart = 1
if state = 8
	state = 0
if global.combo > 0
combotime += 30
if combostop < 15
	combostop = 15
	if targetDoor = 1
	{
		if instance_exists(obj_door1)
		{
		x = obj_door1.x + (64 * hallwayxscale)
		y = obj_door1.y - 10
		}
	}
	if targetDoor = 2
	{
		if instance_exists(obj_door2)
		{
		x = obj_door2.x + (64 * hallwayxscale)
		y = obj_door2.y - 10
		}
	}
	if targetDoor = 3
	{
		if instance_exists(obj_door3)
		{
		x = obj_door3.x + (64 * hallwayxscale)
		y = obj_door3.y - 10
		}
	}
	if targetDoor = 4
	{
		if instance_exists(obj_door4)
		{
		x = obj_door4.x + (64 * hallwayxscale)
		y = obj_door4.y - 10
		}
	}
	starty = y
	startx = x
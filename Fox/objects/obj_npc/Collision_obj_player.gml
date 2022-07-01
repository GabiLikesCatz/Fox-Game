if !instance_exists(obj_textbox)
{
	with instance_create_depth(0,0,depth,obj_textbox)
		other.tb = id
	var list = tb.messages
	for (var i = 0; i < array_length_1d(msg); i++)
	{
		var arr = msg[i]
		ds_list_add(list,arr)
	}
}
scr_input()
var arr = messages[|messageID]
var text = arr[msg.text]
message = string_copy(text,1,character)
if character <= string_length(text)
	character += messagespeed
else if k_jump_press
{
	if messageID < ds_list_size(message) - 1
	{
		messageID++
		character = 0
	}
	else
		instance_destroy()
}
if (selected == 0)
{
	room_goto(Title)
}
else if (selected == 1)
{
	// gotta do the options bruyh
	audio_play_sound(sfx_bump, 10, 0)
}
else
{
	game_end()
}
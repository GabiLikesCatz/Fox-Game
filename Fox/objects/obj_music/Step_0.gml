if music != noone
{
	if !audio_is_playing(music)
	{
		audio_stop_all()
		audio_play_sound(music,10,0)
		audio_sound_gain(music, 0.4, 0)
	}
}

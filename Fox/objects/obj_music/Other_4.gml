if room = Hub or room = Hub2 or room = TitleReale or room = Title
{
	if music != mu_hub
	{
		music = mu_hub
		audio_stop_all()
	}
	audio_sound_pitch(music,1)
}
else if room = Forest_1 or room = Forest_2 or room = Forest_3 or room = Forest
{
	if music != mu_forest
	{
		music = mu_forest
		audio_stop_all()
	}
	audio_sound_pitch(music,1)
}
else if room = SewerA or room = SewerB or room = SewerC
{
	if music != mu_sewer
	{
		music = mu_sewer
		audio_stop_all()
	}
	audio_sound_pitch(music,1)
}
else if room = CityOLD or room = CityBOLD or room = City_1 or room = City_2 or room = City_3
{
	if music != mu_city
	{
		music = mu_city
		audio_stop_all()
	}
	audio_sound_pitch(music,1)
}
else if room = Mansion_1 or room = Mansion_2 or room = Mansion_3 or room = Mansion_4
{
	if music != mu_mansion
	{
		music = mu_mansion
		audio_stop_all()
	}
	if room = Mansion_4
		audio_sound_pitch(music,0.75)
	else
		audio_sound_pitch(music,1)
}
else if room = Freezer_1 or room = Freezer_2 or room = Freezer or room = Freezer22
{
	if music != mu_forest
	{
		music = mu_forest
		audio_stop_all()
	}
	audio_sound_pitch(music,1)
}
else if room = Space_1 or room = Space_2 or room = Space_3 or room = Space_4 or room = Space_5
{
	if music != mu_space
	{
		music = mu_space
		audio_stop_all()
	}
	audio_sound_pitch(music,1)
}
else
{
	music = noone
	audio_stop_all()
	audio_sound_pitch(music,1)
}

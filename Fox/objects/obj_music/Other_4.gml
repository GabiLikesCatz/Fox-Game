if room = Forest_1 or room = Forest_2 or room = Forest_3 or room = Forest
{
	if music != mu_forest
	{
		music = mu_forest
		audio_stop_all()
	}
}
else if room = SewerA or room = SewerB or room = SewerC
{
	if music != mu_sewer
	{
		music = mu_sewer
		audio_stop_all()
	}
}
else if room = CityOLD or room = CityBOLD or room = City_1 or room = City_2 or room = City_3
{
	if music != mu_city
	{
		music = mu_city
		audio_stop_all()
	}
}
else if room = mansion_1
{
	if music != mu_haunted
	{
		music = mu_haunted
		audio_stop_all()
	}
}
else
{
	music = noone
	audio_stop_all()
}

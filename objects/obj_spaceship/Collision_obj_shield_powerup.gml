/// @description Shield Powerup
audio_play_sound(snd_powerup, 1, false);

shield = true;
alarm[1] = 300;
with(other){
	instance_destroy();
}


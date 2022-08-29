/// @description asteroid destruction

move_wrap(true,true,0);

image_angle+=rotation;


if(life <=0){
	audio_play_sound(snd_explosion, 1, false);
	repeat(3){
		instance_create_layer(x, y, "Instances",obj_med_asteroid);
	}
	repeat(10){
		instance_create_layer(x, y, "Instances", obj_debris);
	}
	
	global.score +=10;
	
	instance_destroy();
}
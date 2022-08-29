/// @description asteroid destruction

move_wrap(true,true,0);

image_angle+=rotation;


if(life <=0){
	audio_play_sound(snd_explosion, 1, false);
	repeat(5){
		instance_create_layer(x, y, "Instances", obj_debris);
	}
	global.score+=20;
	instance_destroy();
}

function movement(){
if keyboard_check(vk_up){
	speed = veloc;
	sprite_index = spr_spaceship_flying;
}else if keyboard_check(vk_down){
	speed = -veloc;
	sprite_index = spr_spaceship_flying;
}
else{
	sprite_index = spr_spaceship_idle;
	speed = lerp(speed, 0 , 0.05);
}

if keyboard_check(vk_left){
	direc = 3;
	
}else if keyboard_check(vk_right){
	direc = -3;
}else{
	direc = lerp(direc,0,0.08);
}

}


movement();

 
if keyboard_check_pressed(vk_space){
	audio_play_sound(snd_projectile, 1, false)
	
	var inst = instance_create_layer(x, y, "Instances",obj_projectile);
	inst.speed = 6;
	inst.direction = direction
	inst.image_angle = direction
	inst.damage = ship_damage;
}

if keyboard_check(vk_enter){
	audio_play_sound(snd_projectile, 1, false)
	
	var inst = instance_create_layer(x, y, "Instances",obj_projectile);
	inst.speed = 6;
	inst.direction = direction
	inst.image_angle = direction
	inst.damage = ship_damage;
}


direction+=direc;
image_angle = direction;

move_wrap(true,true,0);

if(alarm[0] > 0){
	if (image_alpha <= 0){
		alpha_add = 0.05;
	}else if(image_alpha >= 1){
		alpha_add = -0.05;
	}
	
	image_alpha += alpha_add;
}else{
	image_alpha = 1;
}


if(life <= 0){
	game_restart();
}

if(global.score >=1000){
	room_goto(rm_final);
}
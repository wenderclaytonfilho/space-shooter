/// @description Create powerups
if(room == rm_main){
	var powerup = choose(obj_shield_powerup,obj_projectile_powerup);
	instance_create_layer(irandom_range(0,room_width),irandom_range(0,room_height),"Instances",powerup);
	alarm[0] = 600; //10 Seconds
}
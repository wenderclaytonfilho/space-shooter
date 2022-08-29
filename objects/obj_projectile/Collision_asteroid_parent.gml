/// @description Collide with Asteroid

//other => Modifica o objeto da colisão
//With => Modifica outros objetos
audio_play_sound(snd_hit, 1, false)

var projectile_damage = damage
with (other){
	life-= projectile_damage;
}


instance_destroy();

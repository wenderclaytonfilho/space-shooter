/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
audio_play_sound(snd_powerup, 1, false);

alarm[2] = 300;
ship_damage = 2;

with(other){
	instance_destroy();
}

/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (alarm[0] <= 0){
	if(shield){
		shield = false;
	}else{
		life -= 1;
	}
	with(other){
			life -= 1;
		}
	
	alarm[0] = 180;
	
}
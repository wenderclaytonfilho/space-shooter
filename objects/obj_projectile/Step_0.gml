function delete_projectile(){
	if(y<=0){
	instance_destroy();
}
else if (y>= room_height){
	instance_destroy();
}
else if (x<=0){
	instance_destroy();
}
else if (x>=room_width){
	instance_destroy();
}

}

delete_projectile();

image_xscale = damage;
image_yscale = damage;


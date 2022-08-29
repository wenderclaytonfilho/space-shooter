/// @description Inserir descrição aqui 

var _width =display_get_width();
var _heigth = display_get_height();

var _color = make_color_rgb(131,68,87);
draw_set_font(fnt_base_gui);

if(room == rm_menu){
	if(alpha<=0){
		alpha_add +=0.05;
	}else if(alpha >= 1){
		alpha_add -=0.05
	}
	
	alpha += alpha_add;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text_ext_color(_width/2,_heigth/3,"Avoid the asteroids, and destroy'em to win score points!",80,900,_color,_color, _color, _color, 1);
	draw_text_color(_width/2 , _heigth - _heigth/3,"Press P to play!",_color,_color, _color, _color,alpha)
	if(keyboard_check_pressed(ord("P"))){
		room_goto(rm_main);
	}
}

else if(room ==rm_main){
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_color(20, 20,"Life: "+ string(obj_spaceship.life) ,_color,_color,_color,_color,1);
	draw_text_color(20, 40,"Score: "+ string(global.score) ,c_white,c_white,c_white,c_white,1);
}else if(room == rm_final){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_ext_color(_width/2,_heigth/2,"Congratulations! Press R to try again!",80,900,_color,_color, _color, _color, 1);
	
	if (keyboard_check(ord("R"))){
		game_restart();
	}

}
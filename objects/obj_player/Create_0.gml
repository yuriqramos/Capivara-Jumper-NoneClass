///@description Configurações iniciais

#region Variáveis

// Gravidade do jogador
gravity = 0.1;

// Velocidade vertical, para cima
vspeed = -5;

// Velocidade do movimento para os lados
vel_h = 5;

// Coordenadas da câmera
cam_y = y;
cam_x = 0;

#endregion

#region Módulos

// Movimento do personagem para os lados
mov_horizontal = function()
{
	// Variável de direção do player
	var _dir = 0;

	// Define a direção do jogador dependendo do botão pressionado
	
	// Esquerdo
	if(keyboard_check(vk_left)) _dir = -1;
	
	// Direito
	if(keyboard_check(vk_right)) _dir = 1;
	
	// Definindo a velocidade
	hspeed = _dir * vel_h;
}

// Movimento da câmera
camera_movendo = function()
{
	// Limita a câmera para seguir o jogador
	if(cam_y > y) cam_y = y;
	
	// Define a posição da câmera
	camera_set_view_pos(view_camera[0], 0, cam_y - 160);
}

#endregion
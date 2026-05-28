///@description Configurações iniciais

#region Variáveis

// Gravidade do jogador
gravity = 0.13;

// Velocidade vertical, negativo para cima
vel_v = -7;

// Velocidade horizontal
vel_h = 5;

// Definindo a velocidade inicial para começar pulando
vspeed = vel_v;

// Coordenadas da câmera
cam_y = y;
cam_x = 0;

#endregion

#region Módulos

// Movimento horizontal do personagem
mov_horizontal = function()
{
	// Variável de direção do player
	var _dir = keyboard_check(vk_right) - keyboard_check(vk_left);
	
	// Definindo a velocidade
	hspeed = _dir * vel_h;
}

// Movimento da câmera
camera_movendo = function()
{
	// Limita a câmera para seguir o jogador
	if(cam_y > y) cam_y = y;
	
	// Define a posição da câmera
	camera_set_view_pos(view_camera[0], cam_x, cam_y - room_height / 2);
	
	// Reiniciando o jogo caso o jogador perca
	if (y > camera_get_view_y(view_camera[0]) + 380)
	{
		game_restart();
	}
}

warp_tela = function()
{
    var _lado_esquerdo = -(sprite_width / 2);
    var _lado_direito = room_width + sprite_width / 2;
    
    if ( x < _lado_esquerdo)
    {
        x = _lado_direito;
    }
    if(x > _lado_direito)
    {
        x = _lado_esquerdo;
    }
}

#endregion
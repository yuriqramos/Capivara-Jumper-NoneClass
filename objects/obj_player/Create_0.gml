///@description Configurações iniciais

// Gravidade do jogador
gravity = 0.1;

// Velocidade vertical, para cima
vspeed = -5;

// Velocidade do movimento para os lados
vel_h = 5;

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
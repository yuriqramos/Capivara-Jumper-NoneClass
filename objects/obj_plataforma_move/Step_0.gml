// Inherit the parent event
event_inherited();

var _lado_esquerdo = (sprite_width / 2) + 1;
var _lado_direito = (room_width - (sprite_width / 2)) - 1;

if (x <= _lado_esquerdo)
{
    hspeed = -hspeed;
    x = _lado_esquerdo;
}

if (x >= _lado_direito)
{
    hspeed = -hspeed;
    x = _lado_direito;
}
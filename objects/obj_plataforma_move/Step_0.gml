// Inherit the parent event
event_inherited();

var _lado_esquerdo = -(sprite_width / 2);
var _lado_direito = room_width - (sprite_width / 2);

if (x <= _lado_esquerdo or x >= _lado_direito)
{
    hspeed = -hspeed;
}
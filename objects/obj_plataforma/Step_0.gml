///@description 

var _cam_height = camera_get_view_height(view_camera[0]);
var _margem = 400;


if (camera_get_view_y(view_camera[0]) + _cam_height + _margem < y)
{
    var _obj = choose(obj_plataforma, obj_plataforma2, obj_plataforma_move, obj_plataforma_cai);
    var _x = random_range(sprite_width / 2, room_width - sprite_width / 2);
    instance_create_layer(_x, ystart - _cam_height - _margem, layer, _obj);
    instance_destroy();
}
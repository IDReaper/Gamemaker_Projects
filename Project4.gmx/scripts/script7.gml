x = obj_player.x;
y = obj_player.y;

image_angle=point_direction(obj_player.x,obj_player.y,(obj_player.x + gamepad_axis_value(0, gp_axisrh)),(obj_player.y + gamepad_axis_value(0, gp_axisrv)));

var xTo, yTo;

move_towards_point(mouse_x,mouse_y,0);
xTo = /*(obj_player.x + lengthdir_x(min(96,distance_to_point(mouse_x,mouse_y)),direction)) ||*/ (obj_player.x + gamepad_axis_value(0, gp_axisrh) * 48);
yTo = /*(obj_player.y + lengthdir_y(min(96,distance_to_point(mouse_x,mouse_y)),direction)) ||*/ (obj_player.y + gamepad_axis_value(0, gp_axisrv) * 48);
    
x += (xTo-x)/5;
y += (yTo-y)/5;
    
view_xview = -(view_wview/2) + x;
view_yview = -(view_hview/2) + y;


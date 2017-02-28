//var xTo, yTo;

//move_towards_point(mouse_x,mouse_y,0);
//xTo = /*(obj_player.x + lengthdir_x(min(96,distance_to_point(mouse_x,mouse_y)),direction)) ||*/ (obj_player.x + gamepad_axis_value(0, gp_axisrh) * 96);
//yTo = /*(obj_player.y + lengthdir_y(min(96,distance_to_point(mouse_x,mouse_y)),direction)) ||*/ (obj_player.y + gamepad_axis_value(0, gp_axisrv) * 96);
    
//x += (xTo-x)/5;
//y += (yTo-y)/5;
/*    
view_xview = -(view_wview/2) + x;
view_yview = -(view_hview/2) + y;
*/

//x = obj_player.x;
//y = obj_player.y;

checkh = gamepad_axis_value(0, gp_axisrh);
checkv = gamepad_axis_value(0, gp_axisrv);
checkrs = checkh + checkv;

if (checkrs != 0){
    if(!instance_exists(obj_shield)){
        instance_create(obj_player.x,obj_player.y,obj_shield);
    }
}else{
    with(obj_shield) instance_destroy();
}

//image_angle=point_direction(obj_player.x,obj_player.y,(obj_player.x + gamepad_axis_value(0, gp_axisrh)),(obj_player.y + gamepad_axis_value(0, gp_axisrv)));

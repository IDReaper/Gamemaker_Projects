key_right = keyboard_check(ord('D')) || (gamepad_axis_value(0,gp_stickl) > 0)
key_left = -(keyboard_check(ord('A')) || (gamepad_axis_value(0,gp_stickl) < 0))
key_jump = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0,gp_face1);
key_jump_held = keyboard_check(vk_space) || gamepad_button_check(0,gp_face1);

move = key_left + key_right;
hsp = move * movespeed;

if (move != 0){
    image_xscale = move;
}

if (vsp < 10) vsp += grav;

if (place_meeting(x,y+1,obj_wall))
{
    vsp = key_jump * -jumpspeed
}

if (vsp < 0) && (!key_jump_held) vsp += grav / 0.2;

if (place_meeting(x+hsp,y,obj_wall))
{
    while(!place_meeting(x+sign(hsp),y,obj_wall))
    {
        x += sign(hsp);
    }
    hsp = 0;
}

//temp enemy collision
if (place_meeting(x+hsp,y,obj_enemy))
{
    while(!place_meeting(x+sign(hsp),y,obj_enemy))
    {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

if (place_meeting(x,y+vsp,obj_wall))
{
    while(!place_meeting(x,y+sign(vsp),obj_wall))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;    
    
    

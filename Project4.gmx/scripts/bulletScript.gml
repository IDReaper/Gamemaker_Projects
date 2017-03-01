//Follow within a certain radius

if (!place_meeting(x,y,obj_wall))
{
    if(distance_to_point(obj_player.x,obj_player.y) <= 96)
    {
        x += (obj_player.x-x)/20;
        y += (obj_player.y-y)/20;
    }
}


//If touching shield, destroy self
if (place_meeting(x,y,obj_shield))
{
    if (obj_shield.visible = true){
        instance_destroy(); 
    }  
}

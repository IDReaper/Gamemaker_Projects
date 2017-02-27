if (place_meeting(x,y,obj_player))
{
    if (obj_player.y < self.y-16)
    {
            with(obj_player) vsp = -jumpspeed;
            instance_destroy();
    }
}



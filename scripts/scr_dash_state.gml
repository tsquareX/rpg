///scr_dash_state
movement = MOVE;
if (len == 0){ 
    dir = face*90;
}

len = spd*4;

// Get hspd vspd
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

// Move
audio_play_sound(snd_dash,7,false);
phy_position_x += hspd;
phy_position_y += vspd;

// Create dash effect
var dash = instance_create(x,y, obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;


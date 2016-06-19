///scr_save_game]

// make sure the player exist
if (!instance_exists(obj_player_stats)) exit;
show_message("Game saved");

//create the save data structure
var save_data = ds_map_create();

with(obj_player_stats){
    save_data[?"room"] = previous_room;
    save_data[?"x"] = 0;    
    save_data[?"y"] = 0;
    save_data[?"hp"] = hp;
    save_data[?"maxhp"] = maxhp;
    save_data[?"stamina"] = stamina;
    save_data[?"maxstamina"] = maxstamina;
    save_data[?"expr"] = expr;
    save_data[?"maxexpr"] = maxexpr;
    save_data[?"level"] = level;
    save_data[?"attack"] = attack;
}

var save_string = json_encode(save_data);
ds_map_destroy(save_data);

var file = file_text_open_write(working_directory + "mysavegame.txt");
file_text_write_string(file, save_string);
file_text_close(file);



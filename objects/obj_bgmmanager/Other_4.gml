/// @description Insert description here
// You can write your code in this editor
// Get the current room's BGM from the map
var current_bgm = ds_map_find_value(bgm_map, room);

// Check if this BGM is not already playing
if (audio_is_playing(current_bgm) == false) {
    // Stop any currently playing music
    audio_stop_all();

    // Play the new room's BGM
    audio_play_sound(current_bgm, 1, true);  // Loop set to true
}
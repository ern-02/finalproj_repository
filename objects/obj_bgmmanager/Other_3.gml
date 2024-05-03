/// @description Insert description here
// You can write your code in this editor
// Destroy the map when no longer needed
if (ds_exists(bgm_map, ds_type_map)) {
    ds_map_destroy(bgm_map);
}

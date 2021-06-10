class_name LevelConfig
extends SurfacerLevelConfig


const ARE_LEVELS_SCENE_BASED := true

const LEVELS_PATH_PREFIX := "res://src/levels/"

var level_manifest := {
    "1": {
        name = "Bootstrap level",
        version = "0.0.1",
        priority = 70,
        scene_path = LEVELS_PATH_PREFIX + "level1.tscn",
        player_names = ["bootstrap_player"],
    },
}


func _init().(ARE_LEVELS_SCENE_BASED) -> void:
    pass


#func _sanitize_level_config(config: Dictionary) -> void:
#    ._sanitize_level_config(config)


func get_level_config(level_id: String) -> Dictionary:
    return level_manifest[level_id]


func get_level_ids() -> Array:
    return level_manifest.keys()


func get_unlock_hint(level_id: String) -> String:
    # TODO
    return "Not yet unlocked" if \
            !Gs.save_state.get_level_is_unlocked(level_id) else \
            ""


func get_suggested_next_level() -> String:
    # TODO
    var last_level_played_id := Gs.save_state.get_last_level_played()
    if last_level_played_id != "" and \
            level_manifest.has(last_level_played_id):
        return last_level_played_id
    else:
        return get_level_ids().front()

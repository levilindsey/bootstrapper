tool
class_name SquirrelAwayLevelConfig
extends SurfacerLevelConfig


const ARE_LEVELS_SCENE_BASED := true

const LEVELS_PATH_PREFIX := "res://addons/squirrel_away/src/levels/"

var level_manifest := {
#    "1": {
#        name = "Dev level 1",
#        version = "0.0.1",
#        sort_priority = -1000,
#        unlock_conditions = "unlocked",
#        scene_path = LEVELS_PATH_PREFIX + "level1.tscn",
#        platform_graph_character_names = ["cat"],
#    },
#    "2": {
#        name = "Dev level 2",
#        version = "0.0.1",
#        sort_priority = -900,
#        unlock_conditions = "unlocked",
#        scene_path = LEVELS_PATH_PREFIX + "level2.tscn",
#        platform_graph_character_names = ["cat"],
#    },
    "3": {
        name = "Dev level 3",
        version = "0.0.1",
        is_test_level = true,
        sort_priority = -800,
        unlock_conditions = "unlocked",
        scene_path = LEVELS_PATH_PREFIX + "level3.tscn",
        platform_graph_character_names = ["cat"],
        intro_choreography = [
            {
                is_player_interaction_enabled = false,
                zoom_multiplier = 0.5,
            },
            {
                duration = 1.0,
            },
            {
                destination = SurfacerLevelConfig \
                        .INTRO_CHOREOGRAPHY_DESTINATION_GROUP_NAME,
            },
            {
                duration = 0.4,
                zoom_multiplier = 1.0,
            },
            {
                is_player_interaction_enabled = true,
            },
        ],
    },
#    "4": {
#        name = "Dev level 4",
#        version = "0.0.1",
#        is_test_level = true,
#        sort_priority = -700,
#        unlock_conditions = "unlocked",
#        scene_path = LEVELS_PATH_PREFIX + "level4.tscn",
#        platform_graph_character_names = ["cat"],
#    },
#    "5": {
#        name = "Dev level 5",
#        version = "0.0.1",
#        is_test_level = true,
#        sort_priority = -600,
#        unlock_conditions = "unlocked",
#        scene_path = LEVELS_PATH_PREFIX + "level5.tscn",
#        platform_graph_character_names = ["cat"],
#    },
    "6": {
        name = "Dev level 6",
        version = "0.0.1",
        is_test_level = true,
        sort_priority = -500,
        unlock_conditions = "unlocked",
        scene_path = LEVELS_PATH_PREFIX + "level6.tscn",
        platform_graph_character_names = ["cat", "squirrel"],
        # FIXME: --------------- Add back in.
#        intro_choreography = [
#            {
#                is_player_interaction_enabled = false,
#                zoom_multiplier = 0.5,
#            },
#            {
#                duration = 1.0,
#            },
#            {
#                destination = SurfacerLevelConfig \
#                        .INTRO_CHOREOGRAPHY_DESTINATION_GROUP_NAME,
#            },
#            {
#                duration = 0.4,
#                zoom_multiplier = 1.0,
#            },
#            {
#                is_player_interaction_enabled = true,
#            },
#        ],
    },
    "7": {
        name = "Dev level 7",
        version = "0.0.1",
        is_test_level = true,
        sort_priority = -400,
        unlock_conditions = "unlocked",
        scene_path = LEVELS_PATH_PREFIX + "level7.tscn",
        platform_graph_character_names = ["cat", "squirrel"],
    },
    "8": {
        name = "Dev level 8",
        version = "0.0.1",
        is_test_level = true,
        sort_priority = -300,
        unlock_conditions = "unlocked",
        scene_path = LEVELS_PATH_PREFIX + "level8.tscn",
        platform_graph_character_names = ["cat", "squirrel"],
    },
    "9": {
        name = "Dev level 9",
        version = "0.0.1",
        is_test_level = true,
        sort_priority = -200,
        unlock_conditions = "unlocked",
        scene_path = LEVELS_PATH_PREFIX + "level9.tscn",
        platform_graph_character_names = ["cat"],
    },
    "10": {
        name = "Dev level 10",
        version = "0.0.1",
        is_test_level = true,
        sort_priority = -100,
        unlock_conditions = "unlocked",
        scene_path = LEVELS_PATH_PREFIX + "level10.tscn",
        platform_graph_character_names = ["cat"],
    },
}


func _init().(
        ARE_LEVELS_SCENE_BASED,
        level_manifest) -> void:
    pass

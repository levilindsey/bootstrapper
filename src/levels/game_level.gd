tool
class_name GameLevel
extends SurfacerLevel


var _static_camera: StaticCamera
var _nav_preselection_camera: NavigationPreselectionCamera


func _ready() -> void:
    _static_camera = StaticCamera.new()
    add_child(_static_camera)


#func _load() -> void:
#    ._load()


func _start() -> void:
    ._start()
    
    _nav_preselection_camera = NavigationPreselectionCamera.new()
    add_child(_nav_preselection_camera)
    
    _nav_preselection_camera.target_character = _active_player_character
    swap_camera(_nav_preselection_camera, true)


#func _destroy() -> void:
#    ._destroy()


#func _on_initial_input() -> void:
#    ._on_initial_input()


#func quit(immediately := true) -> void:
#    .quit(immediately)


#func _on_intro_choreography_finished() -> void:
#    ._on_intro_choreography_finished()


#func pause() -> void:
#    .pause()


#func on_unpause() -> void:
#    .on_unpause()


func get_music_name() -> String:
    # FIXME: BOOTSTRAP: -------------------
    return "on_a_quest"


func get_slow_motion_music_name() -> String:
    # FIXME: BOOTSTRAP: -------------------
    # FIXME: Add slo-mo music
    return ""

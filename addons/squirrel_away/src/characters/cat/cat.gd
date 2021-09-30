tool
class_name Cat
extends SurfacerCharacter


func _on_started_colliding(
        target: Node2D,
        layer_names: Array) -> void:
    match layer_names[0]:
        "squirrels":
            _on_caught_squirrel()
        _:
            Sc.logger.error()


func _on_caught_squirrel() -> void:
    Sc.audio.play_sound("contact")


func _process_sounds() -> void:
    if just_triggered_jump:
        Sc.audio.play_sound("cat_jump")
    
    if surface_state.just_left_air:
        Sc.audio.play_sound("cat_land")
    elif surface_state.just_touched_surface:
        Sc.audio.play_sound("cat_hit_surface")

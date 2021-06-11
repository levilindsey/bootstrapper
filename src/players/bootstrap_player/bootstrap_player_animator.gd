class_name BootstrapPlayerAnimator
extends PlayerAnimator


func set_static_frame(animation_state: PlayerAnimationState) -> void:
    _show_sprite(animation_state.animation_type)
    .set_static_frame(animation_state)


func _play_animation(
        animation_type: int,
        blend := 0.1) -> bool:
    _show_sprite(animation_type)
    return ._play_animation(animation_type, blend)


func _show_sprite(animation_type: int) -> void:
    # Hide the other sprites.
    var sprites := [
        $Walk,
        $ClimbUp,
        $ClimbDown,
        $Rest,
        $RestOnWall,
        $JumpFall,
        $JumpRise,
    ]
    for sprite in sprites:
        sprite.visible = false
    
    # Show the current sprite.
    match animation_type:
        PlayerAnimationType.WALK:
            $Walk.visible = true
        PlayerAnimationType.CLIMB_UP:
            $ClimbUp.visible = true
        PlayerAnimationType.CLIMB_DOWN:
            $ClimbDown.visible = true
        PlayerAnimationType.REST:
            $Rest.visible = true
        PlayerAnimationType.REST_ON_WALL:
            $RestOnWall.visible = true
        PlayerAnimationType.JUMP_FALL:
            $JumpFall.visible = true
        PlayerAnimationType.JUMP_RISE:
            $JumpRise.visible = true
        _:
            Gs.logger.error()

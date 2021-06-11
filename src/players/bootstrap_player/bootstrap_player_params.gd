class_name BootstrapPlayerParams
extends MovementParams


func _init_params() -> void:
    name = "bootstrap_player"
    player_resource_path = "res://src/players/bootstrap_player/bootstrap_player.tscn"
    
    can_grab_walls = true
    can_grab_ceilings = false
    can_grab_floors = true
    
    var shape := CapsuleShape2D.new()
    shape.radius = 30.0
    shape.height = 54.0
    collider_shape = shape
    collider_rotation = PI / 2.0
    
    var fall_from_floor_shape := RectangleShape2D.new()
    fall_from_floor_shape.extents = \
            Vector2(shape.radius + shape.height / 2.0, shape.radius)
    fall_from_floor_corner_calc_shape = fall_from_floor_shape
    fall_from_floor_corner_calc_shape_rotation = 0.0
    
    climb_over_wall_corner_calc_shape = collider_shape
    climb_over_wall_corner_calc_shape_rotation = collider_rotation
    
    gravity_fast_fall = Gs.geometry.GRAVITY
    slow_rise_gravity_multiplier = 0.38
    rise_double_jump_gravity_multiplier = 0.68
    
    # TODO: Revert
    jump_boost = -1500.0
#    jump_boost = -900.0
    in_air_horizontal_acceleration = 3200.0
    max_jump_chain = 2
    wall_jump_horizontal_boost = 400.0
    wall_fall_horizontal_boost = 20.0
    
    walk_acceleration = 10500.0
    climb_up_speed = -350.0
    climb_down_speed = 175.0
    
    minimizes_velocity_change_when_jumping = false
    optimizes_edge_jump_positions_at_run_time = true
    optimizes_edge_land_positions_at_run_time = true
    also_optimizes_preselection_path = true
    forces_player_position_to_match_edge_at_start = true
    forces_player_velocity_to_match_edge_at_start = true
    forces_player_position_to_match_path_at_end = false
    forces_player_velocity_to_zero_at_path_end = false
    syncs_player_position_to_edge_trajectory = true
    syncs_player_velocity_to_edge_trajectory = true
    includes_discrete_trajectory_state = true
    includes_continuous_trajectory_positions = true
    includes_continuous_trajectory_velocities = true
    is_trajectory_state_stored_at_build_time = false
    bypasses_runtime_physics = false
    
    retries_navigation_when_interrupted = true
    distance_squared_threshold_for_considering_additional_jump_land_points = 32.0 * 32.0
    stops_after_finding_first_valid_edge_for_a_surface_pair = false
    calculates_all_valid_edges_for_a_surface_pair = false
    always_includes_jump_land_positions_at_surface_ends = false
    includes_redundant_jump_land_positions_with_zero_start_velocity = true
    normal_jump_instruction_duration_increase = 0.08
    exceptional_jump_instruction_duration_increase = 0.2
    recurses_when_colliding_during_horizontal_step_calculations = true
    backtracks_to_consider_higher_jumps_during_horizontal_step_calculations = true
    collision_margin_for_edge_calculations = 4.0
    collision_margin_for_waypoint_positions = 5.0
    skips_less_likely_jump_land_positions = false
    prevents_path_end_points_from_protruding_past_surface_ends_with_extra_offsets = true
    reuses_previous_waypoints_when_backtracking_on_jump_height = false
    asserts_no_preexisting_collisions_during_edge_calculations = false
    checks_for_alternate_intersection_points_for_very_oblique_collisions = true
    oblique_collison_normal_aspect_ratio_threshold_threshold = 10.0
    min_valid_frame_count_when_colliding_early_with_expected_surface = 4
    reached_in_air_destination_distance_squared_threshold = 16.0 * 16.0
    max_edges_to_remove_from_end_of_path_for_optimization_to_in_air_destination = 2
    
    max_horizontal_speed_default = 600.0
    min_horizontal_speed = 5.0
    max_vertical_speed = 4000.0
    min_vertical_speed = 0.0
    
    fall_through_floor_velocity_boost = 100.0
    
    dash_speed_multiplier = 4.0
    dash_vertical_boost = -400.0
    dash_duration = 0.3
    dash_fade_duration = 0.1
    dash_cooldown = 1.0
    
    friction_coefficient = 1.25
    
    uses_duration_instead_of_distance_for_edge_weight = true
    additional_edge_weight_offset = 128.0
    walking_edge_weight_multiplier = 1.2
    climbing_edge_weight_multiplier = 1.8
    air_edge_weight_multiplier = 1.0
    
    action_handler_names = [
        AirDashAction.NAME,
        AirDefaultAction.NAME,
        AirJumpAction.NAME,
        AllDefaultAction.NAME,
        CapVelocityAction.NAME,
        FloorDashAction.NAME,
        FloorDefaultAction.NAME,
        FloorFallThroughAction.NAME,
        FloorJumpAction.NAME,
        FloorWalkAction.NAME,
        FloorFrictionAction.NAME,
        WallClimbAction.NAME,
        WallDashAction.NAME,
        WallDefaultAction.NAME,
        WallFallAction.NAME,
        WallJumpAction.NAME,
        WallWalkAction.NAME,
    ]
    
    edge_calculator_names = [
        ClimbOverWallToFloorCalculator.NAME,
        FallFromWallCalculator.NAME,
        FallFromFloorCalculator.NAME,
        JumpFromSurfaceCalculator.NAME,
        ClimbDownWallToFloorCalculator.NAME,
        WalkToAscendWallFromFloorCalculator.NAME,
    ]


func _init_animator_params() -> void:
    animator_params = PlayerAnimatorParams.new()
    
    animator_params.player_animator_scene_path = \
            "res://src/players/bootstrap_player/bootstrap_player_animator.tscn"
    
    animator_params.faces_right_by_default = true
    
    animator_params.rest_name = "Rest"
    animator_params.rest_on_wall_name = "RestOnWall"
    animator_params.jump_rise_name = "JumpRise"
    animator_params.jump_fall_name = "JumpFall"
    animator_params.walk_name = "Walk"
    animator_params.climb_up_name = "ClimbUp"
    animator_params.climb_down_name = "ClimbDown"

    animator_params.rest_playback_rate = 0.8
    animator_params.rest_on_wall_playback_rate = 0.8
    animator_params.jump_rise_playback_rate = 1.0
    animator_params.jump_fall_playback_rate = 1.0
    animator_params.walk_playback_rate = 20.0
    animator_params.climb_up_playback_rate = 9.4
    animator_params.climb_down_playback_rate = \
            -animator_params.climb_up_playback_rate / 2.33

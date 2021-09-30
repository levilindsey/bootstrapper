tool
class_name CollidableTileMap
extends SurfacesTileMap


const DEFAULT_TILE_SET := preload("res://src/levels/collidable_tile_set.tres")


func _ready() -> void:
    if tile_set == null or \
            tile_set == Su.default_tile_set:
        tile_set = DEFAULT_TILE_SET

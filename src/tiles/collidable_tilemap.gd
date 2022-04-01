tool
class_name CollidableTilemap
extends SurfacesTilemap


const DEFAULT_TILE_SET := preload("res://src/tiles/collidable_tileset.tres")


func _ready() -> void:
    if tile_set == null or \
            tile_set == Su.default_tile_set:
        tile_set = DEFAULT_TILE_SET

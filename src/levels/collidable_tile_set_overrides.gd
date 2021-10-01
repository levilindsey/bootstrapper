tool
class_name CollidableTileSetOverrides
extends TileSet


# -   Tile IDs are found within the .tres file.
# -   There will be a line like `0/name = "wall_tile"` for each "tile" defined
#     in the TileSet.
# -   The number at the start of this line is the ID.
const AUTO_TILES_ID := 0


func _is_tile_bound( \
        drawn_id: int, \
        neighbor_id: int) -> bool:
    if neighbor_id == TileMap.INVALID_CELL:
        return false
    
    if drawn_id == AUTO_TILES_ID:
        return true
    
    return false

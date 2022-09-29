tool
class_name GameAnnotators
extends SurfacerAnnotators


const _GAME_LEVEL_SPECIFIC_ANNOTATORS := [
    ScaffolderAnnotatorTypes.RULER,
    ScaffolderAnnotatorTypes.LEVEL,
    ScaffolderAnnotatorTypes.SURFACES,
    ScaffolderAnnotatorTypes.GRID_INDICES,
    ScaffolderAnnotatorTypes.PATH_PRESELECTION,
]

# Dictionary<ScaffolderAnnotatorTypes, bool>
const _GAME_DEFAULT_ENABLEMENT := {
    ScaffolderAnnotatorTypes.RULER: false,
    ScaffolderAnnotatorTypes.SURFACES: false,
    ScaffolderAnnotatorTypes.GRID_INDICES: false,
    ScaffolderAnnotatorTypes.LEVEL: true,
    ScaffolderAnnotatorTypes.CHARACTER: true,
    ScaffolderAnnotatorTypes.CHARACTER_POSITION: false,
    ScaffolderAnnotatorTypes.RECENT_MOVEMENT: false,
    ScaffolderAnnotatorTypes.NAVIGATOR: true,
    ScaffolderAnnotatorTypes.PATH_PRESELECTION: true,
}


func _init().(
        _SURFACER_CHARACTER_SUB_ANNOTATORS,
        _GAME_LEVEL_SPECIFIC_ANNOTATORS,
        _GAME_DEFAULT_ENABLEMENT,
        SurfacerCharacterAnnotator) -> void:
    pass


func _create_annotator(annotator_type: String) -> void:
    assert(!is_annotator_enabled(annotator_type))
    match annotator_type:
        _:
            ._create_annotator(annotator_type)


func _destroy_annotator(annotator_type: String) -> void:
    assert(is_annotator_enabled(annotator_type))
    match annotator_type:
        _:
            ._destroy_annotator(annotator_type)

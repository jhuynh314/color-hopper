extends Button
@export var level := 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	disabled = !GlobalVariables.levelsUnlockedDictionary[level]
	text = str(level)

func _on_pressed() -> void:
	call_deferred("changeScene")

func changeScene() -> void:
	get_tree().change_scene_to_file(GlobalVariables.levelToSceneDictionary[level])

extends Node2D

@export var myColor: GlobalVariables.MainColors = GlobalVariables.MainColors.RED
@export var colorsToChangeTo: Array[GlobalVariables.MainColors]
var currentColorIndex: int = 0

func _ready() -> void:
	changeColor(myColor)

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("changeColor"):
		currentColorIndex = (currentColorIndex + 1)%colorsToChangeTo.size()
		changeColor(colorsToChangeTo[currentColorIndex])
		updateObjects(colorsToChangeTo[currentColorIndex])
		

func changeColor(color: GlobalVariables.MainColors) -> void:
	modulate = GlobalVariables.colorToColorDictionary[color]
		
func updateObjects(color: GlobalVariables.MainColors) -> void:
	for block in get_tree().get_nodes_in_group("Blocks"):
		block.updateWithBackgroundColor(color)

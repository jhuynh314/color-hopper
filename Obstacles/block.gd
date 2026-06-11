class_name Block extends StaticBody2D

@export var myColor: GlobalVariables.MainColors = GlobalVariables.MainColors.RED

func _ready() -> void:
	changeColor(myColor)

func changeColor(color: GlobalVariables.MainColors) -> void:
	disableAllCollisionLayers()
	modulate = GlobalVariables.colorToColorDictionary[color]
	set_collision_layer_value((GlobalVariables.colorToLayerDictionary[color]), true)
	
func disableAllCollisionLayers() -> void:
	for color in GlobalVariables.colorToLayerDictionary:
		set_collision_layer_value(GlobalVariables.colorToLayerDictionary[color], false)

func updateWithBackgroundColor(color: GlobalVariables.MainColors):
	if myColor == color:
		set_collision_layer_value((GlobalVariables.colorToLayerDictionary[color]), false)
	else:
		set_collision_layer_value((GlobalVariables.colorToLayerDictionary[myColor]), true)

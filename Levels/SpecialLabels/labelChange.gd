extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var powerNodes = get_tree().get_nodes_in_group("Color Powers")
	for powerNode in powerNodes:
		powerNode.connect("addColor", updateText)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func updateText(_color: GlobalVariables.MainColors) -> void:
	text = "Cool, now LEFT CLICK"

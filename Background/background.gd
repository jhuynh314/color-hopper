extends Node2D

@export var myColor: GlobalVariables.MainColors = GlobalVariables.MainColors.RED
@export var colorsToChangeTo: Array[GlobalVariables.MainColors]
var currentColorIndex: int = 0

func _ready() -> void:
	changeColor(myColor)
	updateObjects(myColor)
	updateColorOrderUI()
		
	#Connect Color powers to background
	var powerNodes = get_tree().get_nodes_in_group("Color Powers")
	for powerNode in powerNodes:
		powerNode.connect("addColor", addColor)

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("changeColor"):
		if colorsToChangeTo.size() > 0:
			currentColorIndex = (currentColorIndex + 1)%colorsToChangeTo.size()
			changeColor(colorsToChangeTo[currentColorIndex])
			updateObjects(colorsToChangeTo[currentColorIndex])
			updateColorOrderUI()
		

func changeColor(color: GlobalVariables.MainColors) -> void:
	$Sprite2D.modulate = GlobalVariables.colorToColorDictionary[color]
		
func updateObjects(color: GlobalVariables.MainColors) -> void:
	for block in get_tree().get_nodes_in_group("Blocks"):
		block.updateWithBackgroundColor(color)

func addColor(color: GlobalVariables.MainColors):
	colorsToChangeTo.append(color)
	updateColorOrderUI()
	
func updateColorOrderUI():
	print(currentColorIndex)
	var boxes = $Colors.get_children() as Array[Control]
	var j = 0
	for i in colorsToChangeTo.size():
		boxes[i].visible = true
		boxes[i].updateColor(colorsToChangeTo[i])
		if i == currentColorIndex:
			boxes[i].selectBox()
		else :
			boxes[i].unselectBox()
		j += 1
	while j < boxes.size():
		boxes[j].visible = false
		j += 1
		
		
	

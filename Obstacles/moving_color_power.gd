extends RigidBody2D

@export var myColor: GlobalVariables.MainColors = GlobalVariables.MainColors.BLACK
signal addColor(color: GlobalVariables.MainColors)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	updateColor()
	
func updateColor():
	$Area2D/CPUParticles2D2.color = GlobalVariables.colorToColorDictionary[myColor]

func _on_area_2d_body_entered(body: Node2D) -> void:
	# Emit signal for background to update and then remove color power
	print(body)
	if body is Player:
		print("emmitting signal")
		emit_signal("addColor", myColor)
		queue_free()

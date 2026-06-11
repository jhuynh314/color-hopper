extends Area2D

@export var myColor: GlobalVariables.MainColors = GlobalVariables.MainColors.BLACK
signal addColor(color: GlobalVariables.MainColors)

func _ready() -> void:
	$CPUParticles2D.color = GlobalVariables.colorToColorDictionary[myColor]


func _on_body_entered(_body: Node2D) -> void:
	# Emit signal for background to update and then remove color power
	emit_signal("addColor", myColor)
	queue_free()

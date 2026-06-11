class_name Player extends CharacterBody2D

var direction_x: float
var speed: int = 200
var jumpStrength: int = 500


func _physics_process(delta: float) -> void:
	getInput()
	velocity.x = direction_x * speed	
	applyGravity(delta)
	move_and_slide()

func getInput():
	direction_x = Input.get_axis("left", "right")
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = -jumpStrength
		
func applyGravity(delta: float):
	velocity.y += GlobalVariables.gravity * delta

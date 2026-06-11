extends Area2D

@export var currentLevel = 1

func _on_body_entered(body: Node2D) -> void:
	print(body)
	print("You win")
	GlobalVariables.levelsCompletedDictionary[currentLevel] = true
	GlobalVariables.levelsUnlockedDictionary[(currentLevel+1) % 10] = true
	Engine.time_scale = 0.5
	$Timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().change_scene_to_file("res://LevelSelectMenu/level_select.tscn")

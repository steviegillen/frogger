extends Control

func _process(delta: float):
	if Input.is_action_just_pressed("start_game"):
		call_deferred("start_game")
		

func _ready() -> void:
	$Label2.text = "Quickest Time: " + str(Global.time) + "s"
		

func start_game():
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_timer_timeout() -> void:
	$Label3.visible = !$Label3.visible

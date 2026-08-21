extends Node2D

var direction := Vector2.ZERO
var speed := 1

func _physics_process(delta: float) -> void:
	direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")

	position += direction * speed

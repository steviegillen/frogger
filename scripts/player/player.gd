extends CharacterBody2D

var direction := Vector2.ZERO
var speed := 50


func _physics_process(delta: float) -> void:
	direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * speed
	move_and_slide()

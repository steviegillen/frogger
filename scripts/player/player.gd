extends CharacterBody2D

var direction := Vector2.ZERO
var speed := 50


func _physics_process(_delta: float) -> void:
	direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * speed
	animation()
	move_and_slide()

func animation():
	if direction:
		$AnimatedSprite2D.flip_h = direction.x > 0
		if direction.x != 0:
			$AnimatedSprite2D.animation = "walk_left"
		else:
			if direction.y > 0:
				$AnimatedSprite2D.animation = "walk_down"
			else:
				$AnimatedSprite2D.animation = "walk_up"
	else:
		$AnimatedSprite2D.frame = 0

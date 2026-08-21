extends Area2D

var direction = Vector2.LEFT
var speed = [90, 95, 100, 105, 110, 115, 120, 125, 130, 135, 140].pick_random()

var colours = [
	preload("res://graphics/cars/green.png"),
	preload("res://graphics/cars/red.png"),
	preload("res://graphics/cars/yellow.png"),
]

func _ready() -> void:
	if position.x < 0:
		direction.x = 1
		$Sprite2D.flip_h = true
	$Sprite2D.texture = colours.pick_random()
		

func _process(delta: float) -> void:
	position += direction * speed * delta


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
 
 

extends Camera2D

func _ready() -> void:
	zoom = Vector2(5,5)
	limit_left = -192
	limit_right = 192
	limit_bottom = 320
	limit_top = -320

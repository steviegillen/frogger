extends Node2D

var car_scene := preload("res://scenes/car.tscn")
var game_time := 0

func _on_area_2d_body_entered(body: Node2D) -> void:
	call_deferred("change_scene")
	if Global.time == 0:
		Global.time = game_time
	elif game_time < Global.time:
		Global.time = game_time

func change_scene():
	get_tree().change_scene_to_file("res://scenes/title.tscn")
	


func _on_car_timer_timeout() -> void:
	var car = car_scene.instantiate() as Area2D
	var pos_marker = $CarStartPositions.get_children().pick_random() as Marker2D
	car.position = pos_marker.position
	$Objects.add_child(car)
	car.connect("body_entered", go_to_title)

func go_to_title(_body):
	call_deferred("change_scene")


func _on_game_timer_timeout() -> void:
	game_time += 1
	$CanvasLayer/Label.text = str(game_time)

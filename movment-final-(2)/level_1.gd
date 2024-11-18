extends Node2D

func _on_area_2d_area_entered(area: Area2D) -> void:
	if Area2D:
		get_tree().reload_current_scene()
	
@onready var saw = $StaticBody2D2
@onready var saw2 = $StaticBody2D3
@onready var saw3 = $StaticBody2D4

var rotation_speed: float = 1.0
var rotation_direction: int = 1
var is_rotating: bool = true

func _process(delta):
	if is_rotating:
		saw.rotation += (rotation_direction * rotation_speed * delta)
		saw2.rotation += (rotation_direction * rotation_speed * delta)
		saw3.rotation += (rotation_direction * rotation_speed * delta)

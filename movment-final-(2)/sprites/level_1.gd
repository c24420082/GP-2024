extends Node2D

func _on_area_2d_area_entered(area: Area2D) -> void:
	if Area2D:
		get_tree().reload_current_scene()
	
@onready var saw = $TileMapLayer2/StaticBody2D

var rotation_speed: float = 1.0
var rotation_direction: int = 1
var is_rotating: bool = true

func _process(delta):
	if is_rotating:
		saw.rotation += (rotation_direction * rotation_speed * delta)

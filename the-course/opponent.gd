extends Sprite2D

@export var time = 5

@export var speed= 10
@onready var player = $"../player"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var a:float = 10.0 / 17.0 
	var b:float
	b = a * 17.0
	print(b)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	
	var to_player:Vector2 =player.global_position - global_position 
	
	DebugDraw2D.set_text("Dist to player", to_player.length)
	
	to_player = to_player.normalized()
	DebugDraw2D.set_text("normalized to player", to_player.length)
	
	global_position = global_position + to_player * speed * _delta

	

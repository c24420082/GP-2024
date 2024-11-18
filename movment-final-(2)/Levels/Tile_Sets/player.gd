class_name Player
extends PlatformerCharacter2D
#note player in the main leevels needs to be an instance
@export_range(0, 100, .2,"or_greater") var move_speed : float = 50.0
#assign the player speed in the player inspector. 
@export_range(0, 100, .2, "or_greater") var ground_jump_force : float = 100.0


func _physics_process(delta: float) -> void:
	velocity.x = move_speed * direction.x
	_apply_gravity(delta)
	
	
	move_and_slide()
#makes character jump if possible 
func try_jump() -> bool:
	if is_on_floor():
		_jump()
		return true 
		
	return false
#execute a ground jump
func _jump():
	velocity.y -= ground_jump_force 

extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var direction := -1

var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		

	velocity.x = direction * SPEED 

	move_and_slide()

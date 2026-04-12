extends CharacterBody2D


const SPEED = 700.0
const JUMP_VELOCITY = -400.0

@onready var wall_detector := $wall_detector as RayCast2D
@onready var sprite := $texture as Sprite2D
var direction := -1

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	# Rotaciona o raio para a direção que o inimigo está caminhando
	wall_detector.target_position.x = 7 * direction
	
	if wall_detector.is_colliding():
		direction *= -1
	
	# Vira a sprite na direção correta
	sprite.flip_h = direction > 0
	velocity.x = direction * SPEED * delta

	move_and_slide()

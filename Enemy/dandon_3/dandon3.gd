extends CharacterBody2D
class_name dandon3

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
@onready var health: Health = $Health


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	velocity.x = -10

	move_and_slide()
	
	if health.health <= 0:
		queue_free()

extends CharacterBody2D
class_name BallonBoy

@export var ballonsNumber : int = 0

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
const Floatting = 100.0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		if Input.is_action_pressed("Jump") and ballonsNumber > 0 :
			velocity.y = min(velocity.y + get_gravity().y * delta,Floatting)
			print("floating")
		else:
			velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

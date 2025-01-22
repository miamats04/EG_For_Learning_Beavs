extends CharacterBody2D

const SPEED = 300.0

func _physics_process(_delta):	
	
	var input_direction = Input.get_vector("Move_Left", "Move_Right", "Move_Up", "Move_Down")
	velocity = input_direction * SPEED

	move_and_slide()

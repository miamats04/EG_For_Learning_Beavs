extends CharacterBody2D

const SPEED = 350.0

func _physics_process(_delta):	
	
	#Input_directon is a vector variable determined by user input. 
	var input_direction = Input.get_vector("Move_Left", "Move_Right", "Move_Up", "Move_Down")
	
	velocity = input_direction * SPEED

	#Built in function within Godot that deals with player movement
	move_and_slide()

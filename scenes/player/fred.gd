extends CharacterBody2D

@export var SPEED = 100


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var movementVector = getMovementVector()
	var direction = movementVector.normalized()
	velocity = direction * SPEED
	move_and_slide()

func getMovementVector():
	
	var xMovement = Input.get_action_strength("moveRight") - Input.get_action_strength("moveLeft")
	var yMovement = Input.get_action_strength("moveDown") - Input.get_action_strength("moveUp")
	return Vector2(xMovement, yMovement)

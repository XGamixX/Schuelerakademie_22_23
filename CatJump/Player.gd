extends KinematicBody2D

const GRAVITY = 10
const JUMP_SPEED = -500

# velocity beschreibt in einem zweidimensionalen Vektor die Bewegung des Players im 2D Feld. Hat also x und y Wert.
var velocity = Vector2.ZERO


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Die Gravitation wirkt sich auf den y-Wert aus
	velocity.y += GRAVITY
	
	# Sprung der Katze nur, wenn die Katze auf dem Boden steht:
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_SPEED
	
	
	# Die Methode move_and_slide ist für das Bewegen des KinematicBody2D verantwortlich
	move_and_slide(velocity, Vector2.UP)

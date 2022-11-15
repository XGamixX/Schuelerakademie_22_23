extends KinematicBody2D

const GRAVITY = 10
const JUMP_SPEED = -500

# velocity beschreibt in einem zweidimensionalen Vektor die Bewegung des Players im 2D Feld. Hat also x und y Wert.
var velocity = Vector2.ZERO

# collisioncounter zählt die Anzahl der Kontakte
var collisioncounter = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	# Die Gravitation wirkt sich auf den y-Wert aus
	velocity.y += GRAVITY
	
	# Sprung der Katze nur, wenn die Katze auf dem Boden steht:
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_SPEED
	
	
	# Die Methode move_and_slide ist für das Bewegen des KinematicBody2D verantwortlich
	move_and_slide(velocity, Vector2.UP)

# Die Methode wird bei Kollision mit einem Obstacle ausgeführt
func collision():
	collisioncounter += 1
	# erste Berührung -> Pflaster
	if collisioncounter == 1:
		$Patch.visible = true
	# zweite Berührung -> Gameover
	if collisioncounter == 2:
		get_tree().quit()

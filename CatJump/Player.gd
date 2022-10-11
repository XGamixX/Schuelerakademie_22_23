extends KinematicBody2D

const GRAVITY = 10
const SPEED_HEIGHT = 50

# motion beschreibt in einem zweidimensionalen Vektor die Bewegung des Players im 2D Feld. Hat also x und y Wert.
var motion = Vector2.ZERO


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Die Gravitation wirkt sich auf den y-Wert aus
	motion.y = motion.y + GRAVITY
	
	# die Print-Methode ist oft hilfreich bei der Fehlersuche
	# print(motion.y)
	
	# Die Methode move_and_slide ist für das Bewegen des KinematicBody2D verantwortlich
	move_and_slide(motion)

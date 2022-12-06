extends KinematicBody2D

const GRAVITY = 10
const JUMP_SPEED = -500

# velocity beschreibt in einem zweidimensionalen Vektor die Bewegung des Players im 2D Feld. Hat also x und y Wert.
var velocity = Vector2.ZERO



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	# Die Gravitation wirkt sich auf den y-Wert aus
	velocity.y += GRAVITY
	
	# Sprung der Katze nur, wenn die Katze auf dem Boden steht:
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_SPEED
		$AudioStreamPlayer.play()
	
	if is_on_floor():
		$AnimatedSprite.play("walk")
	else:
		$AnimatedSprite.play("jump")
	# Die Methode move_and_slide ist für das Bewegen des KinematicBody2D verantwortlich
	velocity = move_and_slide(velocity, Vector2.UP)

# Die Methode wird bei Kollision mit einem Obstacle ausgeführt
func collision():
	# Überprüfe, ob der current_score größer ist als der bisherige highscore, 
	# wenn ja, dann wird der Wert current_score als neuer highsore gesetzt. 
	if GameState.current_score > GameState.highscore:
		GameState.highscore = GameState.current_score
	
	# Damit das nächste Spiel mit current_score 0 startet, muss der current_score auch wieder auf 0 gesetzt werden
	GameState.current_score = 0
	# Wechsel zurück ins Menu:
	get_tree().change_scene("res://Menu.tscn")

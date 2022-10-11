extends Sprite

const SPEED = 5

func _process(delta):
	# print("Hallo Schülerakademie")
	# wenn die rechte Pfeiltaste gedrückt wird, dann soll sich das Sprite um eins nach rechts bewegen:
	if Input.is_action_pressed("ui_right"):
		position.x = position.x + SPEED
	# analog nach links
	if Input.is_action_pressed("ui_left"):
		position.x = position.x - SPEED
	# analog nach oben
	if Input.is_action_pressed("ui_up"):
		position.y = position.y - SPEED
	# analog nach unten
	if Input.is_action_pressed("ui_down"):
		position.y = position.y + SPEED
	
	# Hausaufgabe: 	
	if position.x > (1024 + 32):
		position.x = -32
	if position.x < -32: 
		position.x = 1024 + 32
	if position.y > 600 + 32:
		position.y = -32
	if position.y < -32:
		position.y = 600 + 32

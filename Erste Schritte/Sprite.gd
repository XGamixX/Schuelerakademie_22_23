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

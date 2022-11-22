extends Area2D

# eine Liste aller Animationen
var obstacle_list = ["couch", "family", "kittens", "maru", "pile", "pizza", "sloth"]

# Diese Funktion wird beim einmalig aufgerufen, wenn das Obstacle-Objekt erzeugt wird
func _ready():
	randomize()
	$AnimatedSprite.play(obstacle_list[randi() % 7])


func _physics_process(_delta):
	position.x -= 10


func _on_VisibilityNotifier2D_screen_exited():
	# Löschen des Objects:
	queue_free()



func _on_Obstacle_body_entered(body):
	body.collision()

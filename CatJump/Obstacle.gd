extends Area2D


func _physics_process(_delta):
	position.x -= 10


func _on_VisibilityNotifier2D_screen_exited():
	# Löschen des Objects:
	queue_free()



func _on_Obstacle_body_entered(body):
	body.collision()

extends Node2D

# Preload der Szene (Schritt 1): 
const OBSTACLE = preload("res://Obstacle.tscn")


func _on_Timer_timeout():
	# eine Instanz von OBSTACLE erzeugen (Schritt 2):
	var obstacle = OBSTACLE.instance()
	# die Instanz der Szene als Kind hinzufügen (Schritt 3):
	add_child(obstacle)

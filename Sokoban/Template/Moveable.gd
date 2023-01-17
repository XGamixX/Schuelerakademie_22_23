extends Area2D

const TILE_SIZE = 64
const SPEED = 0.1

var moving = false


func _on_Tween_tween_completed(object, key):
	moving = false
	

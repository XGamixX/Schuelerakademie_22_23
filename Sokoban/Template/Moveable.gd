extends Area2D

const TILE_SIZE = 64

var speed = 0.15
var moving = false


func _on_Tween_tween_completed(object, key):
	moving = false
	
func direction_free(direction):
	if direction == Vector2.UP:
		return not $RayUp.is_colliding()
	if direction == Vector2.RIGHT:
		return not $RayRight.is_colliding()
	if direction == Vector2.DOWN:
		return not $RayDown.is_colliding()
	if direction == Vector2.LEFT:
		return not $RayLeft.is_colliding()

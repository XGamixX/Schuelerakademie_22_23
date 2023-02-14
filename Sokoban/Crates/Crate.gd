extends "res://Template/Moveable.gd"

signal blocked


func _ready():
	speed = 0.05

func _on_Crate_area_entered(player):
	var player_position = Vector2(player.global_position - global_position).normalized()
	move(-player_position)


func move(direction):
	if moving:
		return
	if direction_free(direction):
		moving = true
		direction *= TILE_SIZE
		$Tween.interpolate_property(
			self, 
			"position", 
			position, 
			position + direction, 
			speed,
			Tween.TRANS_LINEAR,
			Tween.EASE_OUT_IN,
			0
		)
		$Tween.start()
	else: 
		emit_signal("blocked")

extends "res://Template/Moveable.gd"

tool

signal blocked


func _ready():
	speed = 0.1

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


func _get_configuration_warning():
	if get_parent().name != "Crates":
		return "Achtung, Crate muss immer unterhalb des Nodes Crates liegen!"
	return ""

extends Node

export (Array, Resource) var levels
export var current_level = 0

func _load_level():
	var scene
	if levels.size == current_level:
		get_tree().quit()
	else:
		scene = levels[current_level]
		get_tree().change_scene_to(scene)

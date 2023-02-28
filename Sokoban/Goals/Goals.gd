extends Node

signal victory

var number_of_goals = 0
var number_of_filled_goals = 0

func _ready():
	for goal in get_children():
		number_of_goals += 1
		goal.connect("filled", self, "goal_filled")
		


func goal_filled(filled : bool):
	if filled:
		number_of_filled_goals += 1
	else:
		number_of_filled_goals -= 1
	
	if number_of_filled_goals == number_of_goals:
		emit_signal("victory")

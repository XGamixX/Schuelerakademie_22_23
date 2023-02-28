extends Area2D

tool 

signal filled

func _on_Goal_area_entered(area):
	emit_signal("filled", true)


func _on_Goal_area_exited(area):
	emit_signal("filled", false)

func _get_configuration_warning():
	if get_parent().name != "Goals":
		return "Achtung, Goal muss immer unterhalb des Nodes Goals liegen!"
	return ""

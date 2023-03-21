extends Particles2D

signal particles_done

func _on_Goals_victory():
	emitting = true
	# Der Timer wird gestartet
	$VictoryTimer.start()


func _on_VictoryTimer_timeout():
	emit_signal("particles_done")

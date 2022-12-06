extends Control


func _ready():
	$HighscoreLabel.text += str(GameState.highscore)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("jump"):
		get_tree().change_scene("res://Level.tscn")

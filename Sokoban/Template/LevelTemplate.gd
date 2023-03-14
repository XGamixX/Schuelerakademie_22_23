extends Node2D

onready var Player = $Player

func _ready():
	for crate in $Crates.get_children():
		crate.connect("blocked", Player, "iAmBlocked")


func _on_Goals_victory():
	print(Gamestate.levels.size())
	Gamestate.current_level += 1
	Gamestate.load_level()

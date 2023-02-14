extends Node2D

onready var Player = $Player

func _ready():
	for crate in $Crates.get_children():
		crate.connect("blocked", Player, "iAmBlocked")

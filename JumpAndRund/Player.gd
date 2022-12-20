extends KinematicBody2D

const GRAVITY = 10
const JUMP_HEIGHT = -400
const SPEED = 250
var motion : Vector2 = Vector2.ZERO


# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	motion.y += GRAVITY
	
	# Movement
	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
		$AnimatedSprite.flip_h = true
	else:
		motion.x = 0
	
	# Jumping
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		motion.y = JUMP_HEIGHT
	
	# Animation
	if is_on_floor():
		if motion.x == 0:
			$AnimatedSprite.play("idle")
		else:
			$AnimatedSprite.play("walk")
	else:
		$AnimatedSprite.play("jump")
	
	
	motion = move_and_slide(motion, Vector2.UP)

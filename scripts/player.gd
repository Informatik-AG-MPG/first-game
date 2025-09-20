extends CharacterBody2D

@export var speed: int = 100

func _init():
	print("Hello, World!")
	var window_size: Vector2 = DisplayServer.screen_get_size()
	print(window_size)
	var starting_position: Vector2 = window_size / 2
	position = starting_position

func _process(delta: float) -> void:
	# check for user input
	if Input.is_action_pressed("right"):
		position += Vector2(speed, 0) * delta
	if Input.is_action_pressed("left"):
		position += Vector2(-speed, 0) * delta
	if Input.is_action_pressed("up"):
		position += Vector2(0, -speed) * delta
	if Input.is_action_pressed("down"):
		position += Vector2(0, speed) * delta

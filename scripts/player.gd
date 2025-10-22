extends CharacterBody2D

# a variable that is editable using the inspector / Eine Variable die mit dem Inspektor bearbeitbar ist
@export var speed: int = 100

# function that is only executed on application start / Funktion die beim Spielstart ausgeführt wird
func _init():
	# print to the console / Auf die Konsole drucken
	print("Hello, World!")
	# save screen size in variable / Bildschrimgröße in Variable speichern
	var window_size: Vector2 = DisplayServer.screen_get_size()
	print(window_size)
	var starting_position: Vector2 = window_size / 2
	# position player at the center of the screen / Spieler auf Mitte des Bildschirms setzen
	position = starting_position

func _process(delta: float) -> void:
	# check for user input / Benutzerinput abfragen
	if Input.is_action_pressed("right") == true:
		position = position + Vector2(speed, 0) * delta
	if Input.is_action_pressed("left"):
		position += Vector2(-speed, 0) * delta
	if Input.is_action_pressed("up"):
		position += Vector2(0, -speed) * delta
	if Input.is_action_pressed("down"):
		position += Vector2(0, speed) * delta

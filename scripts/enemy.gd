extends RigidBody2D

@export var speed: int = 200

func _process(delta: float) -> void:
	position += Vector2(100, 0) * delta

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()

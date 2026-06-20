extends NodeState

@export var player: Player
@export var animated_sprite_2d: AnimatedSprite2D
@export var speed: int = 150


func _on_process(_delta : float) -> void:
	pass

func _on_physics_process(_delta : float) -> void:
	var direction: Vector2 = GameInputEvents.movement_input()

	if direction.x != 0:
		animated_sprite_2d.play("side_walk")
		animated_sprite_2d.flip_h = direction.x < 0
	else:
		animated_sprite_2d.play("front_walk")

	player.velocity = direction * speed
	player.move_and_slide()


func _on_next_transitions() -> void:
	if !GameInputEvents.is_movement_input():
		transition.emit("Idle")


func _on_enter() -> void:
	pass


func _on_exit() -> void:
	pass

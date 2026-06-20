extends Node2D

var opened = false
var busy = false

func _on_area_2d_body_entered(body):
	if body is Player:
		print("Player near drawer")
		body.interact_target = self

func _on_area_2d_body_exited(body):
	if body is Player:
		body.interact_target = null

func interact():
	if busy:
		return

	if opened:
		$AnimatedSprite2D.play_backwards("open")
	else:
		$AnimatedSprite2D.play("open")

	busy = true


func _on_animated_sprite_2d_animation_finished() -> void:
	busy = false
	opened = !opened

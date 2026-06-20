extends Node2D

var opened = false
var busy = false

func _on_area_2d_body_entered(body):
	if body is Player:
		body.interact_target = self

func _on_area_2d_body_exited(body):
	if body is Player:
		body.interact_target = null

func interact():
	if busy:
		return

	if opened:
		close_drawer()
	else:
		open_drawer()

func open_drawer():
	busy = true
	$AnimatedSprite2D.play("open")

func close_drawer():
	busy = true
	$AnimatedSprite2D.play("close")


func _on_animated_sprite_2d_animation_finished() -> void:
	busy = false
	opened = !opened

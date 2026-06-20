class_name Player
extends CharacterBody2D

var player_direction : Vector2
var interact_target = null

func _input(event):
	if event.is_action_pressed("interact"):
		print("pressed interact")
		print(interact_target)
		if interact_target and interact_target.has_method("interact"):
			print("found target")
			interact_target.interact()

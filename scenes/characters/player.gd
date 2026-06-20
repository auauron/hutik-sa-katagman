class_name Player
extends CharacterBody2D

var player_direction : Vector2
var interact_target = null

func _input(event):
	if event.is_action_pressed("interact"):
		if interact_target:
			interact_target.enter()

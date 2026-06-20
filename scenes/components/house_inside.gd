extends Node2D

func _ready():
	var player = preload("res://scenes/characters/player.tscn").instantiate()
	add_child(player)
	player.global_position = $PlayerSpawn.global_position

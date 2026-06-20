extends Node2D

func _ready():
	var player = get_tree().get_first_node_in_group("player")

	if player == null:
		player = preload("res://scenes/characters/player.tscn").instantiate()
		add_child(player)

	if SceneManager.next_spawn != "":
		player.global_position = get_node(SceneManager.next_spawn).global_position
		SceneManager.next_spawn = ""

extends Node2D

func _ready():
	var existing_player = get_tree().get_first_node_in_group("player")

	if existing_player == null:
		var player = preload("res://scenes/characters/player.tscn").instantiate()
		add_child(player)
		player.global_position = $PlayerSpawn.global_position

var player_near = false

func _on_area_2d_body_entered(body):
	if body is Player:
		print("Player near house")
		player_near = true
		body.interact_target = self
		print(body.interact_target)
		
func _on_area_2d_body_exited(body):
	if body is Player:
		player_near = false
		body.interact_target = null
		
func interact():
	SceneManager.next_spawn = "OutsideHouseSpawn"
	get_tree().change_scene_to_file("res://scenes/test/test_scene_map.tscn")

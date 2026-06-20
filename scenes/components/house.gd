extends Node2D

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
	get_tree().change_scene_to_file("res://scenes/components/house_inside.tscn")

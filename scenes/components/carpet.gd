extends Node2D

@onready var prompt = $"UI/CanvasLayer/PromptLabel"

func _ready():
	prompt.visible = false
	
func _on_area_2d_body_entered(body):
	if body is Player:
		print("Player near carpet")
		body.interact_target = self
		prompt.visible = true

func _on_area_2d_body_exited(body):
	if body is Player:
		body.interact_target = null
		prompt.visible = false

func interact():
	pass

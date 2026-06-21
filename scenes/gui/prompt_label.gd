extends Node2D

@onready var prompt = $CanvasLayer/Label

func _ready():
	prompt.visible = false

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		prompt.text = "Press E to interact"
		prompt.visible = true

func _on_area_2d_body_exited(body):
	if body.name == "Player":
		prompt.visible = false

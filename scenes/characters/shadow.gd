extends Node2D

func _draw():
	draw_set_transform(Vector2.ZERO, 0, Vector2(2.0,1.0))
	draw_circle(Vector2.ZERO, 6, Color(0,0,0,0.35))
	draw_set_transform(Vector2.ZERO, 0, Vector2.ONE)
	
func _ready():
	position= Vector2(0,16)
	queue_redraw()
	

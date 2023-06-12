extends Camera2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func move_camera(placement):
	offset = placement

func _on_grid_place_camera(placement):
	move_camera(placement)

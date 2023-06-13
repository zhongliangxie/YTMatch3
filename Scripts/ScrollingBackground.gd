extends Node2D

export (int) var speed

func _process(delta):
	position.x -= speed * delta
	if position.x < -576:
		position.x = 0

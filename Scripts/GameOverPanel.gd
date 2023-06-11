extends "res://Scripts/BaseMenuPanel.gd"


func _ready():
	pass # Replace with function body.


func _on_Quit_Button_pressed():
	get_tree().change_scene("res://Scenes/Game Menu.tscn")

func _on_Restart_pressed():
	get_tree().reload_current_scene()


func _on_grid_game_over():
	slide_in()

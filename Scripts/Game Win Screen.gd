extends "res://Scripts/BaseMenuPanel.gd"

func _on_ContinueButton_pressed():
	get_tree().change_scene("res://Scenes/Game Menu.tscn")

func _on_GoalHolder_game_won():
	slide_in()

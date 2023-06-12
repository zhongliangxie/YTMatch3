extends Control

signal read_sound

func _ready():
	#Main Menu panel active
	$Main.slide_in()


func _on_Main_settings_pressed():
	emit_signal("read_sound")
	$Main.slide_out()
	$Settings.slide_in()

func _on_Settings_back_button():
	$Settings.slide_out()
	$Main.slide_in()

func _on_Main_play_pressed():
	get_tree().change_scene("res://Scenes/LevelSelectScene.tscn")

func _on_Settings_sound_change():
	ConfigManager.sound_on = !ConfigManager.sound_on

extends TextureRect

signal pause_game
signal booster_pressed

func _on_Pause_pressed():
	emit_signal("pause_game")
	get_tree().paused = true

func _on_Booster1_pressed():
	emit_signal("booster_pressed", BoosterInfo.booster_info[1])

func _on_Booster2_pressed():
	emit_signal("booster_pressed", BoosterInfo.booster_info[1])

func _on_Booster3_pressed():
	emit_signal("booster_pressed", BoosterInfo.booster_info[1])

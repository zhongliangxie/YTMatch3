extends HBoxContainer

func _ready():
	active_booster_buttons()

func active_booster_buttons():
	for i in range(1, get_child_count()):
		if get_child(i).is_in_group("Boosters"):
			if BoosterInfo.booster_info[i] == "":
				get_child(i).check_active(false)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

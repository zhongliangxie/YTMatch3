extends Node

var level_info = {}
var default_level_info = {
	1:{
		"unlocked": true,
		"high score": 0,
		"stars unlocked": 0
		}
	}

var level_scroll_value = 0

onready var path = "user://save.dat"

func _ready():
	print(level_info)
	level_info = load_data()

func save_data():
	var file = File.new()
	var err = file.open(path, File.WRITE)
	if err != OK:
		print("something went wrong")
		return
	file.store_var(level_info)
	file.close()

func load_data():
	var file = File.new()
	var err = file.open(path, File.READ)
	
	if err != OK:
		return default_level_info
	var read = {}
	read = file.get_var()
	return read

func change_level_scroll_value(new_value):
	level_scroll_value = new_value

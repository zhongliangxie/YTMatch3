extends TextureButton

enum {add_to_counter, make_color_bomb, destroy_piece}
var state

var active = false
var activeTexture
signal pressed_booster

export (Texture) var color_bomb_texture
export (Texture) var add_counter_texture
export (Texture) var destroy_piece_texture

func _ready():
	pass # Replace with function body.

func check_active(is_active, type):
	if is_active:
		if type == "Color Bomb":
			texture_normal = color_bomb_texture
		elif type == "Counter Bomb":
			texture_normal = add_counter_texture
		elif type == "Destroy Piece":
			texture_normal = destroy_piece_texture
	else:
		texture_normal = null

extends TextureButton

enum {add_to_counter, make_color_bomb, destroy_piece}
var state

var active = false
var activeTexture
signal pressed_booster

export (Texture) var color_bomb_texture
export (Texture) var add_counter_texture
export (Texture) var destroy_piece_texture
var type = ""

func _ready():
	pass # Replace with function body.

func check_active(is_active, booster_type):
	if is_active:
		if booster_type == "Color Bomb":
			texture_normal = color_bomb_texture
			type = "Color Bomb"
		elif booster_type == "Add To Counter":
			texture_normal = add_counter_texture
			type = "Add To Counter"
		elif booster_type == "Destroy Piece":
			texture_normal = destroy_piece_texture
			type = "Destroy Piece"
	else:
		texture_normal = null
		type = ""

extends TextureButton

enum {add_to_counter, make_color_bomb, destroy_piece}
var state

var active = false
export (Texture) var activeTexture


func _ready():
	pass # Replace with function body.

func check_active(is_active):
	if is_active:
		texture_normal = activeTexture
	else:
		texture_normal = null

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

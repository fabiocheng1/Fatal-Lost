extends Button


# Called when the node enters the scene tree for the first time.
func _pressed():
	print(2)
	get_tree().change_scene_to_file("res://CENAS/OPÇÕES SCENE.tscn")

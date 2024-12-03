extends Button


# Called when the node enters the scene tree for the first time.
func _pressed():
	print(3)
	get_tree().change_scene_to_file("res://CENAS/TITLE SCENE.tscn")

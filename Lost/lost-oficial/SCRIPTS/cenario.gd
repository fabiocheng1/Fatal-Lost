extends CharacterBody2D




var x = 0
func _physics_process(delta: float) -> void:
	#x += 100
	#if x > 0:
		#x *= -1
	#velocity = Vector2(x, 0)
	
	if get_slide_collision_count() > 0:
		get_tree().change_scene_to_file("res://CENAS/SALA.tscn")

	move_and_slide()

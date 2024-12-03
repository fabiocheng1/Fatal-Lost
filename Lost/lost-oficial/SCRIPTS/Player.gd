extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	
	if direction:
		$"IMAGEM PLAYER".animation = "ANDANDO"
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		$"IMAGEM PLAYER".animation = "PARADO"
		
		
	if get_slide_collision_count() > 0:
		var col = get_last_slide_collision()
		if col.get_collider().name == "parede2":
			get_tree().change_scene_to_file("res://CENAS/corredor.tscn")
		


	move_and_slide()

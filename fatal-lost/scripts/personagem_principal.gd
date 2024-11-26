extends CharacterBody2D

var cont 
func _ready():
	cont = 0

func _physics_process(delta):
	var eixox = Input.get_axis("esquerda","direita")
	
	
	var eixoy = Input.get_axis("pulo" , "")
	var intensidade = 100
	
	if eixox == -1:
		$animacaopersonagem.flip_h = true
	if eixox == 1:
		$animacaopersonagem.flip_h = false 
	if eixoy == -1:
		$animacaopersonagem.animation = "pulo"
	if is_on_floor():
		$animacaopersonagem.animation = "direita"
		if eixox == 0 and eixoy == 0:
			$animacaopersonagem.animation = "parado"
		
	
	
	
	if eixoy == -1 and is_on_floor() and cont != 2:
		
		velocity.y = -1000
		cont += 1
	velocity = Vector2(100*eixox, velocity.y + 30)
	

	print_debug(velocity)
	move_and_slide()

extends Node2D
var tempo = 0
func _ready():
	$PLAYER/IMAGEM_PLAYER.animation = "andando"
	get_node("IMAGEM DIÁLOGO").visible = false
	$cenario.velocity = Vector2(-100,0)
	
func _physics_process(delta):
	
	tempo += 1
	print(tempo)
	if tempo == 100:
		$"CAIXA DE DIÁLOGO".text = "Em um fatidico dia seu amigo sumiu"
	if tempo == 250:
		$"CAIXA DE DIÁLOGO".text = "As pistas levam a uma casa"
	if tempo == 540:
		get_node("IMAGEM DIÁLOGO").visible = true
		$"CAIXA DE DIÁLOGO".text = "EI SEU MOLEQUE"
		$PLAYER/IMAGEM_PLAYER.animation = "parado"
		$cenario.velocity = Vector2(0,0)
		
	if tempo == 600:
		get_node("IMAGEM DIÁLOGO").visible = false
		$"CAIXA DE DIÁLOGO".text = ""
		$PLAYER/IMAGEM_PLAYER.animation = "andando"
		$cenario.velocity = Vector2(-100,0)
		
		

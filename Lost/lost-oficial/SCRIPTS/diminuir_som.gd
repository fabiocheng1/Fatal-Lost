extends Button

var numero = 20

# Called when the node enters the scene tree for the first time.
func _pressed():
	numero -= 1
	print("diminuir som")
	$"../NÚMERO SOM".text = str(numero) 

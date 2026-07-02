extends Control

func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	if data is Card:
		print("Segurando uma carta")
		return true
	return false	
	
func _drop_data(at_position: Vector2, data: Variant) -> void:
	var carta := data as Card
	print("Carta Jogada: 
		Nome: %s
		Custo: %d
		Descrição: %s" % [carta.card_name, carta.cost, carta.description])
	# solicita pro combatcontroller

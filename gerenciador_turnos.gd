extends Node2D

@export_category("Turno")
@export var numero_turno: int = 0
@export_category("Energia")
@export var energia_maxima: int = 5
var energia_atual:int


signal turno_alterado(numero_turno:int)
signal energia_alterada(energia_atual:int, energia_max:int)

func _ready() -> void:
	iniciar_turno()

func iniciar_turno():
	numero_turno += 1
	energia_atual = energia_maxima
	turno_alterado.emit(numero_turno)
	energia_alterada.emit(energia_atual, energia_maxima)
	
func pode_gastar_energia(custo:int):
	return energia_atual >= custo
	
func gastar_energia(custo:int):
	if not pode_gastar_energia(custo):
		return false
	energia_atual -= custo
	energia_alterada.emit(energia_atual,energia_maxima)
	return true


func _on_botao_fim_turno_pressed() -> void:
	print("JOGADA INIMIGA")
	iniciar_turno()

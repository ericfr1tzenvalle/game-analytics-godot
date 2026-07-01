extends Control

@onready var label_energia: Label = $TextoEnergia
@onready var label_turno: Label = $TextoTurno

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_gerenciador_turnos_energia_alterada(energia_atual: int, energia_max: int) -> void:
	label_energia.text = "ENERGIA %d/%d" % [energia_atual,energia_max]


func _on_gerenciador_turnos_turno_alterado(numero_turno: int) -> void:
	label_turno.text = "TURNO %d" % numero_turno

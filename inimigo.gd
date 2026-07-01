class_name Enemy
extends Control
@export_category("Status")
@export var dano: int
var vida: int = vida_max
@export var vida_max: int
@export var defesa: int
@export var textura_color: Color
@export var nome: String = 'Default'

@onready var textura_atual: ColorRect = $Conteudo/Textura
@onready var barra_vida: ProgressBar = $Conteudo/BarraProgresso
@onready var nome_inimigo: Label = $Conteudo/Nome
@onready var texto_vida: Label = $Conteudo/Vida
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
"""
Função para atualizar barra de vida
"""
func atualizar_vida():
	barra_vida.max_value = vida_max
	barra_vida.value = vida
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


	

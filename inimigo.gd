class_name Enemy
extends Control
@export_category("Stats")
@export_range(1,1000) var damage: int = 3
@export_range(1,1000) var max_health: int = 20
var current_health: int 
@export var defense: int = 5

# for now, the enemy is represented by a solid color.
# This will later be replaced with a texture or portrait.
@export var texture_color: Color
@export var enemy_name: String = 'Default'

@onready var current_texture: ColorRect = $Conteudo/Textura
@onready var health_bar: ProgressBar = $Conteudo/BarraProgresso
@onready var name_label: Label = $Conteudo/Nome
@onready var health_label: Label = $Conteudo/Vida

# i been thinking to add a ID to identify instace of enemy if have more enemy to
# defree()
signal died()

func _ready() -> void:
	initialize_enemy()


func initialize_enemy() -> void:
	current_health = max_health
	name_label.text = enemy_name
	current_texture.color = texture_color
	update_health_display()

func update_health_display() -> void:
	health_bar.max_value = max_health
	health_bar.value = current_health
	health_label.text = 'HP [%d/%d]' % [current_health, max_health]
	
func is_dead() -> bool:
	return current_health <= 0
	
func take_damage(amount: int) -> void:
	if amount <= 0:
		return
	if is_dead():
		return
	var effective_damage: int = amount - defense
	current_health -= maxi(0, effective_damage)
	if current_health <= 0:
		current_health = 0
	update_health_display()
	if is_dead():
		died.emit()

func heal(amount: int) -> void:
	if amount <= 0:
		return
	if is_dead():
		return
	current_health += amount
	if current_health > max_health:
		current_health = max_health
	update_health_display()

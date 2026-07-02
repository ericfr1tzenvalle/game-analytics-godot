class_name Card
extends PanelContainer

@export_category("Property")
@export var card_id: int
@export var card_name: String
@export_range(0,10) var cost: int
@export var description: String
@export var effect: String
@export var effect_value: int
@export var color: Color

@onready var card_name_label: Label = $Margin/Content/Header/CardName
@onready var cost_label: Label = $Margin/Content/Header/Cost
@onready var artwork: ColorRect = $Margin/Content/ArtworkArea/Artwork
@onready var description_label: Label = $Margin/Content/DescriptionContainer/Description

# Responsabilidades principais comunicar que está sendo arrastada, e iniciar arrastar, criar o preview
# mostrar efeitos de hover e selecao e emitir uma solicitação quando o jogador soltar
func _ready() -> void:
	initialize_card()
	mouse_filter = Control.MOUSE_FILTER_STOP
	ignore_mouse_on_children()

# Isso é extremamente indicado pois os elementos filhos podem acabar captando 
# o _get_drag_data então devemos fazer uma função que aplica aos filhos que eles
# ignorem o mouse

func ignore_mouse_on_children() -> void:
	for child in get_children():
		ignore_mouse_recursive(child)
func ignore_mouse_recursive(node: Node) -> void:
	if node is Control:
		node.mouse_filter = Control.MOUSE_FILTER_IGNORE
	for child in node.get_children():
		ignore_mouse_recursive(child)
			
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _get_drag_data(at_position: Vector2) -> Variant:
	var preview_root := Control.new()
	var preview_card := duplicate()

	preview_card.position = -at_position
	preview_card.mouse_filter = Control.MOUSE_FILTER_IGNORE

	preview_root.add_child(preview_card)
	set_drag_preview(preview_root)
	return self

func initialize_card():
	card_name_label.text = card_name
	cost_label.text = str(cost)
	artwork.color = color
	description_label.text = description
	

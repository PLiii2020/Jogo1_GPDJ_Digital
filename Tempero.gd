extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var selecionado=false# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _process(delta):
	if selecionado:
		posicao_mouse()



func posicao_mouse():
	position=get_global_mouse_position()

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
 

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			selecionado=true
		else:
			selecionado=false	

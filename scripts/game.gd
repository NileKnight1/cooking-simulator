extends Node2D

func _ready() -> void:
	print("game ready")
	start_game()

func _process(delta: float) -> void:
	pass

var game_on = 0

func start_game():
	print("game start")
	game_on = 1

func check_event(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		return 1

func _on_meat_container_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if check_event(event):
		print("meat")
	
func _on_grill_1_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if check_event(event):
		print("grill1")




#

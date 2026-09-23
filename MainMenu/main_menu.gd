extends Control

@onready var main_container: VBoxContainer = $MainContainer
@onready var game_list: VBoxContainer = $GameList

func gamelistOnOff() -> void:
	game_list.visible = not game_list.visible
	main_container.visible = not main_container.visible
	
func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_play_button_pressed() -> void:
	gamelistOnOff()

func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		if main_container.visible == false :
			gamelistOnOff()


func _on_bb_air_adventure_pressed() -> void:
	get_tree().change_scene_to_file("res://BBAirAdventure/bb_air_adventure.tscn")

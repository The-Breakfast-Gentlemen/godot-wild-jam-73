extends Control

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menu/Main Menu/menu.tscn")
	AudioPlayer.button_click()

func _on_back_mouse_entered() -> void:
	AudioPlayer.button_hover()

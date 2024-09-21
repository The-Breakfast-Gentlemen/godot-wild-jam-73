extends Control

func  _ready():
	get_viewport().size = DisplayServer.screen_get_size()
	AudioPlayer.menu_music()

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://game.tscn")
	AudioPlayer.button_click()

func _on_play_mouse_entered() -> void:
	AudioPlayer.button_hover()

func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menu/Options Menu/options_menu.tscn")
	AudioPlayer.button_click()

func _on_options_mouse_entered() -> void:
	AudioPlayer.button_hover()

func _on_quit_pressed() -> void:
	get_tree().quit()
	AudioPlayer.button_click()

func _on_quit_mouse_entered() -> void:
	AudioPlayer.button_hover()

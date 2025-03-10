extends Control

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
func _on_button_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/World.tscn")

func _on_button_cuestionario_pressed() -> void:
	OS.shell_open("https://docs.google.com/forms/d/e/1FAIpQLScJUx7fE4OhOvpXLHvr2HUTNPNUwCpn1jqm5ieGxo40Ju8WgQ/viewform?usp=header")

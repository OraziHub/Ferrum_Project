extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_button_intro_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Intro.tscn")
	
func _on_button_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/World.tscn")
	
func _on_button_project_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Project.tscn")

func _on_button_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Start.tscn")
	
func _on_button_exit_pressed() -> void:
	get_tree().quit()

@tool
extends Node3D
class_name Item

@export var item_name : String = ""
@export var item_texture : Texture
@export_multiline var descripcion : String = ""

func _get_configuration_warnings():
	var string_array = PackedStringArray()
	
	if item_name == "":
		string_array.push_back("Item Name is required")

	if !item_texture:
		string_array.push_back("Item Texture is required")

	return string_array

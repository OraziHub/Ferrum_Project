@tool
extends InteractableItem
class_name CollectableItem

@export var max_amount_collectable: int = 0

func interact(inventory_controller: InventoryController, callback: Callable):
	var found_item: InventoryItem = inventory_controller.find_item_by_name(item_name)
	
	if found_item:
		if found_item.quantity >= max_amount_collectable:
			return callback.call(ValidatedResponse.create_new_validated_response(true, "No puedes llevar más elementos de tipo: " + item_name))
			
	callback.call(ValidatedResponse.create_new_validated_response(false, "Añadido a Tu Inventario"))

func _get_configuration_warnings():
	var string_array = super._get_configuration_warnings()
	
	if max_amount_collectable == 0:
		string_array.push_back("You must set the Max Amount Collectable")
		
	return string_array

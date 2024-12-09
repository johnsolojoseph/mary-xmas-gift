extends Area2D

const Balloon = preload("res://Dialogue/balloon.tscn")

@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "start"

func action() -> void:
	var balloon = Balloon.instantiate()
	get_tree().current_scene.add_child(balloon)
	if not Global.hasDialogue:
		Global.hasDialogue = true
	balloon.start(dialogue_resource, dialogue_start)
	#DialogueManager.show_dialogue_balloon(dialogue_resource, dialogue_start)

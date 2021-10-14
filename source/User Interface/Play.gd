tool
extends Button

export(String, FILE) var next_scene_path: = ""

func _on_button_up() -> void:
	get_tree().change_scene(next_scene_path)
	PlayerData.score=0
	PlayerData.deaths=0

func _get_configuration_warning() -> String:
	return "Scene not available" if next_scene_path == "" else ""

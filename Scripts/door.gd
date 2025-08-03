extends Node2D

@onready var interaction_area: InteractionArea = $InteractionArea
@export_file var dest_scene: String = "res://Scenes/main_game.tscn"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	interaction_area.interact = Callable(self, "_on_interact")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_interact():
	if !dest_scene.contains("main_game"):
		global.player_pos = global_position
	get_tree().change_scene_to_file(dest_scene)

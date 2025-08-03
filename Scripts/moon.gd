extends Sprite2D

var dest_scene: String = "res://Scenes/the_end.tscn"

# Called when the node enters the scene tree for the first time.
func _end_game():
	get_tree().change_scene_to_file(dest_scene)

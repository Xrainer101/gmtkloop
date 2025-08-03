extends Node2D

@onready var timer: Timer = $Timer
@onready var label: Label = $Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label.hide()
	timer.start()


func _on_timer_timeout() -> void:
	label.show()

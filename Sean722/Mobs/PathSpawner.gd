extends Node2D

@onready var path = preload("res://Level 1 map/Level 1 map.tscn")

func _on_timer_timeout():
	var tempPath = path.instantiate()
	add_child(tempPath)

extends Node2D

@onready var path = preload("res://Sean722/Mobs/Level_1_Path.tscn")

func _on_timer_timeout():
	var tempPath = path.instantiate()
	add_child(tempPath)

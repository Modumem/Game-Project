extends Panel

@onready var tower = preload("res://Sean722/Assets/Retina/towerDefense_tile251.png")
var currtile

func _on_gui_input(event):
	var tenpTower = tower.instantiate
	if event is InputEventMouseButton and event.button_mask == 1:
		print ("Left button down")
	
	elif event is InputEventMouseButton and event.button_mask == 0:
		print ("Left button Up")




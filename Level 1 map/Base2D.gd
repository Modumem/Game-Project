extends Area2D



@onready var health = $ProgressBar

func _on_body_entered(body):
	if "Soldier_A" in body.name:
		health.value -= 5
		print(health.value)
		if health.value <= 0:
			get_tree().change_scene_to_file("res://Oliver/Main map/New main map.tscn")
			


	


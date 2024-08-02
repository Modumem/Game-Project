extends CharacterBody2D

@export var speed = 100
var Health = 10

func _process(delta):
	get_parent().set_progress(get_parent().get_progress() + speed * delta)
	if get_parent().get_progress_ratio() == 1:
		queue_free()  # Remove the soldier if at the end of the path
	if Health <= 0:
		queue_free()  # Remove the soldier if health drops to 0

func take_damage(amount: int):
	Health -= amount
	if Health <= 0:
		queue_free()  # Remove the soldier if health drops to 0

func _ready():
	# Ensure this sprite appears on top of the map
	self.z_index = 1

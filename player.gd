extends PathFollow3D

@export var move_speed: float = 4.0;

var moving: bool = false;

func _process(delta: float) -> void:
	if (Input.is_action_just_pressed('ui_accept')):
		moving = true;


func _physics_process(delta: float) -> void:
	if (moving):
		progress += move_speed * delta;
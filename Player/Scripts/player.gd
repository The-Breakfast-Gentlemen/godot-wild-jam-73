extends PathFollow3D

@export var move_speed: float = 4.0;

func _physics_process(delta: float) -> void:
	progress += move_speed * delta;
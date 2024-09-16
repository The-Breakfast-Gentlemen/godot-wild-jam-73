extends PathFollow3D

@export var max_move_speed: float = 4.0;
@export var min_move_speed: float = 1.0;
@export var mid_move_speed: float = 2.0;
@export var acceleration: float = 1200.0;

signal move_speed_changed;

var move_speed: float;

func _physics_process(delta: float) -> void:
	if (Input.is_action_pressed('move_right')):
		move_speed = max_move_speed;
		move_speed_changed.emit(move_speed);
	elif (Input.is_action_pressed('move_left')):
		move_speed = min_move_speed;
		move_speed_changed.emit(move_speed);
	else:
		move_speed = mid_move_speed;
		move_speed_changed.emit(move_speed);


	progress += move_speed * delta;

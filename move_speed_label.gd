extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_path_follow_3d_move_speed_changed(move_speed: float) -> void:
	text = 'Move speed: ' + str(move_speed);

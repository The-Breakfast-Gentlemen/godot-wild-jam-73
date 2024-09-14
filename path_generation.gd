extends Path3D

@onready var points: PackedVector3Array = curve.get_baked_points();
@onready var pathSegmentLength: float = curve.get_baked_length();

@export var offset: int = 1;

func _ready() -> void:
	var newOrigin: Vector3 = points[pathSegmentLength * offset];
	print(points);

	for point in points:
		curve.add_point(
			Vector3(point.x, point.y + newOrigin.y, point.z)
		);

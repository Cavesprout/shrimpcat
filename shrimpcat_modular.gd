extends Node2D

@export var num_segments = 3
var segment = load("res://segment_modular.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var prev_segment = $Head
	for i in range(num_segments):
		var new_segment = segment.instantiate()
		new_segment.position = Vector2(0, (i+1) * 70)
		add_child(new_segment)
		new_segment.get_node("Pin_Prev").node_b = prev_segment.get_path()
		prev_segment = new_segment
		
	$Butt.position = Vector2(0, (num_segments+1) * 70)
	$Butt/ButtPin.node_b = prev_segment.get_path()

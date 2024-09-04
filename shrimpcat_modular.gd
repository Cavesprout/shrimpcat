extends Node2D

@export var num_segments = 3
var segment = load("res://segment_modular.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var prev_segment = $Head
	for i in range(num_segments):
		var new_segment = segment.instantiate()
		new_segment.position = Vector2(0, (i+1) * 80)
		add_child(new_segment)
		new_segment.get_node("Pin_Prev").node_b = prev_segment.get_path()
		prev_segment = new_segment
		get_parent().get_node("Border").set_collision_layer_value(i+2, true)
		get_parent().get_node("Border").set_collision_mask_value(i+2, true)
		new_segment.set_collision_layer_value(i+2, true)
		new_segment.set_collision_mask_value(i+2, true)
	$Butt.position = Vector2(0, (num_segments+1) * 80)
	$Butt/ButtPin.node_b = prev_segment.get_path()
	move_child($Head, get_child_count())


func _process(delta: float) -> void:
	print(transform)

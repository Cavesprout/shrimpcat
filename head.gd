extends RigidBody2D

var hover = false
var grabbed = false

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	#print("Hover: ", hover)
	if Input.is_action_pressed("grab"):
		print("Trying to Grab")
		print("Hover: ", hover)
		if hover:
			print("Grabbed!")
			grabbed = true
	else:
		grabbed = false
		
	
	if grabbed:
		get_parent().get_node("ScreenInfo/TargetPin").node_a = get_path()
	else:
		get_parent().get_node("ScreenInfo/TargetPin").node_a = get_parent().get_node("ScreenInfo/Dummy").get_path()


func _on_mouse_entered() -> void:
	hover = true
	print("hover")

func _on_mouse_exited() -> void:
	hover = false
	print("stop hover")

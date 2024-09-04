extends RigidBody2D

var hover = false
var grabbed = false


func _process(delta: float) -> void:
	if Input.is_action_pressed("grab"):
		#if hover:
		if grabbed:
			
		else:
			grabbed = true
	else:
		grabbed = false
	


func _on_mouse_entered() -> void:
	hover = true

func _on_mouse_exited() -> void:
	hover = false

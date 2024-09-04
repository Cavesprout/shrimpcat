extends RigidBody2D

var hover = false
var grabbed = false


func _process(delta: float) -> void:
	if Input.is_action_pressed("grab"):
		#if hover:
		grabbed = true
	else:
		grabbed = false
	

const SPEED := 10000.0
func _physics_process(delta):
	if grabbed:
		var mouse_pos = get_global_mouse_position()
		var velocity_vector = (mouse_pos - global_position)
		
		apply_central_force(velocity_vector * SPEED * delta)


func _on_mouse_entered() -> void:
	hover = true

func _on_mouse_exited() -> void:
	hover = false

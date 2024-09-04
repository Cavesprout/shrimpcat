extends RigidBody2D

var segment_textures = [
	load("res://art/shimpcat_segment_0.png")
]

var arm_textures = [
	load("res://art/shimpcat_arm_L0.png"),
	load("res://art/shimpcat_arm_L1.png"),
	load("res://art/shimpcat_arm_L2.png"),
	load("res://art/shimpcat_arm_L3.png"),
	load("res://art/shimpcat_arm_R0.png"),
	load("res://art/shimpcat_arm_R1.png"),
	load("res://art/shimpcat_arm_R2.png"),
	load("res://art/shimpcat_arm_R3.png"),
]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Sprite2D.texture = segment_textures.pick_random()
	$Arm_L0/Sprite2D.texture = arm_textures.pick_random()
	$Arm_L1/Sprite2D.texture = arm_textures.pick_random()
	$Arm_R0/Sprite2D.texture = arm_textures.pick_random()
	$Arm_R1/Sprite2D.texture = arm_textures.pick_random()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

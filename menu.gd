extends CanvasLayer

var coloful_mode = false
var num_segments = "3"

func _ready() -> void:
	$Shrimpact_Title.play()

func _on_colorful_field_toggled(toggled_on: bool) -> void:
	coloful_mode = toggled_on


func _on_segment_field_text_changed(new_text: String) -> void:
	num_segments = new_text

extends Label


func _process(delta: float) -> void:
	set_text("FPS " + String(OS.get_ticks_msec()))

extends Control


func _on_AudioStreamPlayer_finished():
	$AudioStreamPlayer2.play()

func _on_AudioStreamPlayer2_finished():
	$AudioStreamPlayer.play()

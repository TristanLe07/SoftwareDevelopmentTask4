extends Control

func _on_PlayButton_pressed():
	get_tree().change_scene("res://Menus/LevelSelector.tscn")


func _on_CreditsButton_pressed():
	get_tree().change_scene("res://Menus/Credits.tscn")

func _on_ControlsButton_pressed():
	get_tree().change_scene("res://Menus/Options.tscn")

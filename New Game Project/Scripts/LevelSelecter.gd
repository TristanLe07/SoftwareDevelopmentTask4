extends Control


func _on_PlayButton_pressed():
	get_tree().change_scene("res://Levels/Level1.tscn")


func _on_Level2_pressed():
	get_tree().change_scene("res://Levels/Level2.tscn")


func _on_Level3_pressed():
	get_tree().change_scene("res://Levels/Level3.tscn")

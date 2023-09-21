extends Node

var score = 0

func _process(delta):
	if score == 5:
		get_tree().change_scene("res://Levels/MainMenu2.tscn")

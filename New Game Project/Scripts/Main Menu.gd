extends Control

func _ready():
	$Sprite.play("Glitch")

func _on_PlayButton_pressed():
	get_tree().change_scene("res://Menus/LevelSelector.tscn")

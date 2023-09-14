extends Control

func _ready():
	$Sprite.play("Glitch")
	
	pass

func _on_Sprite_animation_finished():
	$Sprite.play("Glitch")
	pass


func _on_PlayButton_pressed():
	get_tree().change_scene("res://Levels/Level1.tscn")
	pass

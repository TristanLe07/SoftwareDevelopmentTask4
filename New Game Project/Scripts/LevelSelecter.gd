extends Control

func _ready():
	for i in range($levels.get_child_count()):
		global.levels.append(i+1)

	for level in $levels.get_children():
		if str2var(level.name) in range(global.unlockedLevels+1):
			level.disabled = false
		else:
			level.disabled = true


func _on_1_pressed():
	get_tree().change_scene("res://Levels/Level1.tscn")

func _on_2_pressed():
	get_tree().change_scene("res://Levels/Level2.tscn")

func _on_3_pressed():
	get_tree().change_scene("res://Levels/Level3.tscn")

func _on_4_pressed():
	get_tree().change_scene("res://Levels/Level4.tscn")

func _on_5_pressed():
	get_tree().change_scene("res://Levels/Level5.tscn")



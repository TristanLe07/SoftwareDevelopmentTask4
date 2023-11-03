extends Sprite

func _process(delta):

	# Note: put a minus sign to spin in the opposite direction
	var degrees_per_second = -180.0

	rotate(delta * deg2rad(degrees_per_second))

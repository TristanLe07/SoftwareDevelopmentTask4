extends KinematicBody2D
 
const MOVE_SPEED = 300
var bullet_speed = 2000
var bullet = preload("res://Player/bullet.tscn")

onready var raycast = $RayCast2D
 
func _ready():
	yield(get_tree(), "idle_frame")
	get_tree().call_group("zombies", "set_player", self)
 
func _physics_process(delta):
	var move_vec = Vector2()
	if Input.is_action_pressed("forward"):
		move_vec.y -= 1
	if Input.is_action_pressed("backward"):
		move_vec.y += 1
	if Input.is_action_pressed("left"):
		move_vec.x -= 1
	if Input.is_action_pressed("right"):
		move_vec.x += 1
	move_vec = move_vec.normalized()
	move_and_collide(move_vec * MOVE_SPEED * delta)
 
	var look_vec = get_global_mouse_position() - global_position
	global_rotation = atan2(look_vec.y, look_vec.x)
 
	if Input.is_action_just_pressed("shoot"):
		fire()
		var coll = raycast.get_collider()
		if raycast.is_colliding() and coll.has_method("kill"):
			coll.kill()

func fire():
	var bullet_instance = bullet.instance()
	bullet_instance.position = get_global_position()
	bullet_instance.rotation_degrees = rotation_degrees
	bullet_instance.apply_impulse(Vector2(),Vector2(bullet_speed,0).rotated(rotation))
	get_tree().get_root().call_deferred("add_child",bullet_instance)
		 

func kill():
	get_tree().reload_current_scene()
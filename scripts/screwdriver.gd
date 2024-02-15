extends Area3D


@export var speed = 200


func _process(delta):
	var velocity = Vector3.ZERO # The player's movement vector.
	if Input.is_action_pressed("move_d"):
		velocity.x = 1
	if Input.is_action_pressed("move_a"):
		velocity.x = -1
	if Input.is_action_pressed("move_w"):
		velocity.z = -1
	if Input.is_action_pressed("move_s"):
		velocity.z = 1


	position += velocity * delta

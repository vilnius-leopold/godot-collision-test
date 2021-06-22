extends Node2D

const SPEED = 400
const ROT_SPEED = 12

var timer = 0

func _physics_process(delta):
	
	if timer > 120:
		position.x += delta * SPEED
		rotation   += delta * ROT_SPEED

	timer += 1

func _on_Area2D_body_entered(body):
	print("body entered Area: ", body)

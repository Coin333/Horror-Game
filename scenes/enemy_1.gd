extends CharacterBody2D

var speed = 50
var player_chase = false
var player = null
@export var SPEED := 100.0
var target_position: Vector2

@onready var sprite_2d = $AnimatedSprite2D

func _physics_process(delta):

	if player_chase:
		position += (player.position - position)/speed
		
		if (abs(velocity.x) > abs(velocity.y)):
			if (velocity.x > 1):
				sprite_2d.play("movingRight")
		
			if (velocity.x < 1):
				sprite_2d.play("movingLeft")
		
		else:
			if (velocity.y > 1):
				sprite_2d.play("movingDown")
		
			if (velocity.y < 1):
				sprite_2d.play("movingUp")
	else:
		$AnimatedSprite2D.play("idle")


func _on_detection_area_2d_body_entered(body: Node2D) -> void:
	player = body
	player_chase = true


func _on_detection_area_2d_body_exited(body: Node2D) -> void:
	player = null
	player_chase = false
